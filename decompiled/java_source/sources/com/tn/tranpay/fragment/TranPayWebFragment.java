package com.tn.tranpay.fragment;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.u;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.tranpay.TranPayConfiguration;
import com.tn.tranpay.event.AppScopeVMlProvider;
import com.tn.tranpay.event.FlowEventBus;
import com.tn.tranpay.helper.PayUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 Y2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001ZB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u0019\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\bH\u0002¢\u0006\u0004\b$\u0010\u0005J\u0017\u0010%\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0003¢\u0006\u0004\b%\u0010&J\u001f\u0010)\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020!2\u0006\u0010(\u001a\u00020!H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001eH\u0002¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b.\u0010/R\u0018\u00102\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00101R\u0018\u0010>\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00101R\u0016\u0010@\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010?R\u0016\u0010B\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010?R\u0016\u0010D\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010?R4\u0010J\u001a\"\u0012\u0004\u0012\u00020!\u0012\u0006\u0012\u0004\u0018\u00010F0Ej\u0010\u0012\u0004\u0012\u00020!\u0012\u0006\u0012\u0004\u0018\u00010F`G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010?R\u0016\u0010N\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010?R\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0014\u0010X\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bW\u0010#¨\u0006["}, d2 = {"Lcom/tn/tranpay/fragment/TranPayWebFragment;", "Lcom/tn/tranpay/fragment/BaseFragment;", "Lgh/c;", "Lcom/blankj/utilcode/util/NetworkUtils$a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Lgh/c;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onDestroyView", "onDestroy", "Lcom/tn/tranpay/report/c;", "V", "()Lcom/tn/tranpay/report/c;", "onDisconnected", "Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;", NetworkBridge.KEY_NETWORK_TYPE, "i", "(Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)V", "", "y0", "()Z", "", "getClassTag", "()Ljava/lang/String;", "initViewModel", "x0", "(Landroid/view/View;)V", "url", "from", "p0", "(Ljava/lang/String;Ljava/lang/String;)Z", "isBackPressed", "t0", "(Z)V", "z0", "(Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "strTitle", "Landroid/view/ViewGroup;", "e", "Landroid/view/ViewGroup;", "webLoading", "Landroid/webkit/WebView;", "f", "Landroid/webkit/WebView;", "mCustomWebView", "g", "mUrl", "h", "mCpFontPage", "Z", "mShouldOpenCpFrontPage", "j", "isError", CampaignEx.JSON_KEY_AD_K, "isPayCancel", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "l", "Ljava/util/HashMap;", "timer", "m", "isTriggerFinishPage", "n", "isExternalDeepLinkOpened", "Landroid/webkit/WebChromeClient;", "o", "Landroid/webkit/WebChromeClient;", "mWebChromeClient", "Landroid/webkit/WebViewClient;", TtmlNode.TAG_P, "Landroid/webkit/WebViewClient;", "mWebViewClient", "r0", "resultPageUrl", CampaignEx.JSON_KEY_AD_Q, "a", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TranPayWebFragment extends BaseFragment<gh.c> implements NetworkUtils.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f41600r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f41601s;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private ViewGroup webLoading;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private WebView mCustomWebView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String mUrl;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String mCpFontPage;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isError;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isPayCancel;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isTriggerFinishPage;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isExternalDeepLinkOpened;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String strTitle = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean mShouldOpenCpFrontPage = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final HashMap timer = new HashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private WebChromeClient mWebChromeClient = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private WebViewClient mWebViewClient = new c();

    /* JADX INFO: renamed from: com.tn.tranpay.fragment.TranPayWebFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TranPayWebFragment a() {
            return new TranPayWebFragment();
        }
    }

    public static final class b extends WebChromeClient {
        b() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int i11) {
            Intrinsics.h(view, "view");
            super.onProgressChanged(view, i11);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView view, String title) {
            gh.c cVar;
            AppCompatTextView appCompatTextView;
            Intrinsics.h(view, "view");
            Intrinsics.h(title, "title");
            super.onReceivedTitle(view, title);
            TranPayWebFragment.this.strTitle = title;
            String str = TranPayWebFragment.this.strTitle;
            if (str == null || (cVar = (gh.c) TranPayWebFragment.this.getMViewBinding()) == null || (appCompatTextView = cVar.f63612i) == null) {
                return;
            }
            appCompatTextView.setText(str);
        }
    }

    public static final class c extends WebViewClient {
        c() {
        }

        private final boolean b(Uri uri) {
            WebView webView;
            try {
                Intent uri2 = Intent.parseUri(uri.toString(), 1);
                if (uri2 != null) {
                    FragmentActivity activity = TranPayWebFragment.this.getActivity();
                    PackageManager packageManager = activity != null ? activity.getPackageManager() : null;
                    if ((packageManager != null ? packageManager.resolveActivity(uri2, 0) : null) != null) {
                        FragmentActivity activity2 = TranPayWebFragment.this.getActivity();
                        if (activity2 != null) {
                            activity2.startActivity(uri2);
                        }
                        return true;
                    }
                    String stringExtra = uri2.getStringExtra("browser_fallback_url");
                    if (!TextUtils.isEmpty(stringExtra)) {
                        if (stringExtra != null && StringsKt.W(stringExtra, "market://", false, 2, null)) {
                            String str = uri2.getPackage();
                            if (str != null) {
                                return PayUtils.r(PayUtils.f41636a, str, false, 2, null);
                            }
                        } else if (stringExtra != null && (webView = TranPayWebFragment.this.mCustomWebView) != null) {
                            webView.loadUrl(stringExtra);
                        }
                        return true;
                    }
                }
            } catch (Exception e11) {
                ai.a.e(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> handleIntentScheme() --> 处理失败: " + e11, null, 2, null);
            }
            return false;
        }

        private final boolean c(WebView webView, String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                Uri uri = Uri.parse(str);
                if (uri != null) {
                    if (Intrinsics.c("intent", uri.getScheme())) {
                        return b(uri);
                    }
                    if (!CollectionsKt.b0(CollectionsKt.o("http", "https"), uri.getScheme())) {
                        if (TranPayWebFragment.this.isExternalDeepLinkOpened) {
                            ai.a.k(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> shouldOverrideUrlLoadingInner() --> 已跳转过外部 deeplink，忽略重复触发: " + uri, null, 2, null);
                            return true;
                        }
                        PayUtils payUtils = PayUtils.f41636a;
                        String string = uri.toString();
                        Intrinsics.g(string, "uri.toString()");
                        if (payUtils.s(string, true)) {
                            TranPayWebFragment.this.isExternalDeepLinkOpened = true;
                            if (!TranPayWebFragment.this.isTriggerFinishPage && Intrinsics.c(uri.getScheme(), "gopay")) {
                                TranPayWebFragment.this.isTriggerFinishPage = true;
                                ai.a.g(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> shouldOverrideUrlLoadingInner() --> gopay 成功跳转，关闭页面: " + uri, null, 2, null);
                                Handler handlerG = ThreadUtils.g();
                                final TranPayWebFragment tranPayWebFragment = TranPayWebFragment.this;
                                handlerG.postDelayed(new Runnable() { // from class: com.tn.tranpay.fragment.p
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        TranPayWebFragment.c.d(tranPayWebFragment);
                                    }
                                }, 500L);
                            }
                        } else {
                            ai.a.k(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> shouldOverrideUrlLoadingInner() --> 无法处理自定义协议: " + uri.getScheme() + "，已阻止 WebView 加载", null, 2, null);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Exception e11) {
                ai.a.e(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> shouldOverrideUrlLoadingInner() --> 解析失败: " + e11, null, 2, null);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(TranPayWebFragment this$0) {
            Intrinsics.h(this$0, "this$0");
            FragmentActivity activity = this$0.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            HashMap mapG;
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageFinished(view, url);
            ai.a aVar = ai.a.f619a;
            ai.a.c(aVar, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onPageFinished() --> url = " + url, null, 2, null);
            if (!TranPayWebFragment.this.isError) {
                TranPayWebFragment.this.z0(url);
                return;
            }
            com.tn.tranpay.report.c logViewConfig = TranPayWebFragment.this.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.j(false);
            }
            if (TranPayWebFragment.this.timer.get(url) == null) {
                ai.a.e(aVar, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onPageFinished() --> 未记录请求加载的耗时 --> url = " + url, null, 2, null);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            Object obj = TranPayWebFragment.this.timer.get(url);
            Intrinsics.e(obj);
            long jLongValue = jCurrentTimeMillis - ((Number) obj).longValue();
            com.tn.tranpay.report.c logViewConfig2 = TranPayWebFragment.this.getLogViewConfig();
            if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
                return;
            }
            mapG.put("duration", String.valueOf(jLongValue));
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap bitmap) {
            HashMap mapG;
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageStarted(view, url, bitmap);
            if (TranPayWebFragment.this.p0(url, "onPageStarted()")) {
                return;
            }
            ViewGroup viewGroup = TranPayWebFragment.this.webLoading;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            gh.c cVar = (gh.c) TranPayWebFragment.this.getMViewBinding();
            ProgressBar progressBar = cVar != null ? cVar.f63609f : null;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            if (TranPayWebFragment.this.timer.get(url) == null) {
                TranPayWebFragment.this.timer.put(url, Long.valueOf(System.currentTimeMillis()));
            }
            com.tn.tranpay.report.c logViewConfig = TranPayWebFragment.this.getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                mapG.put("url", url);
            }
            TranPayWebFragment.this.isError = false;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(error, "error");
            super.onReceivedError(view, request, error);
            ai.a.e(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onReceivedError() --> url = " + request.getUrl() + " --> error = " + error, null, 2, null);
            TranPayWebFragment.this.isError = true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(errorResponse, "errorResponse");
            super.onReceivedHttpError(view, request, errorResponse);
            ai.a.e(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onReceivedHttpError() --> url = " + request.getUrl() + " --> errorResponse = " + errorResponse, null, 2, null);
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            TranPayWebFragment tranPayWebFragment = TranPayWebFragment.this;
            String string = request.getUrl().toString();
            Intrinsics.g(string, "request.url.toString()");
            tranPayWebFragment.p0(string, "shouldInterceptRequest()");
            return super.shouldInterceptRequest(view, request);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            String string;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
                return false;
            }
            ai.a.c(ai.a.f619a, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> shouldOverrideUrlLoading() --> url = " + string, null, 2, null);
            if (c(webView, string)) {
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    static {
        TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f41490a;
        f41600r = tranPayConfiguration.u() ? "https://cashier-serverweb.paynicorn.com/result" : "https://cashier-serverweb-test.paynicorn.com/result";
        f41601s = tranPayConfiguration.u() ? "https://cashier-serverweb.paynicorn.com/api/cancelPay" : "https://cashier-serverweb-test.paynicorn.com/api/cancelPay";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = TranPayWebFragment.class.getSimpleName();
        Intrinsics.g(simpleName, "javaClass.simpleName");
        return simpleName;
    }

    private final void initViewModel() {
        String string;
        gh.c cVar;
        AppCompatTextView appCompatTextView;
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("url")) == null) {
            string = "";
        }
        this.mUrl = string;
        Bundle arguments2 = getArguments();
        this.mCpFontPage = arguments2 != null ? arguments2.getString("cpFrontPage") : null;
        Bundle arguments3 = getArguments();
        this.mShouldOpenCpFrontPage = arguments3 != null ? arguments3.getBoolean("shouldOpenCpFrontPage") : true;
        String[] strArrA = u.a(this.mUrl, "\\/");
        if (strArrA != null) {
            if (strArrA.length == 0) {
                return;
            }
            String str = strArrA[strArrA.length - 1];
            this.strTitle = str;
            if (str == null || (cVar = (gh.c) getMViewBinding()) == null || (appCompatTextView = cVar.f63612i) == null) {
                return;
            }
            appCompatTextView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean p0(String url, String from) {
        ai.a aVar = ai.a.f619a;
        ai.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() --> from = " + from + " --> url = " + url + " --> resultPageUrl = " + r0(), null, 2, null);
        if (this.isTriggerFinishPage) {
            ai.a.c(aVar, getClassTag() + " --> mWebViewClient --> isTriggerFinishPage = " + from + " --> url = " + url + " --> resultPageUrl = " + r0(), null, 2, null);
            return true;
        }
        if (!StringsKt.c0(url, r0(), false, 2, null)) {
            if (!StringsKt.c0(url, f41601s, false, 2, null)) {
                return false;
            }
            this.isTriggerFinishPage = true;
            ai.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() --> cancel --> from = " + from + " --> url = " + url, null, 2, null);
            this.isPayCancel = true;
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
            return true;
        }
        if (this.mShouldOpenCpFrontPage) {
            this.isTriggerFinishPage = true;
            ai.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() -- shouldOpenCpFrontPage --> result --> from = " + from + " --> url = " + url, null, 2, null);
            com.tn.tranpay.event.b bVar = new com.tn.tranpay.event.b(0);
            if (com.tn.tranpay.event.a.f41547a.c()) {
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = com.tn.tranpay.event.b.class.getName();
                Intrinsics.g(name, "T::class.java.name");
                flowEventBus.postEvent(name, bVar, 0L);
            } else {
                ai.a.e(aVar, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
            }
            return false;
        }
        this.isTriggerFinishPage = true;
        ai.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() -- shouldNotOpenCpFrontPage --> result --> from = " + from + " --> url = " + url, null, 2, null);
        com.tn.tranpay.event.b bVar2 = new com.tn.tranpay.event.b(0);
        if (com.tn.tranpay.event.a.f41547a.c()) {
            FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = com.tn.tranpay.event.b.class.getName();
            Intrinsics.g(name2, "T::class.java.name");
            flowEventBus2.postEvent(name2, bVar2, 0L);
        } else {
            ai.a.e(aVar, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
        }
        ThreadUtils.g().postDelayed(new Runnable() { // from class: com.tn.tranpay.fragment.o
            @Override // java.lang.Runnable
            public final void run() {
                TranPayWebFragment.q0(this.f41630a);
            }
        }, 400L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(TranPayWebFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final String r0() {
        String str = this.mCpFontPage;
        if (str == null || StringsKt.q0(str)) {
            str = null;
        }
        return str == null ? f41600r : str;
    }

    private final void t0(boolean isBackPressed) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            ai.a.c(ai.a.f619a, "用户关闭了 TranPayWebFragment", null, 2, null);
            if (isBackPressed) {
                activity.onBackPressed();
            } else {
                activity.finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(TranPayWebFragment this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        WebView webView = this$0.mCustomWebView;
        if (webView != null) {
            webView.reload();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(TranPayWebFragment this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.t0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(TranPayWebFragment this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.t0(false);
    }

    private final void x0(View view) {
        HashMap mapG;
        FrameLayout frameLayout;
        WebView webView = new WebView(view.getContext());
        gh.c cVar = (gh.c) getMViewBinding();
        if (cVar != null && (frameLayout = cVar.f63605b) != null) {
            frameLayout.addView(webView, 0, new FrameLayout.LayoutParams(-1, -1));
        }
        webView.setLayerType(2, null);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(false);
        settings.setSavePassword(false);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new TranPayWebFragment$initWeb$1$1$1(settings, null), 3, null);
        settings.setMixedContentMode(0);
        settings.setTextZoom(100);
        settings.setDatabaseEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportMultipleWindows(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setLoadWithOverviewMode(false);
        settings.setUseWideViewPort(false);
        settings.setDomStorageEnabled(true);
        settings.setNeedInitialFocus(true);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setDefaultFontSize(16);
        settings.setMinimumFontSize(12);
        settings.setGeolocationEnabled(true);
        webView.setWebChromeClient(this.mWebChromeClient);
        webView.setWebViewClient(this.mWebViewClient);
        webView.setOverScrollMode(2);
        this.mCustomWebView = webView;
        String str = this.mUrl;
        if (str != null) {
            this.timer.put(str, Long.valueOf(System.currentTimeMillis()));
            com.tn.tranpay.report.c logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                mapG.put("url", this.mUrl);
            }
            gh.c cVar2 = (gh.c) getMViewBinding();
            ProgressBar progressBar = cVar2 != null ? cVar2.f63609f : null;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
            ai.a.g(ai.a.f619a, getClassTag() + " --> initWeb() --> WebView初始化完成 --> mCustomWebView?.loadUrl(it) 开始加载收银台 -- url = " + this.mUrl, null, 2, null);
            WebView webView2 = this.mCustomWebView;
            if (webView2 != null) {
                webView2.loadUrl(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0(String url) {
        HashMap mapG;
        HashMap mapG2;
        if (this.timer.get(url) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l11 = (Long) this.timer.get(url);
            long jLongValue = jCurrentTimeMillis - (l11 != null ? l11.longValue() : jCurrentTimeMillis);
            ai.a.g(ai.a.f619a, getClassTag() + " --> pageFinish() --> mUrl = " + this.mUrl + " -- used time = " + jLongValue, null, 2, null);
            com.tn.tranpay.report.c logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
                mapG2.put("duration", String.valueOf(jLongValue));
            }
            if (this.timer.get("on_create") != null) {
                Object obj = this.timer.get("on_create");
                Intrinsics.e(obj);
                long jLongValue2 = jCurrentTimeMillis - ((Number) obj).longValue();
                com.tn.tranpay.report.c logViewConfig2 = getLogViewConfig();
                if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                    mapG.put("duration", String.valueOf(jLongValue2));
                }
                this.timer.put("on_create", null);
            }
        }
        com.tn.tranpay.report.c logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 == null) {
            return;
        }
        logViewConfig3.j(true);
    }

    @Override // com.tn.tranpay.fragment.BaseFragment
    public com.tn.tranpay.report.c V() {
        return new com.tn.tranpay.report.c("web_page", false, 2, null);
    }

    @Override // com.blankj.utilcode.util.NetworkUtils.a
    public void i(NetworkUtils.NetworkType networkType) {
        WebView webView;
        com.tn.tranpay.report.c logViewConfig = getLogViewConfig();
        if ((logViewConfig == null || !logViewConfig.i()) && this.isError && (webView = this.mCustomWebView) != null) {
            webView.reload();
        }
    }

    @Override // com.tn.tranpay.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        ProgressBar progressBar;
        gh.d dVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        Intrinsics.h(view, "view");
        gh.c cVar = (gh.c) getMViewBinding();
        if (cVar != null) {
            cVar.f63611h.setVisibility(0);
        }
        this.timer.put("on_create", Long.valueOf(System.currentTimeMillis()));
        gh.c cVar2 = (gh.c) getMViewBinding();
        if (cVar2 != null && (appCompatImageView3 = cVar2.f63608e) != null) {
            appCompatImageView3.setOnClickListener(new View.OnClickListener() { // from class: com.tn.tranpay.fragment.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TranPayWebFragment.u0(this.f41627a, view2);
                }
            });
        }
        gh.c cVar3 = (gh.c) getMViewBinding();
        if (cVar3 != null && (appCompatImageView2 = cVar3.f63606c) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.tn.tranpay.fragment.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TranPayWebFragment.v0(this.f41628a, view2);
                }
            });
        }
        gh.c cVar4 = (gh.c) getMViewBinding();
        if (cVar4 != null && (appCompatImageView = cVar4.f63607d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.tranpay.fragment.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TranPayWebFragment.w0(this.f41629a, view2);
                }
            });
        }
        gh.c cVar5 = (gh.c) getMViewBinding();
        this.webLoading = (cVar5 == null || (dVar = cVar5.f63613j) == null) ? null : dVar.f63615b;
        gh.c cVar6 = (gh.c) getMViewBinding();
        if (cVar6 != null && (progressBar = cVar6.f63609f) != null) {
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(com.tn.tranpay.e.f41537c.b().d()));
        }
        initViewModel();
        x0(view);
        NetworkUtils.w(this);
    }

    @Override // com.tn.tranpay.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.tn.tranpay.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ai.a.g(ai.a.f619a, getClassTag() + " --> onCreate()", null, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NetworkUtils.A(this);
        if (this.isPayCancel) {
            com.tn.tranpay.event.b bVar = new com.tn.tranpay.event.b(-1);
            if (!com.tn.tranpay.event.a.f41547a.c()) {
                ai.a.e(ai.a.f619a, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
                return;
            }
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = com.tn.tranpay.event.b.class.getName();
            Intrinsics.g(name, "T::class.java.name");
            flowEventBus.postEvent(name, bVar, 0L);
            return;
        }
        com.tn.tranpay.event.b bVar2 = new com.tn.tranpay.event.b(0);
        if (!com.tn.tranpay.event.a.f41547a.c()) {
            ai.a.e(ai.a.f619a, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
            return;
        }
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = com.tn.tranpay.event.b.class.getName();
        Intrinsics.g(name2, "T::class.java.name");
        flowEventBus2.postEvent(name2, bVar2, 0L);
    }

    @Override // com.tn.tranpay.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        WebView webView = this.mCustomWebView;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroyView();
    }

    @Override // com.blankj.utilcode.util.NetworkUtils.a
    public void onDisconnected() {
    }

    @Override // com.tn.tranpay.fragment.BaseFragment
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public gh.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gh.c cVarC = gh.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(inflater)");
        return cVarC;
    }

    public final boolean y0() {
        WebView webView = this.mCustomWebView;
        if (webView == null || !webView.canGoBack()) {
            return false;
        }
        WebView webView2 = this.mCustomWebView;
        if (webView2 == null) {
            return true;
        }
        webView2.goBack();
        return true;
    }
}
