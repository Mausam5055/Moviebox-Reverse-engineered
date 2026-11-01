package com.cloud.tmc.miniapp.nativewebview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import androidx.collection.s;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.proxy.IKeyboardProxy;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.constants.JSApiResultCode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.listener.OnKeyboardListener;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.minicover.lifecycle.BaseComponentLifecycle;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.BarUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.HttpUtils;
import com.cloud.tmc.render.system.DefaultDownloadListener;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0o extends FrameLayout implements WebviewPageEventCallback, WebviewPageCallback, OnKeyboardListener {
    public long OooO;
    public final String OooO00o;
    public final WeakReference<Activity> OooO0O0;
    public final String OooO0OO;
    public final Lazy OooO0Oo;
    public com.cloud.tmc.miniapp.nativewebview.listener.OooO00o OooO0o;
    public final com.cloud.tmc.miniapp.nativewebview.view.OooO00o OooO0o0;
    public String OooO0oO;
    public String OooO0oo;
    public final Stack<OooO00o> OooOO0;
    public boolean OooOO0O;
    public DefaultDownloadListener OooOO0o;
    public final String OooOOO;
    public boolean OooOOO0;
    public final Stack<String> OooOOOO;
    public final List<String> OooOOOo;
    public boolean OooOOo;
    public int OooOOo0;
    public long OooOOoo;

    public static final class OooO00o {
        public long OooO;
        public String OooO00o;
        public boolean OooO0O0;
        public boolean OooO0OO;
        public boolean OooO0Oo;
        public boolean OooO0o;
        public boolean OooO0o0;
        public String OooO0oO;
        public ConcurrentHashMap<Integer, Long> OooO0oo;
        public boolean OooOO0;

        public OooO00o() {
            this(null, false, false, false, false, false, null, null, 0L, false, 1023);
        }

        public OooO00o(String url, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, String virtual_h5PageId, ConcurrentHashMap<Integer, Long> progressCollectList, long j11, boolean z15) {
            Intrinsics.h(url, "url");
            Intrinsics.h(virtual_h5PageId, "virtual_h5PageId");
            Intrinsics.h(progressCollectList, "progressCollectList");
            this.OooO00o = url;
            this.OooO0O0 = z10;
            this.OooO0OO = z11;
            this.OooO0Oo = z12;
            this.OooO0o0 = z13;
            this.OooO0o = z14;
            this.OooO0oO = virtual_h5PageId;
            this.OooO0oo = progressCollectList;
            this.OooO = j11;
            this.OooOO0 = z15;
        }

        public /* synthetic */ OooO00o(String str, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, String str2, ConcurrentHashMap concurrentHashMap, long j11, boolean z15, int i11) {
            this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? false : z11, (i11 & 8) != 0 ? false : z12, (i11 & 16) != 0 ? false : z13, (i11 & 32) != 0 ? false : z14, (i11 & 64) != 0 ? "0" : null, (i11 & 128) != 0 ? new ConcurrentHashMap() : null, (i11 & 256) != 0 ? System.currentTimeMillis() : j11, (i11 & 512) == 0 ? z15 : false);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OooO00o)) {
                return false;
            }
            OooO00o oooO00o = (OooO00o) obj;
            return Intrinsics.c(this.OooO00o, oooO00o.OooO00o) && this.OooO0O0 == oooO00o.OooO0O0 && this.OooO0OO == oooO00o.OooO0OO && this.OooO0Oo == oooO00o.OooO0Oo && this.OooO0o0 == oooO00o.OooO0o0 && this.OooO0o == oooO00o.OooO0o && Intrinsics.c(this.OooO0oO, oooO00o.OooO0oO) && Intrinsics.c(this.OooO0oo, oooO00o.OooO0oo) && this.OooO == oooO00o.OooO && this.OooOO0 == oooO00o.OooOO0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [int] */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r0v5, types: [int] */
        /* JADX WARN: Type inference failed for: r0v7, types: [int] */
        /* JADX WARN: Type inference failed for: r0v9, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v17, types: [int] */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v19 */
        /* JADX WARN: Type inference failed for: r1v20 */
        /* JADX WARN: Type inference failed for: r1v21 */
        /* JADX WARN: Type inference failed for: r1v22 */
        /* JADX WARN: Type inference failed for: r1v23 */
        /* JADX WARN: Type inference failed for: r1v24 */
        /* JADX WARN: Type inference failed for: r1v25 */
        /* JADX WARN: Type inference failed for: r1v26 */
        /* JADX WARN: Type inference failed for: r1v27 */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v7, types: [int] */
        /* JADX WARN: Type inference failed for: r1v9, types: [int] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int iHashCode = this.OooO00o.hashCode() * 31;
            boolean z10 = this.OooO0O0;
            ?? r11 = z10;
            if (z10) {
                r11 = 1;
            }
            int i11 = (iHashCode + r11) * 31;
            boolean z11 = this.OooO0OO;
            ?? r12 = z11;
            if (z11) {
                r12 = 1;
            }
            int i12 = (i11 + r12) * 31;
            boolean z12 = this.OooO0Oo;
            ?? r13 = z12;
            if (z12) {
                r13 = 1;
            }
            int i13 = (i12 + r13) * 31;
            boolean z13 = this.OooO0o0;
            ?? r14 = z13;
            if (z13) {
                r14 = 1;
            }
            int i14 = (i13 + r14) * 31;
            boolean z14 = this.OooO0o;
            ?? r15 = z14;
            if (z14) {
                r15 = 1;
            }
            int iA = (s.a(this.OooO) + ((this.OooO0oo.hashCode() + ((this.OooO0oO.hashCode() + ((i14 + r15) * 31)) * 31)) * 31)) * 31;
            boolean z15 = this.OooOO0;
            return iA + (z15 ? 1 : z15);
        }

        public String toString() {
            return "PageStatus(url=" + this.OooO00o + ", isProgressChangedTo100=" + this.OooO0O0 + ", isPageFinished=" + this.OooO0OO + ", isHomePage=" + this.OooO0Oo + ", isLoadError=" + this.OooO0o0 + ", canGoBack=" + this.OooO0o + ", virtual_h5PageId=" + this.OooO0oO + ", progressCollectList=" + this.OooO0oo + ", progressStartTime=" + this.OooO + ", isDomContentLoaded=" + this.OooOO0 + ")";
        }
    }

    public /* synthetic */ class OooO0O0 {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[BaseComponentLifecycle.ViewAction.values().length];
            try {
                iArr[BaseComponentLifecycle.ViewAction.ON_ADD_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BaseComponentLifecycle.ViewAction.ON_UPDATE_VIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            OooO00o = iArr;
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<FrameLayout> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (FrameLayout) OooO0o.this.findViewById(R.id.baseLayout);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0o(String viewId, Context context, WeakReference<Activity> weakReference, AttributeSet attributeSet) {
        super(context, null);
        Intrinsics.h(viewId, "viewId");
        Intrinsics.h(context, "context");
        this.OooO00o = viewId;
        this.OooO0O0 = weakReference;
        this.OooO0OO = "WebviewComponentView";
        this.OooO0Oo = LazyKt.b(new OooO0OO());
        this.OooO0oO = "";
        this.OooO0oo = "";
        this.OooOO0 = new Stack<>();
        LayoutInflater.from(getContext()).inflate(R.layout.layout_mini_webview_view, (ViewGroup) this, true);
        com.cloud.tmc.miniapp.nativewebview.view.OooO00o oooO00o = new com.cloud.tmc.miniapp.nativewebview.view.OooO00o(context, null, 2);
        oooO00o.OooO00o((WebviewPageCallback) this);
        oooO00o.OooO00o((WebviewPageEventCallback) this);
        oooO00o.setBackgroundColor(-1);
        this.OooO0o0 = oooO00o;
        FrameLayout frameLayout = getFrameLayout();
        if (frameLayout != null) {
            frameLayout.addView(oooO00o);
        }
        oooO00o.OooO00o();
        try {
            Activity activity = weakReference.get();
            if (activity != null) {
                boolean zIsNavBarVisible = BarUtils.isNavBarVisible(activity);
                this.OooOOO0 = zIsNavBarVisible;
                TmcLogger.d("WebviewComponentView", "isNavBarVisible ->" + zIsNavBarVisible);
            }
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0OO, th2);
        }
        this.OooOOO = "h5Redirect";
        this.OooOOOO = new Stack<>();
        this.OooOOOo = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void OooO00o(long j11, OooO0o this$0, Ref.ObjectRef url, String str) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(url, "$url");
        try {
            if (j11 <= this$0.OooO) {
                DefaultDownloadListener defaultDownloadListener = this$0.OooOO0o;
                if (defaultDownloadListener != null) {
                    defaultDownloadListener.onDownloadStart((String) url.element, null, null, str, j11);
                }
            } else {
                JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("errorCode", JSApiResultCode.ERROR_CODE_DOWNLOAD_FILE_TOO_LARGE).addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.FALSE).build();
                Intrinsics.g(jsonObjectBuild, "create().addProperty(\n  …\"success\", false).build()");
                DefaultDownloadListener defaultDownloadListener2 = this$0.OooOO0o;
                if (defaultDownloadListener2 != null) {
                    defaultDownloadListener2.onDownloadFail(jsonObjectBuild);
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO0OO, th2);
        }
    }

    public static final void OooO00o(OooO0o this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            this$0.setLayoutParams(new AbsoluteLayout.LayoutParams(this$0.getWidth(), this$0.OooOOo0, this$0.getTop(), this$0.getLeft()));
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO0OO, th2);
        }
    }

    public static final void OooO00o(OooO0o this$0, String url) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(url, "$url");
        this$0.OooO0o0.OooO00o(url);
    }

    public static final void OooO00o(OooO0o this$0, String baseUrl, String data, String mimeType, String encoding) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(baseUrl, "$baseUrl");
        Intrinsics.h(data, "$data");
        Intrinsics.h(mimeType, "$mimeType");
        Intrinsics.h(encoding, "$encoding");
        TmcLogger.d(this$0.OooO0OO, "loadDataWithBaseURL baseUrl:" + baseUrl);
        this$0.OooO0o0.loadDataWithBaseURL(baseUrl, data, mimeType, encoding, null);
    }

    public static final void OooO00o(OooO0o this$0, String str, String str2, String str3, String str4, long j11) {
        Intrinsics.h(this$0, "this$0");
        DefaultDownloadListener defaultDownloadListener = this$0.OooOO0o;
        if (defaultDownloadListener != null) {
            defaultDownloadListener.onDownloadStart(str, str2, str3, str4, j11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void OooO00o(final Ref.ObjectRef url, final OooO0o this$0, final String str) {
        Intrinsics.h(url, "$url");
        Intrinsics.h(this$0, "this$0");
        final long contentLength = HttpUtils.getContentLength((String) url.element);
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.nativewebview.f
            @Override // java.lang.Runnable
            public final void run() {
                OooO0o.OooO00o(contentLength, this$0, url, str);
            }
        });
    }

    public static final void OooO0O0(OooO0o this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            this$0.setLayoutParams(new AbsoluteLayout.LayoutParams(this$0.getWidth(), this$0.OooOOo0, this$0.getTop(), this$0.getLeft()));
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO0OO, th2);
        }
    }

    public static final void OooO0OO(OooO0o this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.OooO0o0.reload();
    }

    private final FrameLayout getFrameLayout() {
        return (FrameLayout) this.OooO0Oo.getValue();
    }

    public final void OooO() {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onResume").addProperty("pageUrl", this.OooO0o0.getUrl()).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…URL, webView.url).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onResume", jsonObjectBuild);
        }
    }

    public final void OooO00o(WebView webView, String str) {
        String url;
        TmcLogger.d(this.OooOOO, "redirectPageStarted ==================>");
        try {
            TmcLogger.d(this.OooOOO, "webView.original:" + (webView != null ? webView.getOriginalUrl() : null));
            TmcLogger.d(this.OooOOO, "webView.url:" + (webView != null ? webView.getUrl() : null));
            TmcLogger.d(this.OooOOO, "url:" + str);
            if (webView != null && (url = webView.getUrl()) != null) {
                this.OooOOOO.add(url);
            }
        } catch (Throwable unused) {
        }
        TmcLogger.d(this.OooOOO, "redirectPageStarted <==================");
    }

    public final void OooO00o(Node node) {
        Intrinsics.h(node, "node");
        try {
            this.OooOO0o = new DefaultDownloadListener(node);
            this.OooO0o0.setDownloadListener(new DownloadListener() { // from class: com.cloud.tmc.miniapp.nativewebview.i
                @Override // android.webkit.DownloadListener
                public final void onDownloadStart(String str, String str2, String str3, String str4, long j11) {
                    OooO0o.OooO00o(this.f23615a, str, str2, str3, str4, j11);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0OO, "registerDownloadListener", th2);
        }
    }

    public final void OooO00o(JsonObject jsonObject, BaseComponentLifecycle.ViewAction viewAction) {
        JsonElement jsonElement;
        JsonElement jsonElement2;
        Intrinsics.h(viewAction, "viewAction");
        try {
            TmcLogger.e(this.OooO0OO, " parse json = " + (jsonObject != null ? jsonObject.toString() : null));
            if (jsonObject != null && (jsonElement2 = jsonObject.get("src")) != null) {
                String loadUrl = jsonElement2.getAsString();
                int i11 = OooO0O0.OooO00o[viewAction.ordinal()];
                if (i11 == 1) {
                    Intrinsics.g(loadUrl, "loadUrl");
                    this.OooO0oo = loadUrl;
                    OooO0O0(loadUrl);
                } else if (i11 == 2 && !TextUtils.isEmpty(loadUrl) && !Intrinsics.c(loadUrl, this.OooO0oo)) {
                    Intrinsics.g(loadUrl, "loadUrl");
                    this.OooO0oo = loadUrl;
                    OooO0O0(loadUrl);
                }
            }
            if (jsonObject == null || (jsonElement = jsonObject.get("maxContentLength")) == null) {
                return;
            }
            try {
                String string = jsonElement.toString();
                Intrinsics.g(string, "it.toString()");
                long j11 = Long.parseLong(string);
                this.OooO = j11;
                TmcLogger.d(this.OooO0OO, "maxContentLength:->" + j11);
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO0OO, th2);
            }
        } catch (Throwable th3) {
            TmcLogger.e(this.OooO0OO, "parseJson", th3);
        }
    }

    public final void OooO00o(String webviewUrl, String webResourceRequestUrl) {
        Intrinsics.h(webviewUrl, "webviewUrl");
        Intrinsics.h(webResourceRequestUrl, "webResourceRequestUrl");
        try {
            TmcLogger.d(this.OooO0OO, "redirect => webviewUrl: " + webviewUrl + ", webResourceRequestUrl: " + webResourceRequestUrl);
            URL url = new URL(webviewUrl);
            URL url2 = new URL(webResourceRequestUrl);
            String str = url.getHost() + url.getPath();
            String str2 = url2.getHost() + url2.getPath();
            TmcLogger.d(this.OooO0OO, "webviewURLCombine:" + str);
            TmcLogger.d(this.OooO0OO, "webResourceRequestURLCombine:" + str2);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (Intrinsics.c(str, str2)) {
                    TmcLogger.d(this.OooO0OO, "redirect  进入backForward栈 => webviewUrl: " + webviewUrl + ", webResourceRequestUrl: " + webResourceRequestUrl);
                    this.OooOO0.peek().OooO0o = true;
                } else {
                    TmcLogger.d(this.OooO0OO, "redirect  开始加载 => webviewUrl: " + webviewUrl + ", webResourceRequestUrl: " + webResourceRequestUrl);
                    OooO00o(webResourceRequestUrl, false);
                    OooO0o0();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void OooO00o(final String baseUrl, final String data, final String mimeType, final String encoding) {
        Intrinsics.h(baseUrl, "baseUrl");
        Intrinsics.h(data, "data");
        Intrinsics.h(mimeType, "mimeType");
        Intrinsics.h(encoding, "encoding");
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.nativewebview.c
            @Override // java.lang.Runnable
            public final void run() {
                OooO0o.OooO00o(this.f23600a, baseUrl, data, mimeType, encoding);
            }
        });
    }

    public final void OooO00o(String loadingUrl, boolean z10) {
        Intrinsics.h(loadingUrl, "loadingUrl");
        TmcLogger.d(this.OooO0OO, "setLoadingUrl => loadingUrl: " + loadingUrl + " , isFirstLoadHomePage: " + z10);
        this.OooO0oO = loadingUrl;
        this.OooOO0O = z10;
    }

    public final boolean OooO00o() {
        String str = this.OooOOO;
        com.cloud.tmc.miniapp.nativewebview.view.OooO00o oooO00o = this.OooO0o0;
        String originalUrl = oooO00o != null ? oooO00o.getOriginalUrl() : null;
        com.cloud.tmc.miniapp.nativewebview.view.OooO00o oooO00o2 = this.OooO0o0;
        TmcLogger.d(str, "canGoBack => originalUrl:" + originalUrl + " , url:" + (oooO00o2 != null ? oooO00o2.getUrl() : null));
        try {
            if (this.OooO0o0.canGoBack()) {
                if (!this.OooOOOo.isEmpty()) {
                    TmcLogger.d(this.OooOOO, "canGoBack => 重定向回退");
                    return OooO00o(this.OooO0o0);
                }
                TmcLogger.d(this.OooOOO, "canGoBack => 正常回退");
                this.OooO0o0.goBack();
                OooO0OO();
                return true;
            }
        } catch (Throwable unused) {
        }
        TmcLogger.d(this.OooOOO, "canGoBack => 直接退出");
        return false;
    }

    public final boolean OooO00o(WebView webView) {
        TmcLogger.d(this.OooOOO, "redirectCanGoBack => originalUrl:" + (webView != null ? webView.getOriginalUrl() : null) + " , url:" + (webView != null ? webView.getUrl() : null));
        if (webView != null) {
            try {
                if (webView.canGoBack()) {
                    String strPop = this.OooOOOO.pop();
                    if (strPop == null) {
                        return false;
                    }
                    TmcLogger.d(this.OooOOO, "exitPage:" + strPop);
                    WebBackForwardList webBackForwardListCopyBackForwardList = webView.copyBackForwardList();
                    Intrinsics.g(webBackForwardListCopyBackForwardList, "webView.copyBackForwardList()");
                    TmcLogger.d(this.OooOOO, "WebBackForwardList.size:" + webBackForwardListCopyBackForwardList.getSize());
                    int i11 = -1;
                    int i12 = -1;
                    for (int size = webBackForwardListCopyBackForwardList.getSize() - 1; -1 < size; size--) {
                        TmcLogger.d(this.OooOOO, "WebBackForwardList(" + size + ") => originalUrl:" + webBackForwardListCopyBackForwardList.getItemAtIndex(size).getOriginalUrl() + " , url:" + webBackForwardListCopyBackForwardList.getItemAtIndex(size).getUrl());
                        if (Intrinsics.c(webBackForwardListCopyBackForwardList.getItemAtIndex(size).getUrl(), strPop)) {
                            if (i12 == -1) {
                                i12 = size;
                            }
                            i11 = size;
                        }
                    }
                    String strOooO0O0 = OooO0O0();
                    if (strOooO0O0 == null) {
                        return false;
                    }
                    TmcLogger.d(this.OooOOO, "prePage:" + strOooO0O0);
                    int i13 = 1;
                    WebHistoryItem webHistoryItem = null;
                    for (int i14 = i11 + (-1); -1 < i14; i14--) {
                        WebHistoryItem itemAtIndex = webBackForwardListCopyBackForwardList.getItemAtIndex(i14);
                        if (Intrinsics.c(strOooO0O0, itemAtIndex.getUrl())) {
                            i13 = i14;
                            webHistoryItem = itemAtIndex;
                        }
                    }
                    if (webHistoryItem != null) {
                        int i15 = i13 - i11;
                        webView.goBackOrForward(i15);
                        OooO0OO();
                        TmcLogger.d(this.OooOOO, "goBackOrForward(" + i15 + ")");
                        return true;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooOOO, "redirectCanGoBack fail:" + th2);
            }
        }
        TmcLogger.d(this.OooOOO, "redirectCanGoBack -> 直接退出");
        return false;
    }

    public final boolean OooO00o(String str) {
        try {
            String path = new URL(str).getPath();
            Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_MINIAPP_MAX_NATIVE_WEBVIEW_DOWNLOAD_CONFIG, MiniAppConfigHelper.DEFAULT_MINI_NATIVE_WEBVIEW_DOWNLOAD_CONFIG), (Class<Object>) List.class);
            List<String> arrayList = objFromJson instanceof List ? (List) objFromJson : null;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            for (String str2 : arrayList) {
                Intrinsics.g(path, "path");
                if (StringsKt.G(path, str2, false, 2, null)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final String OooO0O0() {
        try {
            String strPeek = this.OooOOOO.peek();
            if (strPeek == null) {
                return null;
            }
            if (!CollectionsKt.b0(this.OooOOOo, strPeek)) {
                return strPeek;
            }
            this.OooOOOO.pop();
            return OooO0O0();
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void OooO0O0(WebView webView) {
        TmcLogger.d(this.OooOOO, "redirectShouldOverrideUrlLoading ==================>");
        TmcLogger.d(this.OooOOO, "webview.url:" + (webView != null ? webView.getUrl() : null));
        TmcLogger.d(this.OooOOO, "redirectShouldOverrideUrlLoading <==================");
    }

    public final void OooO0O0(final String url) {
        Intrinsics.h(url, "url");
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.nativewebview.b
            @Override // java.lang.Runnable
            public final void run() {
                OooO0o.OooO00o(this.f23598a, url);
            }
        });
    }

    public final void OooO0OO() {
        try {
            if (this.OooOO0.size() > 1) {
                OooO00o oooO00oPop = this.OooOO0.pop();
                OooO00o oooO00oPeek = this.OooOO0.peek();
                TmcLogger.d(this.OooO0OO, "goBack => exitPage: " + oooO00oPop + ", showPage: " + oooO00oPeek);
                OooO00o(oooO00oPeek.OooO00o, false);
                if (!oooO00oPop.OooO0o) {
                    TmcLogger.d(this.OooO0OO, "goBack 页面未入栈，继续退出 => exitPage: " + oooO00oPop + ", showPage: " + oooO00oPeek);
                    OooO0OO();
                }
            } else {
                TmcLogger.e(this.OooO0OO, "goBack fail: backForwardStack.size <= 1");
            }
        } catch (Throwable th2) {
            TmcLogger.e("goback fail: " + th2);
        }
    }

    public final boolean OooO0Oo() {
        return this.OooOOo || System.currentTimeMillis() - this.OooOOoo <= 200;
    }

    public final void OooO0o() {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onDestory").addProperty("pageUrl", this.OooO0o0.getUrl()).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…URL, webView.url).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onDestory", jsonObjectBuild);
        }
        this.OooO0o = null;
        try {
            this.OooO0o0.setDownloadListener(null);
            this.OooOO0o = null;
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0OO, "unRegisterDownloadListener", th2);
        }
    }

    public final void OooO0o0() {
        TmcLogger.d(this.OooO0OO, "loadingUrlStart => loadingUrl: " + this.OooO0oO);
        this.OooOO0.add(new OooO00o(this.OooO0oO, false, false, this.OooOO0O, false, false, null, null, 0L, false, 960));
    }

    public final void OooO0oO() {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onPause").addProperty("pageUrl", this.OooO0o0.getUrl()).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…URL, webView.url).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onPause", jsonObjectBuild);
        }
    }

    public final void OooO0oo() {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onRemove").addProperty("pageUrl", this.OooO0o0.getUrl()).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…URL, webView.url).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onRemove", jsonObjectBuild);
        }
        this.OooO0o = null;
    }

    public final void OooOO0() {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onStop").addProperty("pageUrl", this.OooO0o0.getUrl()).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…URL, webView.url).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onStop", jsonObjectBuild);
        }
    }

    public final void OooOO0O() {
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.nativewebview.e
            @Override // java.lang.Runnable
            public final void run() {
                OooO0o.OooO0OO(this.f23608a);
            }
        });
    }

    public final void OooOO0o() {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "syncPageStack").addProperty("canGoBack", Boolean.valueOf(this.OooO0o0.canGoBack())).addProperty("canGoForward", Boolean.valueOf(this.OooO0o0.canGoForward())).build();
        Intrinsics.g(jsonObjectBuild, "create()\n            .ad…d())\n            .build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("syncPageStack", jsonObjectBuild);
        }
    }

    public final WeakReference<Activity> getActivity() {
        return this.OooO0O0;
    }

    public final String getPageUrl() {
        String url = this.OooO0o0.getUrl();
        return url == null ? "" : url;
    }

    public final String getViewId() {
        return this.OooO00o;
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onConsoleMessage(String str) {
    }

    @Override // com.cloud.tmc.kernel.listener.OnKeyboardListener
    public void onKeyBoardChanged(int i11, int i12) {
        int navBarHeight = this.OooOOO0 ? BarUtils.getNavBarHeight() : 0;
        TmcLogger.d(this.OooO0OO, "isNavBarVisible -> " + this.OooOOO0);
        try {
            TmcLogger.d(this.OooO0OO, "onKeyBoardChanged height -> " + getHeight());
            if (this.OooOOo0 == 0) {
                this.OooOOo0 = getHeight();
            }
            int i13 = i11 - navBarHeight;
            if (i13 < 100) {
                TmcLogger.d(this.OooO0OO, "hide keyboard ->" + i13);
                this.OooOOo = false;
                this.OooOOoo = System.currentTimeMillis();
                postDelayed(new Runnable() { // from class: com.cloud.tmc.miniapp.nativewebview.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        OooO0o.OooO00o(this.f23613a);
                    }
                }, 150L);
            } else if (i13 != 0) {
                TmcLogger.d(this.OooO0OO, "show keyboard");
                this.OooOOo = true;
                setLayoutParams(new AbsoluteLayout.LayoutParams(getWidth(), this.OooOOo0 - i13, getTop(), getLeft()));
            } else {
                TmcLogger.d(this.OooO0OO, "hide keyboard else  ->" + i13);
                this.OooOOo = false;
                this.OooOOoo = System.currentTimeMillis();
                postDelayed(new Runnable() { // from class: com.cloud.tmc.miniapp.nativewebview.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        OooO0o.OooO0O0(this.f23614a);
                    }
                }, 150L);
            }
            TmcLogger.d(this.OooO0OO, "newKeyboardHeight->" + i13 + ", keyboardHeight->" + i11 + ",screenHeight->" + i12);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0OO, th2);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onPageFinished(WebView webView, String str) {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onPageFinished").addProperty("pageUrl", str).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…EW_PAGE_URL, url).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onPageFinished", jsonObjectBuild);
        }
        if (webView != null) {
            webView.loadUrl("javascript:function getFaviconUrl() {var favicon = '';var links = document.getElementsByTagName('link');for (var i = 0; i < links.length; i++) {if (links[i].rel.indexOf('icon') >= 0) {favicon = links[i].href;}}return favicon;}window.dltNativeWebview.receiveUrlIcon(getFaviconUrl(),'" + this.OooO00o + "');");
        }
        if (webView != null) {
            webView.loadUrl("javascript:var scrolled = false;window.addEventListener('scroll', function (e) {if (!scrolled) {window.dltNativeWebview.onScrollChanged('" + this.OooO00o + "');scrolled = true;}});var innerHeight = window.innerHeight;window.addEventListener('resize', () => {var newInnerHeight = window.innerHeight;if (innerHeight <= newInnerHeight) {scrolled = false;}});");
        }
        OooOO0o();
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onPageStarted(WebView webView, String str) {
        OooO00o(webView, str);
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onPageStarted").addProperty("pageUrl", str).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…EW_PAGE_URL, url).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onPageStarted", jsonObjectBuild);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onProgressChanged(WebView webView, int i11) {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onProgressChanged").addProperty("newProgress", Integer.valueOf(i11)).build();
        Intrinsics.g(jsonObjectBuild, "create()\n               …ESS, newProgress).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onProgressChanged", jsonObjectBuild);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        CharSequence description;
        Uri url;
        JsonObjectUtils.Builder builderAddProperty = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onReceivedError").addProperty("isForMainFrame", webResourceRequest != null ? Boolean.valueOf(webResourceRequest.isForMainFrame()) : null).addProperty("pageUrl", (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString()).addProperty("errorCode", webResourceError != null ? Integer.valueOf(webResourceError.getErrorCode()) : null).addProperty("isForMainFrame", (webResourceError == null || (description = webResourceError.getDescription()) == null) ? null : description.toString());
        Intrinsics.g(builderAddProperty, "create().addProperty(KEY….description?.toString())");
        if (Build.VERSION.SDK_INT >= 24) {
            builderAddProperty.addProperty("isRedirect", webResourceRequest != null ? Boolean.valueOf(webResourceRequest.isRedirect()) : null);
        }
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            JsonObject jsonObjectBuild = builderAddProperty.build();
            Intrinsics.g(jsonObjectBuild, "builder.build()");
            oooO00o.OooO00o("onReceivedError", jsonObjectBuild);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        String reasonPhrase;
        Uri url;
        JsonObjectUtils.Builder builderAddProperty = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onReceivedHttpError").addProperty("isForMainFrame", webResourceRequest != null ? Boolean.valueOf(webResourceRequest.isForMainFrame()) : null).addProperty("pageUrl", (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString()).addProperty("errorCode", webResourceResponse != null ? Integer.valueOf(webResourceResponse.getStatusCode()) : null);
        if (webResourceResponse == null || (reasonPhrase = webResourceResponse.getReasonPhrase()) == null) {
            reasonPhrase = null;
        }
        JsonObjectUtils.Builder builderAddProperty2 = builderAddProperty.addProperty("reasonPhrase", reasonPhrase);
        Intrinsics.g(builderAddProperty2, "create()\n            .ad…reasonPhrase?.toString())");
        if (Build.VERSION.SDK_INT >= 24) {
            builderAddProperty2.addProperty("isRedirect", webResourceRequest != null ? Boolean.valueOf(webResourceRequest.isRedirect()) : null);
        }
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            JsonObject jsonObjectBuild = builderAddProperty2.build();
            Intrinsics.g(jsonObjectBuild, "builder.build()");
            oooO00o.OooO00o("onReceivedHttpError", jsonObjectBuild);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onReceivedIcon(Bitmap bitmap) {
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onReceivedTitle(String str) {
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onReceivedTitle").addProperty(CampaignEx.JSON_KEY_TITLE, str).build();
        Intrinsics.g(jsonObjectBuild, "create().addProperty(KEY…IEW_TITLE, title).build()");
        com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
        if (oooO00o != null) {
            oooO00o.OooO00o("onReceivedTitle", jsonObjectBuild);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public /* synthetic */ Boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return com.cloud.tmc.kernel.render.d.a(this, webView, renderProcessGoneDetail);
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onRequestFocus() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [T, java.lang.String] */
    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public Boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String url;
        Uri url2;
        String string;
        try {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? ValueOf = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
            objectRef.element = ValueOf;
            if (OooO00o((String) ValueOf)) {
                final String contentTypeFromUrl = UrlUtils.getContentTypeFromUrl((String) objectRef.element);
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.nativewebview.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        OooO0o.OooO00o(objectRef, this, contentTypeFromUrl);
                    }
                });
                return Boolean.TRUE;
            }
            if (!StringsKt.W((String) objectRef.element, "http://", false, 2, null) && !StringsKt.W((String) objectRef.element, "https://", false, 2, null)) {
                TmcLogger.d(this.OooO0OO, "外跳事件，当前全部屏蔽状态,交由业务方处理");
                String schemeUrl = (String) objectRef.element;
                Intrinsics.h(schemeUrl, "schemeUrl");
                JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, "onReceivedSchemeUrl").addProperty(TmcConstants.KEY_PRE_DATA_SCHEME_URL, schemeUrl).build();
                Intrinsics.g(jsonObjectBuild, "create()\n            .ad…Url)\n            .build()");
                com.cloud.tmc.miniapp.nativewebview.listener.OooO00o oooO00o = this.OooO0o;
                if (oooO00o != null) {
                    oooO00o.OooO00o("onReceivedSchemeUrl", jsonObjectBuild);
                }
                return Boolean.TRUE;
            }
            OooO0O0(webView);
            if (webView != null && (url = webView.getUrl()) != null) {
                if (webResourceRequest != null && (url2 = webResourceRequest.getUrl()) != null && (string = url2.toString()) != null) {
                    OooO00o(url, string);
                    try {
                        ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).hideKeyboard(this);
                    } catch (Throwable th2) {
                        TmcLogger.e(this.OooO0OO, th2);
                    }
                    Boolean boolB = com.cloud.tmc.kernel.render.d.b(this, webView, webResourceRequest);
                    Intrinsics.g(boolB, "super.shouldOverrideUrlLoading(view, request)");
                    return boolB;
                }
                return Boolean.FALSE;
            }
            return Boolean.FALSE;
        } catch (Throwable th3) {
            TmcLogger.e(this.OooO0OO, "shouldOverrideUrlLoading", th3);
            Boolean boolB2 = com.cloud.tmc.kernel.render.d.b(this, webView, webResourceRequest);
            Intrinsics.g(boolB2, "super.shouldOverrideUrlLoading(view, request)");
            return boolB2;
        }
    }
}
