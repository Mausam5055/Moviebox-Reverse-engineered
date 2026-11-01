package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class BrowserView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CampaignEx f35834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f35836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f35837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ProgressBar f35838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ToolBar f35839f;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BrowserView.this.f35837d != null) {
                BrowserView.this.f35837d.stopLoading();
            }
            String str = (String) view.getTag();
            boolean z10 = false;
            if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD)) {
                BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(true);
                if (BrowserView.this.f35837d != null && BrowserView.this.f35837d.canGoBack()) {
                    BrowserView.this.f35837d.goBack();
                }
                View item = BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD);
                if (BrowserView.this.f35837d != null && BrowserView.this.f35837d.canGoBack()) {
                    z10 = true;
                }
                item.setEnabled(z10);
                return;
            }
            if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD)) {
                BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(true);
                if (BrowserView.this.f35837d != null && BrowserView.this.f35837d.canGoForward()) {
                    BrowserView.this.f35837d.goForward();
                }
                View item2 = BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD);
                if (BrowserView.this.f35837d != null && BrowserView.this.f35837d.canGoForward()) {
                    z10 = true;
                }
                item2.setEnabled(z10);
                return;
            }
            if (!TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.REFRESH)) {
                if (!TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.EXITS) || BrowserView.this.f35836c == null) {
                    return;
                }
                BrowserView.this.f35836c.a();
                return;
            }
            BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(BrowserView.this.f35837d != null && BrowserView.this.f35837d.canGoBack());
            View item3 = BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD);
            if (BrowserView.this.f35837d != null && BrowserView.this.f35837d.canGoForward()) {
                z10 = true;
            }
            item3.setEnabled(z10);
            if (BrowserView.this.f35837d != null) {
                BrowserView.this.f35837d.loadUrl(BrowserView.this.f35835b);
            }
        }
    }

    class b extends WebViewClient {
        b() {
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            o0.c("BrowserView", "onLoadResource 开始! = " + str);
            if (BrowserView.this.f35836c != null) {
                BrowserView.this.f35836c.c(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (BrowserView.this.f35836c != null) {
                BrowserView.this.f35836c.a(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            o0.c("BrowserView", "开始! = " + str);
            BrowserView.this.f35835b = str;
            if (BrowserView.this.f35836c != null) {
                BrowserView.this.f35836c.a(webView, str, bitmap);
            }
            BrowserView.this.f35838e.setVisible(true);
            BrowserView.this.f35838e.setProgressState(5);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            if (BrowserView.this.f35836c != null) {
                BrowserView.this.f35836c.a(webView, i11, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    webView.destroy();
                } catch (Throwable th2) {
                    o0.b("BrowserView", th2.getMessage());
                    return true;
                }
            }
            if (BrowserView.this.f35836c != null) {
                BrowserView.this.f35836c.a();
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            o0.c("BrowserView", "js大跳! = " + str);
            BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(true);
            BrowserView.this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(false);
            if (BrowserView.this.f35836c != null) {
                return BrowserView.this.f35836c.b(webView, str);
            }
            return false;
        }
    }

    class c extends WebChromeClient {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BrowserView.this.f35838e.setVisible(false);
            }
        }

        c() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i11) {
            if (i11 == 100) {
                BrowserView.this.f35838e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    class d extends WebChromeClient {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BrowserView.this.f35838e.setVisible(false);
            }
        }

        d() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i11) {
            if (i11 == 100) {
                BrowserView.this.f35838e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface e {
        void a();

        void a(WebView webView, int i11, String str, String str2);

        void a(WebView webView, String str);

        void a(WebView webView, String str, Bitmap bitmap);

        boolean b(WebView webView, String str);

        void c(WebView webView, String str);
    }

    public BrowserView(Context context) {
        super(context);
        init();
    }

    public BrowserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public BrowserView(Context context, CampaignEx campaignEx) {
        super(context);
        this.f35834a = campaignEx;
        init();
    }

    private void a() {
        ProgressBar progressBar = new ProgressBar(getContext());
        this.f35838e = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        try {
            if (this.f35837d == null) {
                this.f35837d = getWebView();
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            this.f35837d.setLayoutParams(layoutParams);
        } catch (Throwable th2) {
            o0.b("BrowserView", "webview is error", th2);
        }
        this.f35839f = new ToolBar(getContext());
        this.f35839f.setLayoutParams(new LinearLayout.LayoutParams(-1, t0.a(getContext(), 40.0f)));
        this.f35839f.setBackgroundColor(-1);
        addView(this.f35838e);
        WebView webView = this.f35837d;
        if (webView != null) {
            addView(webView);
        }
        addView(this.f35839f);
    }

    private WebView getWebView() {
        WebView webView = new WebView(getContext());
        try {
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(-1);
            settings.setAllowFileAccess(true);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(true);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    settings.setSafeBrowsingEnabled(false);
                } catch (Throwable th2) {
                    o0.b("BrowserView", th2.getMessage());
                }
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
                try {
                    settings.setMixedContentMode(0);
                } catch (Exception e11) {
                    o0.b("BrowserView", e11.getMessage());
                }
                settings.setDatabaseEnabled(true);
                String path = getContext().getDir("database", 0).getPath();
                settings.setDatabasePath(path);
                settings.setGeolocationEnabled(true);
                settings.setGeolocationDatabasePath(path);
                try {
                    Method declaredMethod = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", Boolean.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(settings, Boolean.FALSE);
                } catch (Exception e12) {
                    o0.b("BrowserView", e12.getMessage());
                }
            } else {
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
                settings.setMixedContentMode(0);
                settings.setDatabaseEnabled(true);
                String path2 = getContext().getDir("database", 0).getPath();
                settings.setDatabasePath(path2);
                settings.setGeolocationEnabled(true);
                settings.setGeolocationDatabasePath(path2);
                Method declaredMethod2 = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", Boolean.TYPE);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(settings, Boolean.FALSE);
            }
        } catch (Throwable th3) {
            o0.b("BrowserView", th3.getMessage());
        }
        webView.setDownloadListener(new com.mbridge.msdk.foundation.same.webview.a(this.f35834a));
        webView.setWebViewClient(new b());
        webView.setWebChromeClient(k0.r() <= 10 ? new c() : new d());
        return webView;
    }

    public void destroy() {
        try {
            WebView webView = this.f35837d;
            if (webView != null) {
                webView.setWebViewClient(null);
                this.f35837d.destroy();
                this.f35837d = null;
                removeAllViews();
            }
        } catch (Throwable th2) {
            o0.b("BrowserView", th2.getMessage());
        }
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        a();
        this.f35838e.initResource(true);
        this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(false);
        this.f35839f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(false);
        this.f35839f.setOnItemClickListener(new a());
    }

    public void loadUrl(String str) {
        WebView webView = this.f35837d;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    public void setListener(e eVar) {
        this.f35836c = eVar;
    }

    public void setWebView(WebView webView) {
        this.f35837d = webView;
    }
}
