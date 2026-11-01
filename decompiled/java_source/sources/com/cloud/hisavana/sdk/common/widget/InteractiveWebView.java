package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.tmc.kernel.constants.TmcConstants;
import e7.j;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class InteractiveWebView extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f22229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f22230b;

    class a extends j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22231a;

        a(AdsDTO adsDTO) {
            this.f22231a = adsDTO;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AthenaTracker.S(this.f22231a, 5);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            super.onReceivedError(webView, i11, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            AthenaTracker.S(this.f22231a, 4);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference f22233a;

        public b(InteractiveWebView interactiveWebView) {
            this.f22233a = new WeakReference(interactiveWebView);
        }

        @JavascriptInterface
        public void handleClick() {
            e4.b().d("InteractiveWebView", "handleClick");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.f22233a.get();
            if (interactiveWebView != null) {
                interactiveWebView.g();
            }
        }

        @JavascriptInterface
        public void interactiveEvent(String str) {
            e4.b().d("InteractiveWebView", "interactiveEvent");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.f22233a.get();
            if (interactiveWebView != null) {
                interactiveWebView.i(str);
            }
        }

        @JavascriptInterface
        public void timeoutShutdown() {
            e4.b().d("InteractiveWebView", "timeoutShutdown");
            InteractiveWebView interactiveWebView = (InteractiveWebView) this.f22233a.get();
            if (interactiveWebView != null) {
                interactiveWebView.m();
            }
        }
    }

    public interface c {
        void a(String str);

        void b();

        void c();
    }

    public InteractiveWebView(@NonNull Context context) {
        super(context);
        h();
    }

    public InteractiveWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        h();
    }

    public InteractiveWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        HSScopeHelper.f23167a.h(new Runnable() { // from class: e7.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f61600a.j();
            }
        });
    }

    private void h() {
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSupportZoom(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDisplayZoomControls(true);
        settings.setCacheMode(-1);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        setWebViewClient(new j());
        setWebChromeClient(new WebChromeClient());
        b bVar = new b(this);
        this.f22229a = bVar;
        addJavascriptInterface(bVar, "InteractiveWebView");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final String str) {
        HSScopeHelper.f23167a.h(new Runnable() { // from class: e7.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f61597a.k(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        c cVar = this.f22230b;
        if (cVar != null) {
            cVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(String str) {
        c cVar = this.f22230b;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        c cVar = this.f22230b;
        if (cVar != null) {
            cVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        HSScopeHelper.f23167a.h(new Runnable() { // from class: e7.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f61599a.l();
            }
        });
    }

    @Override // android.webkit.WebView
    public void destroy() {
        try {
            getSettings().setJavaScriptEnabled(false);
            setWebChromeClient(null);
            clearHistory();
            clearCache(true);
            loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            freeMemory();
            this.f22230b = null;
            super.destroy();
        } catch (Exception e11) {
            e4.b().e("InteractiveWebView", "destroy " + Log.getStackTraceString(e11));
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setInteractiveListener(c cVar) {
        this.f22230b = cVar;
    }

    public void setWebClientCallback(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        setWebViewClient(new a(adsDTO));
    }
}
