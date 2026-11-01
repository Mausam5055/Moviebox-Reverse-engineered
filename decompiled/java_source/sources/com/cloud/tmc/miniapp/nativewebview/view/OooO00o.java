package com.cloud.tmc.miniapp.nativewebview.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.render.ScrollChangedCallback;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.miniapp.nativewebview.interfaces.NativeWebviewInterface;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o extends WebView {
    public ScrollChangedCallback OooO00o;
    public WebviewPageCallback OooO0O0;
    public WebviewPageEventCallback OooO0OO;
    public com.cloud.tmc.miniapp.nativewebview.webclient.OooO00o OooO0Oo;
    public final Lazy OooO0o;
    public com.cloud.tmc.miniapp.nativewebview.OooO00o OooO0o0;

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.nativewebview.view.OooO00o$OooO00o, reason: collision with other inner class name */
    public static final class C0336OooO00o extends Lambda implements Function0<Handler> {
        public static final C0336OooO00o OooO00o = new C0336OooO00o();

        public C0336OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OooO00o(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.OooO0o = LazyKt.b(C0336OooO00o.OooO00o);
    }

    public /* synthetic */ OooO00o(Context context, AttributeSet attributeSet, int i11) {
        this(context, null);
    }

    private final Handler getMHandler() {
        return (Handler) this.OooO0o.getValue();
    }

    @SuppressLint({"JavascriptInterface"})
    public void OooO00o() {
        Context context = getContext();
        Intrinsics.g(context, "context");
        com.cloud.tmc.miniapp.nativewebview.OooO00o oooO00o = new com.cloud.tmc.miniapp.nativewebview.OooO00o(context, this.OooO0OO);
        this.OooO0o0 = oooO00o;
        setWebChromeClient(oooO00o);
        com.cloud.tmc.miniapp.nativewebview.webclient.OooO00o oooO00o2 = new com.cloud.tmc.miniapp.nativewebview.webclient.OooO00o(this.OooO0OO, this.OooO0O0);
        this.OooO0Oo = oooO00o2;
        setWebViewClient(oooO00o2);
        WebSettings settings = getSettings();
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setLoadsImagesAutomatically(true);
        settings.setDomStorageEnabled(true);
        settings.setMixedContentMode(0);
        settings.setAllowContentAccess(true);
        settings.setJavaScriptEnabled(true);
        addJavascriptInterface(new NativeWebviewInterface(), "dltNativeWebview");
    }

    public void OooO00o(WebviewPageCallback pageCallback) {
        Intrinsics.h(pageCallback, "pageCallback");
        this.OooO0O0 = pageCallback;
    }

    public void OooO00o(WebviewPageEventCallback pageEventCallback) {
        Intrinsics.h(pageEventCallback, "pageEventCallback");
        this.OooO0OO = pageEventCallback;
    }

    public void OooO00o(String url) {
        Intrinsics.h(url, "url");
        TmcLogger.d("NativeWebView", "[load Url]: " + url);
        loadUrl(url);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        clearHistory();
        com.cloud.tmc.miniapp.nativewebview.webclient.OooO00o oooO00o = this.OooO0Oo;
        if (oooO00o != null) {
            oooO00o.OooO00o = null;
        }
        this.OooO0Oo = null;
        com.cloud.tmc.miniapp.nativewebview.OooO00o oooO00o2 = this.OooO0o0;
        if (oooO00o2 != null) {
            oooO00o2.OooO00o = null;
        }
        this.OooO0o0 = null;
        this.OooO0O0 = null;
        this.OooO0OO = null;
        this.OooO00o = null;
        super.destroy();
    }

    public final com.cloud.tmc.miniapp.nativewebview.OooO00o getMWebChromeClient() {
        return this.OooO0o0;
    }

    @Override // android.webkit.WebView
    public void goBack() {
        super.goBack();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onCheckIsTextEditor() {
        boolean zOnCheckIsTextEditor = false;
        try {
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                zOnCheckIsTextEditor = super.onCheckIsTextEditor();
            } else {
                TmcLogger.e("NativeWebView", "onCheckIsTextEditor() does not run in the main thread");
            }
        } catch (Throwable th2) {
            TmcLogger.e("NativeWebView", "Probable deadlock detected due to WebView API being called on incorrect thread while the UI thread is blocked.", th2);
        }
        return zOnCheckIsTextEditor;
    }

    @Override // android.webkit.WebView
    public void onPause() {
        super.onPause();
    }

    @Override // android.webkit.WebView
    public void onResume() {
        super.onResume();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i11, int i12, int i13, int i14) {
        super.onScrollChanged(i11, i12, i13, i14);
        ScrollChangedCallback scrollChangedCallback = this.OooO00o;
        if (scrollChangedCallback != null) {
            scrollChangedCallback.onScroll(i11 - i13, i12 - i14);
        }
    }

    @Override // android.webkit.WebView
    public void reload() {
        super.reload();
    }

    public final void setMWebChromeClient(com.cloud.tmc.miniapp.nativewebview.OooO00o oooO00o) {
        this.OooO0o0 = oooO00o;
    }

    public void setScrollChangedCallback(ScrollChangedCallback scrollChangedCallback) {
        this.OooO00o = scrollChangedCallback;
    }
}
