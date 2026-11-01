package com.transsion.web.fragment;

import android.content.Intent;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.v;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.web.api.WebJavascriptInterface;
import com.transsion.web.bean.ApiRequestData;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class WebFragmentV2$addJsInterface$2$1 extends WebJavascriptInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ WebFragmentV2 f58069a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebFragmentV2$addJsInterface$2$1(BridgeWebView bridgeWebView, WebFragmentV2 webFragmentV2) {
        super(bridgeWebView);
        this.f58069a = webFragmentV2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(WebFragmentV2 webFragmentV2) {
        BridgeWebView bridgeWebViewO0 = webFragmentV2.o0();
        if (bridgeWebViewO0 == null || !bridgeWebViewO0.canGoBack()) {
            return;
        }
        bridgeWebViewO0.goBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(WebFragmentV2 webFragmentV2, String str, String str2) {
        com.transsion.web.share.k kVar;
        if (webFragmentV2.getActivity() == null || (kVar = webFragmentV2.mWebShareUtil) == null) {
            return;
        }
        FragmentActivity activity = webFragmentV2.getActivity();
        Intrinsics.e(activity);
        kVar.h(activity, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(WebFragmentV2 webFragmentV2, String str, String str2) {
        com.transsion.web.share.k kVar = webFragmentV2.mWebShareUtil;
        if (kVar != null) {
            FragmentManager childFragmentManager = webFragmentV2.getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            kVar.k(str, str2, childFragmentManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(WebFragmentV2 webFragmentV2, final String str) {
        final BridgeWebView bridgeWebViewO0 = webFragmentV2.o0();
        if (bridgeWebViewO0 != null) {
            bridgeWebViewO0.post(new Runnable() { // from class: com.transsion.web.fragment.p
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.E(bridgeWebViewO0, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(BridgeWebView bridgeWebView, String str) {
        try {
            bridgeWebView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(WebFragmentV2 webFragmentV2) {
        webFragmentV2.h0().f64534f.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(String str) {
        com.tn.lib.widget.toast.core.h.f41479a.l(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(WebFragmentV2 webFragmentV2) {
        FragmentActivity activity = webFragmentV2.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(WebFragmentV2 webFragmentV2) {
        webFragmentV2.h0().f64534f.setVisibility(8);
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void close(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.close(str, callbackId);
        FragmentActivity activity = this.f58069a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f58069a;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.o
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.y(webFragmentV2);
                }
            });
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void closeLoading(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.closeLoading(str, callbackId);
        FragmentActivity activity = this.f58069a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f58069a;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.j
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.z(webFragmentV2);
                }
            });
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void goBack(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.goBack(str, callbackId);
        FragmentActivity activity = this.f58069a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f58069a;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.n
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.A(webFragmentV2);
                }
            });
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void h5ShareNative(final String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        super.h5ShareNative(data, callbackId);
        FragmentActivity activity = this.f58069a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f58069a;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.k
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.B(webFragmentV2, data, callbackId);
                }
            });
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void nativeShare(final String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        super.nativeShare(data, callbackId);
        FragmentActivity activity = this.f58069a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f58069a;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.l
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.C(webFragmentV2, data, callbackId);
                }
            });
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void openApp(final String data, String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        super.openApp(data, callbackId);
        FragmentActivity activity = this.f58069a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f58069a;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.i
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.D(webFragmentV2, data);
                }
            });
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void openLoading(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.openLoading(str, callbackId);
        FragmentActivity activity = this.f58069a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f58069a;
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.h
                @Override // java.lang.Runnable
                public final void run() {
                    WebFragmentV2$addJsInterface$2$1.F(webFragmentV2);
                }
            });
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void openToast(final String str, String callbackId) {
        FragmentActivity activity;
        Intrinsics.h(callbackId, "callbackId");
        super.openToast(str, callbackId);
        if (str == null || (activity = this.f58069a.getActivity()) == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: com.transsion.web.fragment.m
            @Override // java.lang.Runnable
            public final void run() {
                WebFragmentV2$addJsInterface$2$1.G(str);
            }
        });
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void request(String str, String callbackId) {
        String api;
        String methods;
        Intrinsics.h(callbackId, "callbackId");
        super.request(str, callbackId);
        try {
            lg.a.f68839a.c(getTAG(), "request :" + str + ", callbackId:" + callbackId, true);
            ApiRequestData apiRequestDataC = xx.a.f78456a.c(str);
            if (apiRequestDataC != null && (api = apiRequestDataC.getApi()) != null && api.length() != 0 && (methods = apiRequestDataC.getMethods()) != null && methods.length() != 0) {
                String host = apiRequestDataC.getHost();
                if (host == null) {
                    host = vg.a.f77324a.a();
                }
                kotlinx.coroutines.k.d(v.a(this.f58069a), y0.b(), null, new WebFragmentV2$addJsInterface$2$1$request$1(apiRequestDataC, this.f58069a, host + apiRequestDataC.getApi(), this, callbackId, null), 2, null);
                return;
            }
            BridgeWebView bridgeWebViewO0 = this.f58069a.o0();
            if (bridgeWebViewO0 != null) {
                bridgeWebViewO0.sendResponse("", callbackId);
            }
        } catch (Throwable th2) {
            lg.a.f68839a.c(getTAG(), "requestm error :" + th2, true);
            BridgeWebView bridgeWebViewO1 = this.f58069a.o0();
            if (bridgeWebViewO1 != null) {
                bridgeWebViewO1.sendResponse("", callbackId);
            }
        }
    }

    @Override // com.transsion.web.api.WebJavascriptInterface
    @JavascriptInterface
    public void startPage(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.startPage(str, callbackId);
        try {
            lg.a.f68839a.c(getTAG(), "startPage :" + str, true);
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("pageName");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extra");
            Navigator navigatorC = TheRouter.c(strOptString);
            xx.a aVar = xx.a.f78456a;
            aVar.b(navigatorC, aVar.a(jSONObjectOptJSONObject));
            ak.k.p(navigatorC);
        } catch (Exception unused) {
        }
    }
}
