package com.transsion.web.fragment;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.hisavana.mediation.bridge.MediationJsBridge;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.view.NoNetworkBigView;
import com.transsion.athena.jsbridge.AthenaJsInterface;
import com.transsion.downloadapi.IDownloadApiProvider;
import com.transsion.lib_web.BaseLibWebFragment;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebJavascriptNavigator;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 ~2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u007fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00112\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0016¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010&\u001a\u00020\u000bH\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\u000bH\u0016¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u000bH\u0016¢\u0006\u0004\b(\u0010\u0005J\u0017\u0010+\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,JC\u00104\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u00100\u001a\u0004\u0018\u00010\u00142\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u0014H\u0016¢\u0006\u0004\b4\u00105J\u001f\u00106\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b6\u00107J\u001f\u0010<\u001a\u00020\u000b2\u0006\u00109\u001a\u0002082\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b<\u0010=J\u0019\u0010@\u001a\u00020\u000b2\b\u0010?\u001a\u0004\u0018\u00010>H\u0016¢\u0006\u0004\b@\u0010AJ)\u0010D\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010C\u001a\u0004\u0018\u00010BH\u0016¢\u0006\u0004\bD\u0010EJ)\u0010J\u001a\u00020\u000b2\b\u0010\u001c\u001a\u0004\u0018\u00010\t2\u0006\u0010G\u001a\u00020F2\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ5\u0010N\u001a\u00020\u000b2\b\u0010\u001c\u001a\u0004\u0018\u00010\t2\u0006\u0010G\u001a\u00020L2\b\u0010I\u001a\u0004\u0018\u00010\u00142\b\u0010M\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\bN\u0010OJ\u0015\u0010R\u001a\b\u0012\u0004\u0012\u00020Q0PH\u0016¢\u0006\u0004\bR\u0010SJ+\u0010V\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010T\u001a\u00020L2\b\u0010U\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\bV\u0010WJ\r\u0010X\u001a\u00020\u0006¢\u0006\u0004\bX\u0010\bR\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0019\u0010b\u001a\u0004\u0018\u00010]8\u0006¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR\u0016\u0010e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0016\u0010g\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010dR\u001d\u0010m\u001a\u0004\u0018\u00010h8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bi\u0010j\u001a\u0004\bk\u0010lR\u001b\u0010r\u001a\u00020n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bo\u0010j\u001a\u0004\bp\u0010qR\u0018\u0010v\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010uR\u001a\u0010z\u001a\u00020\"8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bw\u0010x\u001a\u0004\by\u0010$R\u001b\u0010}\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b{\u0010j\u001a\u0004\b|\u0010\u0013¨\u0006\u0080\u0001"}, d2 = {"Lcom/transsion/web/fragment/WebFragmentV2;", "Lcom/transsion/lib_web/BaseLibWebFragment;", "Ldz/a;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "s1", "()Z", "Landroid/webkit/WebView;", "webView", "", "k1", "(Landroid/webkit/WebView;)V", "j1", "x1", "p1", "Landroid/view/View;", "l1", "()Landroid/view/View;", "", "url", "w1", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onResume", "onPause", "onDestroyView", "onDestroy", "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "bridgeWebView", "d0", "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V", "Landroidx/fragment/app/FragmentActivity;", "requireActivity", "tag", CampaignEx.JSON_KEY_TITLE, "", "contentLength", "originalUrl", "c0", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "K0", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Landroid/webkit/RenderProcessGoneDetail;", "detail", "P0", "(Landroid/webkit/RenderProcessGoneDetail;)V", "Landroid/graphics/Bitmap;", "favicon", "L0", "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V", "Landroid/webkit/WebResourceRequest;", "request", "Landroid/webkit/WebResourceError;", "error", "N0", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V", "", "failingUrl", "M0", "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V", "", "Lcom/transsion/lib_web/zip/loader/c;", "i0", "()Ljava/util/List;", "errorCode", "errorMsg", "Y0", "(Ljava/lang/String;ILjava/lang/String;)V", "u1", "Lcom/transsion/web/share/k;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/web/share/k;", "mWebShareUtil", "Lcom/transsnet/loginapi/ILoginApi;", "s", "Lcom/transsnet/loginapi/ILoginApi;", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "t", "Z", "isError", TmcStartParams.KEY_URL_SHORT, "isRenderProcessGone", "Lcom/transsion/downloadapi/IDownloadApiProvider;", "v", "Lkotlin/Lazy;", "getIDownloadApiProvider", "()Lcom/transsion/downloadapi/IDownloadApiProvider;", "iDownloadApiProvider", "Lwx/a;", "w", "o1", "()Lwx/a;", "iWebApi", "Lcom/hisavana/mediation/bridge/MediationJsBridge;", "x", "Lcom/hisavana/mediation/bridge/MediationJsBridge;", "mediationJsBridge", "y", "Lhj/b;", "getLogViewConfig", "logViewConfig", "z", "getNoNetworkView", "noNetworkView", "A", "a", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebFragmentV2 extends BaseLibWebFragment implements dz.a, com.transsion.baselib.report.g {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String B = WebFragmentV2.class.getSimpleName();

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private com.transsion.web.share.k mWebShareUtil;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private boolean isError;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private boolean isRenderProcessGone;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private MediationJsBridge mediationJsBridge;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final ILoginApi mLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final Lazy iDownloadApiProvider = LazyKt.b(new Function0() { // from class: com.transsion.web.fragment.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WebFragmentV2.q1();
        }
    });

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private final Lazy iWebApi = LazyKt.b(new Function0() { // from class: com.transsion.web.fragment.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WebFragmentV2.r1();
        }
    });

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final hj.b logViewConfig = newLogViewConfig();

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final Lazy noNetworkView = LazyKt.b(new Function0() { // from class: com.transsion.web.fragment.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WebFragmentV2.t1(this.f58075a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.web.fragment.WebFragmentV2$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return WebFragmentV2.B;
        }

        public final WebFragmentV2 b() {
            return new WebFragmentV2();
        }
    }

    public static final class b extends AthenaJsInterface {
        b(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b() {
        }

        @Override // com.transsion.athena.jsbridge.AthenaJsInterface
        @JavascriptInterface
        public void track(int i11, String str, String str2) {
            super.track(i11, str, str2);
            WebFragmentV2.this.h0().getRoot().post(new Runnable() { // from class: com.transsion.web.fragment.g
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2.b.b();
                }
            });
        }
    }

    public static final class c implements com.transsion.lib_web.zip.loader.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MediationJsBridge f58074b;

        c(MediationJsBridge mediationJsBridge) {
            this.f58074b = mediationJsBridge;
        }

        @Override // com.transsion.lib_web.zip.loader.c
        public WebResourceResponse a(WebResourceRequest webResourceRequest) {
            Uri url;
            String string;
            WebResourceResponse webResourceResponseShouldInterceptRequest;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null || (webResourceResponseShouldInterceptRequest = this.f58074b.shouldInterceptRequest(string)) == null) {
                return null;
            }
            return webResourceResponseShouldInterceptRequest;
        }
    }

    private final View getNoNetworkView() {
        return (View) this.noNetworkView.getValue();
    }

    private final void j1() {
        if (s1()) {
            h0().getRoot().setFitsSystemWindows(false);
        }
    }

    private final void k1(WebView webView) {
        WebSettings settings;
        if (!s1() || webView == null || (settings = webView.getSettings()) == null) {
            return;
        }
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(false);
    }

    private final View l1() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext, false);
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.web.fragment.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WebFragmentV2.m1(this.f58077a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.web.fragment.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WebFragmentV2.n1();
            }
        });
        return noNetworkBigView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(WebFragmentV2 webFragmentV2) {
        if (webFragmentV2.Q0()) {
            webFragmentV2.isRenderProcessGone = false;
            webFragmentV2.p1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final wx.a o1() {
        return (wx.a) this.iWebApi.getValue();
    }

    private final void p1() {
        ViewParent parent = h0().f64537i.getParent();
        Intrinsics.f(parent, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout");
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        if (getNoNetworkView().getParent() != null) {
            constraintLayout.removeView(getNoNetworkView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IDownloadApiProvider q1() {
        return (IDownloadApiProvider) TheRouter.d(IDownloadApiProvider.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final wx.a r1() {
        return (wx.a) zg.c.f79414e.a().h(wx.a.class);
    }

    private final boolean s1() {
        Bundle arguments = getArguments();
        return arguments != null && arguments.getBoolean(WebConstants.FIELD_EMBEDDED_FULL_WIDTH_WEB, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View t1(WebFragmentV2 webFragmentV2) {
        return webFragmentV2.l1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(WebFragmentV2 webFragmentV2, String str, String resultCode) {
        BridgeWebView bridgeWebViewO0;
        Intrinsics.h(resultCode, "resultCode");
        if (!TextUtils.isEmpty(str) && (bridgeWebViewO0 = webFragmentV2.o0()) != null) {
            bridgeWebViewO0.sendResponse(resultCode, str);
        }
        return Unit.f67061a;
    }

    private final void w1(String url) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = B;
        Intrinsics.g(TAG, "TAG");
        c0828a.c(TAG, "mUrl:" + url + " onPageFinished  target:" + n0(), true);
        HashMap mapG = getLogViewConfig().g();
        Bundle arguments = getArguments();
        mapG.put(WebConstants.PAGE_FROM, arguments != null ? arguments.getString(WebConstants.PAGE_FROM) : null);
        getLogViewConfig().k(getLoadInfoStats().getIsLoadSuccess());
        getLogViewConfig().g().put("load_time", String.valueOf(getLoadInfoStats().getLoad_time()));
        getLogViewConfig().g().put("error_code", String.valueOf(getLoadInfoStats().getError_code()));
        getLogViewConfig().g().put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, getLoadInfoStats().getError_msg());
    }

    private final void x1() {
        if (getNoNetworkView().getParent() == null) {
            ViewParent parent = h0().f64537i.getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout");
            ((ConstraintLayout) parent).addView(getNoNetworkView(), h0().f64537i.getLayoutParams());
        }
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void K0(WebView view, String url) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        super.K0(view, url);
        w1(url);
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void L0(WebView view, String url, Bitmap favicon) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        super.L0(view, url, favicon);
        getLogViewConfig().g().put("url", url);
        this.isError = false;
        this.isRenderProcessGone = false;
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void M0(WebView view, int request, String error, String failingUrl) {
        super.M0(view, request, error, failingUrl);
        this.isError = true;
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void N0(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.h(request, "request");
        Intrinsics.h(error, "error");
        super.N0(view, request, error);
        this.isError = true;
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void P0(RenderProcessGoneDetail detail) {
        this.isError = true;
        this.isRenderProcessGone = true;
        getLogViewConfig().g().put("renderer_gone", "1");
        hj.i.f64505a.s("webFragment", "app_perf", MapsKt.j(TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "onWebViewRenderProcessGone"), TuplesKt.a("didCrash", detail != null ? Boolean.valueOf(detail.didCrash()).toString() : null)));
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = B;
        Intrinsics.g(TAG, "TAG");
        c0828a.i(TAG, "onWebViewRenderProcessGone didCrash= didCrash", true);
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void Y0(String url, int errorCode, String errorMsg) {
        super.Y0(url, errorCode, errorMsg);
        if (getLogViewConfig().i() || nh.m.f70474a.e()) {
            return;
        }
        x1();
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void c0(FragmentActivity requireActivity, String tag, String url, String title, long contentLength, String originalUrl) {
        Intrinsics.h(requireActivity, "requireActivity");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(originalUrl, "originalUrl");
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void d0(BridgeWebView bridgeWebView) {
        Intrinsics.h(bridgeWebView, "bridgeWebView");
        bridgeWebView.addJavascriptInterface(new b(getContext()), "AthenaNative");
        bridgeWebView.addJavascriptInterface(new WebJavascriptNavigator(), "yy_navigator");
        BridgeWebView bridgeWebViewO0 = o0();
        if (bridgeWebViewO0 != null) {
            bridgeWebView.addJavascriptInterface(new WebFragmentV2$addJsInterface$2$1(bridgeWebViewO0, this), "WebViewJavascriptBridge");
        }
        MediationJsBridge mediationJsBridge = new MediationJsBridge(bridgeWebView);
        this.mediationJsBridge = mediationJsBridge;
        bridgeWebView.addJavascriptInterface(mediationJsBridge, HisavanaAdJsBridge.INTERFACE_NAME);
    }

    @Override // com.transsion.baselib.report.g
    public hj.b getLogViewConfig() {
        return this.logViewConfig;
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public List i0() {
        List listE;
        MediationJsBridge mediationJsBridge = this.mediationJsBridge;
        return (mediationJsBridge == null || (listE = CollectionsKt.e(new c(mediationJsBridge))) == null) ? CollectionsKt.l() : listE;
    }

    public hj.b newLogViewConfig() {
        return new hj.b("snifferh5page", false, 2, null);
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        if (this.isRenderProcessGone || getLogViewConfig().i() || !this.isError || !Q0()) {
            return;
        }
        p1();
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        FragmentActivity activity;
        try {
            super.onCreate(savedInstanceState);
            k1(o0());
        } catch (Throwable th2) {
            th2.printStackTrace();
            FragmentActivity activity2 = getActivity();
            if ((activity2 == null || !StringsKt.c0(activity2.getClass().getSimpleName(), "MainActivity", false, 2, null)) && (activity = getActivity()) != null) {
                activity.finish();
            }
        }
        getLogViewConfig().g().put("original_url", n0());
        Bundle arguments = getArguments();
        getLogViewConfig().g().put(WebConstants.TAB_CODE, arguments != null ? arguments.getString(WebConstants.TAB_CODE) : null);
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ILoginApi iLoginApi = this.mLoginApi;
        if (iLoginApi != null) {
            iLoginApi.p(this);
        }
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            super.onDestroyView();
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = B;
            Intrinsics.g(TAG, "TAG");
            c0828a.i(TAG, "onDestroyView cleanup failed: " + thM457exceptionOrNullimpl.getMessage(), true);
        }
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                com.transsion.baselib.report.g.a.b(this);
            } else {
                com.transsion.baselib.report.g.a.c(this);
            }
        }
    }

    @Override // dz.a
    public void onLogin(UserInfo userInfo) {
        dz.a.C0737a.a(this, userInfo);
    }

    @Override // dz.a
    public void onLogout() {
        dz.a.C0737a.b(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (isHidden()) {
            return;
        }
        HashMap mapG = getLogViewConfig().g();
        com.transsion.lib_web.zip.loader.d dVarM0 = getMWebViewLoaderManager();
        mapG.put("is_from_cache", String.valueOf(dVarM0 != null ? Boolean.valueOf(dVarM0.b()) : null));
        getLogViewConfig().g().put("dom", com.blankj.utilcode.util.o.j(getLoadInfoStats().getDom_performance()));
        com.transsion.baselib.report.g.a.b(this);
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.transsion.baselib.report.g.a.c(this);
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        dz.a.C0737a.c(this, userInfo);
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        FragmentActivity activity;
        Intrinsics.h(view, "view");
        try {
            super.onViewCreated(view, savedInstanceState);
        } catch (Throwable th2) {
            th2.printStackTrace();
            FragmentActivity activity2 = getActivity();
            if ((activity2 == null || !StringsKt.c0(activity2.getClass().getSimpleName(), "MainActivity", false, 2, null)) && (activity = getActivity()) != null) {
                activity.finish();
            }
        }
        j1();
        k1(o0());
        this.mWebShareUtil = new com.transsion.web.share.k(this, new Function2() { // from class: com.transsion.web.fragment.d
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return WebFragmentV2.v1(this.f58076a, (String) obj, (String) obj2);
            }
        });
        ILoginApi iLoginApi = this.mLoginApi;
        if (iLoginApi != null) {
            iLoginApi.g(this);
        }
    }

    public final boolean u1() {
        BridgeWebView bridgeWebViewO0 = o0();
        if (bridgeWebViewO0 == null || !bridgeWebViewO0.canGoBack()) {
            return false;
        }
        bridgeWebViewO0.goBack();
        return true;
    }
}
