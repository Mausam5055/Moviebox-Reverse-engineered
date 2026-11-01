package com.transsion.ad.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.blankj.utilcode.util.o;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.hisavana.mediation.bridge.MediationJsBridge;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.MBAd;
import com.transsion.lib_web.BaseLibWebFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gm.f;
import hj.i;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\r\u0010\u0013\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0003J\u0019\u0010\u0016\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\u0003J\u001f\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b \u0010!J\u001f\u0010&\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J)\u0010*\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J)\u00100\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010-\u001a\u00020,2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J5\u00104\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010-\u001a\u0002022\b\u0010/\u001a\u0004\u0018\u00010\u00042\b\u00103\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b4\u00105J\u0015\u00108\u001a\b\u0012\u0004\u0012\u00020706H\u0016¢\u0006\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010@\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001b\u0010N\u001a\u00020I8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M¨\u0006O"}, d2 = {"Lcom/transsion/ad/web/AdWebFragment;", "Lcom/transsion/lib_web/BaseLibWebFragment;", "<init>", "()V", "", "url", "", "c1", "(Ljava/lang/String;)V", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "onDetach", "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "bridgeWebView", "d0", "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V", "onDestroy", "d1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "onResume", "onPause", "Landroid/webkit/WebView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "K0", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Landroid/graphics/Bitmap;", "favicon", "L0", "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V", "Landroid/webkit/WebResourceRequest;", "request", "Landroid/webkit/WebResourceError;", "error", "N0", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V", "", "failingUrl", "M0", "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V", "", "Lcom/transsion/lib_web/zip/loader/c;", "i0", "()Ljava/util/List;", "Lcom/transsion/ad/web/d;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/ad/web/d;", "pageListener", "s", "Z", "isError", "Lcom/hisavana/mediation/bridge/MediationJsBridge;", "t", "Lcom/hisavana/mediation/bridge/MediationJsBridge;", "mediationJsBridge", "Lcom/transsion/ad/web/e;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/ad/web/e;", "mbAdJsBridge", "Lhj/b;", "v", "Lkotlin/Lazy;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdWebFragment extends BaseLibWebFragment {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private d pageListener;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private boolean isError;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private MediationJsBridge mediationJsBridge;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private e mbAdJsBridge;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig = LazyKt.b(new Function0() { // from class: com.transsion.ad.web.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AdWebFragment.b1();
        }
    });

    public static final class a implements com.transsion.lib_web.zip.loader.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MediationJsBridge f42447b;

        a(MediationJsBridge mediationJsBridge) {
            this.f42447b = mediationJsBridge;
        }

        @Override // com.transsion.lib_web.zip.loader.c
        public WebResourceResponse a(WebResourceRequest webResourceRequest) {
            Uri url;
            String string;
            WebResourceResponse webResourceResponseShouldInterceptRequest;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null || (webResourceResponseShouldInterceptRequest = this.f42447b.shouldInterceptRequest(string)) == null) {
                return null;
            }
            return webResourceResponseShouldInterceptRequest;
        }
    }

    public static final class b implements f {
        b() {
        }

        @Override // gm.f
        public void a(String url) {
            hi.a aVarE;
            Intrinsics.h(url, "url");
            MBAd.a aVarC = MBAd.f41751a.c();
            if (aVarC == null || (aVarE = aVarC.e()) == null) {
                return;
            }
            aVarE.a(url, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hj.b b1() {
        return new hj.b("ad_web_page", false, 2, null);
    }

    private final void c1(String url) {
        getLogViewConfig().k(getLoadInfoStats().getIsLoadSuccess());
        getLogViewConfig().g().put("load_time", String.valueOf(getLoadInfoStats().getLoad_time()));
        getLogViewConfig().g().put("error_code", String.valueOf(getLoadInfoStats().getError_code()));
        getLogViewConfig().g().put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, getLoadInfoStats().getError_msg());
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void K0(WebView view, String url) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        super.K0(view, url);
        c1(url);
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public void L0(WebView view, String url, Bitmap favicon) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        super.L0(view, url, favicon);
        getLogViewConfig().g().put("url", url);
        this.isError = false;
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
    public void d0(BridgeWebView bridgeWebView) {
        Intrinsics.h(bridgeWebView, "bridgeWebView");
        MediationJsBridge mediationJsBridge = new MediationJsBridge(bridgeWebView);
        this.mediationJsBridge = mediationJsBridge;
        bridgeWebView.addJavascriptInterface(mediationJsBridge, HisavanaAdJsBridge.INTERFACE_NAME);
        e eVar = new e(o0());
        this.mbAdJsBridge = eVar;
        eVar.b(this.pageListener);
        bridgeWebView.addJavascriptInterface(eVar, "MBAdJsBridge");
    }

    public final void d1() {
        e eVar = this.mbAdJsBridge;
        if (eVar != null) {
            eVar.b(null);
        }
    }

    public final hj.b getLogViewConfig() {
        return (hj.b) this.logViewConfig.getValue();
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment
    public List i0() {
        List listE;
        MediationJsBridge mediationJsBridge = this.mediationJsBridge;
        return (mediationJsBridge == null || (listE = CollectionsKt.e(new a(mediationJsBridge))) == null) ? CollectionsKt.l() : listE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.h(context, "context");
        super.onAttach(context);
        this.pageListener = context instanceof d ? (d) context : null;
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        if (getLogViewConfig().i() || !this.isError) {
            return;
        }
        o0().reload();
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getLogViewConfig().g().put("original_url", n0());
        W0(new b());
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        d1();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.pageListener = null;
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (isHidden()) {
            return;
        }
        HashMap mapG = getLogViewConfig().g();
        com.transsion.lib_web.zip.loader.d mWebViewLoaderManager = getMWebViewLoaderManager();
        mapG.put("is_from_cache", String.valueOf(mWebViewLoaderManager != null ? Boolean.valueOf(mWebViewLoaderManager.b()) : null));
        getLogViewConfig().g().put("dom", o.j(getLoadInfoStats().getDom_performance()));
        i.f64505a.B(getLogViewConfig());
    }

    @Override // com.transsion.lib_web.BaseLibWebFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getLogViewConfig().o(SystemClock.elapsedRealtime());
    }
}
