package com.transsion.lib_web.cache;

import android.content.Context;
import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import gm.i;
import gm.n;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import nh.m;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f46145a = new b();

    public static final class a extends WebViewClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BridgeWebView f46146a;

        a(BridgeWebView bridgeWebView) {
            this.f46146a = bridgeWebView;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            b.f46145a.f(this.f46146a, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return n.f63887a.c(webView, renderProcessGoneDetail, "preload");
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            String string;
            Uri url;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
                string = "";
            }
            if (StringsKt.W(string, "http", false, 2, null) || StringsKt.W(string, "https", false, 2, null) || StringsKt.W(string, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, false, 2, null)) {
                return false;
            }
            try {
                b.f46145a.f(this.f46146a, webView != null ? webView.getUrl() : null);
            } catch (Exception e11) {
                i.f63883a.d("TWebViewProvider --> loadFinish failed: " + e11.getMessage());
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            if (StringsKt.W(url, "http", false, 2, null) || StringsKt.W(url, "https", false, 2, null) || StringsKt.W(url, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, false, 2, null)) {
                return false;
            }
            try {
                b.f46145a.f(this.f46146a, url);
            } catch (Exception e11) {
                i.f63883a.d("TWebViewProvider --> loadFinish failed: " + e11.getMessage());
            }
            return true;
        }
    }

    private b() {
    }

    private final void c(BridgeWebView bridgeWebView) {
        WebSettings settings = bridgeWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(false);
        m mVar = m.f70474a;
        Context context = bridgeWebView.getContext();
        Intrinsics.g(context, "getContext(...)");
        settings.setCacheMode(mVar.j(context) ? -1 : 1);
        settings.setMixedContentMode(0);
        settings.setTextZoom(100);
        settings.setDatabaseEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportMultipleWindows(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(true);
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
    }

    private final void d(BridgeWebView bridgeWebView) {
        bridgeWebView.setGson(o.f());
        bridgeWebView.setLayerType(2, null);
        bridgeWebView.setOverScrollMode(2);
        bridgeWebView.setWebViewClient(new a(bridgeWebView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(BridgeWebView bridgeWebView, String str) {
        Object tag = bridgeWebView.getTag(-1001);
        if (Intrinsics.c(Boolean.TRUE, tag instanceof Boolean ? (Boolean) tag : null)) {
            bridgeWebView.setTag(-1001, Boolean.FALSE);
            if (str == null) {
                str = "";
            }
            h(str, "finish");
        }
    }

    public final BridgeWebView b(Context context) {
        Intrinsics.h(context, "context");
        BridgeWebView bridgeWebView = new BridgeWebView(context);
        e(bridgeWebView);
        return bridgeWebView;
    }

    public final void e(BridgeWebView webView) {
        Intrinsics.h(webView, "webView");
        d(webView);
        c(webView);
    }

    public final void g(String msg) {
        Intrinsics.h(msg, "msg");
        i.f63883a.c("TWebViewProvider --> " + msg);
    }

    public final void h(String url, String action) {
        Intrinsics.h(url, "url");
        Intrinsics.h(action, "action");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("url", url);
        linkedHashMap.put(EventConstants.KEY_ACTION, action);
        hj.i.f64505a.z("preload", linkedHashMap, "web");
        g("上报 --> action = " + action + " --> url = " + url);
    }
}
