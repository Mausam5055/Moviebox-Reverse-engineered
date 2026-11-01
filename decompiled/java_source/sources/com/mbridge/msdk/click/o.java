package com.mbridge.msdk.click;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class o {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f34359r = "o";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f34360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34361b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mbridge.msdk.setting.g f34363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f34364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f34365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f34366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WebView f34367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f34368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f34369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f34370k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f34372m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f34373n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f34374o;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f34371l = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Runnable f34375p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f34376q = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f34362c = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f34377a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34378b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f34379c;

        a(String str, String str2, Context context) {
            this.f34377a = str;
            this.f34378b = str2;
            this.f34379c = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = o.this;
            oVar.a(this.f34377a, this.f34378b, this.f34379c, oVar.f34365f);
        }
    }

    class b extends WebViewClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f34381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34382b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f34383c;

        b(String str, String str2, Context context) {
            this.f34381a = str;
            this.f34382b = str2;
            this.f34383c = context;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
                if (o.this.f34372m) {
                    o.this.f34370k = 0;
                    o.this.f();
                    return;
                }
                o.this.f34374o = false;
                if (webView.getTag() == null) {
                    webView.setTag("has_first_started");
                } else {
                    o.this.f34373n = true;
                }
                synchronized (o.f34359r) {
                    try {
                        o.this.f34365f = str;
                        if (o.this.f34364e == null || !o.this.f34364e.a(str)) {
                            o.this.h();
                        } else {
                            o.this.f34372m = true;
                            o.this.f();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            synchronized (o.f34359r) {
                o.this.f34372m = true;
                o.this.b();
                o.this.f();
            }
            if (o.this.f34364e != null) {
                o.this.f34364e.a(i11, webView.getUrl(), str, o.this.f34369j);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            try {
                if (MBridgeConstans.IS_SP_CBT_CF && sslErrorHandler != null) {
                    sslErrorHandler.cancel();
                }
                if (TextUtils.isEmpty(this.f34381a) || TextUtils.isEmpty(this.f34382b)) {
                    return;
                }
                new com.mbridge.msdk.foundation.same.report.h(this.f34383c).a(this.f34382b, this.f34381a, webView.getUrl());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            try {
                synchronized (o.f34359r) {
                    o.this.f34372m = true;
                    o.this.b();
                    o.this.f();
                }
                if (o.this.f34364e != null) {
                    o.this.f34364e.a(-1, webView.getUrl(), "WebView render process crash.", o.this.f34369j);
                }
                if (webView != null) {
                    webView.destroy();
                }
                return true;
            } catch (Throwable th2) {
                o0.b(o.f34359r, th2.getMessage());
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            synchronized (o.f34359r) {
                try {
                    o oVar = o.this;
                    oVar.f34374o = true;
                    oVar.c();
                    if (o.this.f34372m) {
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    o.this.f34365f = str;
                    if (o.this.f34364e != null && o.this.f34364e.c(str)) {
                        o.this.f34372m = true;
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    if (o.this.f34368i) {
                        HashMap map = new HashMap();
                        if (o.this.f34367h.getUrl() != null) {
                            map.put("Referer", o.this.f34367h.getUrl());
                        }
                        o.this.f34367h.loadUrl(str, map);
                    } else {
                        o.this.f34367h.loadUrl(str);
                    }
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    class c extends WebChromeClient {
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
                try {
                    webView.loadUrl("javascript:window.navigator.vibrate([]);");
                    if (!o.this.f34372m) {
                        o oVar = o.this;
                        if (!oVar.f34374o) {
                            oVar.g();
                        }
                    }
                    if (o.this.f34364e != null) {
                        o.this.f34364e.b(webView.getUrl());
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f34371l = true;
            o.this.f34370k = 1;
            o.this.e();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f34371l = true;
            o.this.f34370k = 2;
            o.this.e();
        }
    }

    interface f {
        void a(int i11, String str, String str2, String str3);

        void a(String str, boolean z10, String str2);

        boolean a(String str);

        boolean b(String str);

        boolean c(String str);
    }

    public o() {
        this.f34360a = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.f34361b = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f34363d = gVarD;
        if (gVarD == null) {
            this.f34363d = com.mbridge.msdk.setting.h.b().a();
        }
        this.f34368i = this.f34363d.I0();
        this.f34360a = (int) this.f34363d.o0();
        this.f34361b = (int) this.f34363d.o0();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(Context context, String str, String str2) {
        WebView webView = new WebView(context);
        this.f34367h = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f34367h.getSettings().setCacheMode(2);
        this.f34367h.getSettings().setLoadsImagesAutomatically(false);
        this.f34367h.setWebViewClient(new b(str2, str, context));
        this.f34367h.setWebChromeClient(new c());
    }

    private void a(String str, String str2, Context context) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a(str, str2, context, this.f34365f);
        } else {
            this.f34362c.post(new a(str, str2, context));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, Context context, String str3) {
        try {
            a(context, str, str2);
            if (!TextUtils.isEmpty(this.f34366g)) {
                this.f34367h.getSettings().setDefaultTextEncodingName("utf-8");
                this.f34361b = 2000;
                this.f34360a = 2000;
                o0.c(f34359r, this.f34366g);
                this.f34367h.loadDataWithBaseURL(str3, this.f34366g, "*/*", "utf-8", str3);
                return;
            }
            if (!this.f34368i) {
                this.f34367h.loadUrl(str3);
                return;
            }
            HashMap map = new HashMap();
            if (this.f34367h.getUrl() != null) {
                map.put("Referer", this.f34367h.getUrl());
            }
            this.f34367h.loadUrl(str3, map);
        } catch (Throwable th2) {
            try {
                f fVar = this.f34364e;
                if (fVar != null) {
                    fVar.a(0, this.f34365f, th2.getMessage(), this.f34369j);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        c();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f34362c.removeCallbacks(this.f34375p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f34362c.removeCallbacks(this.f34376q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (f34359r) {
            try {
                try {
                    b();
                    this.f34367h.destroy();
                    f fVar = this.f34364e;
                    if (fVar != null) {
                        fVar.a(this.f34365f, this.f34371l, this.f34369j);
                    }
                } catch (Exception e11) {
                    o0.b(f34359r, e11.getMessage());
                } catch (Throwable th2) {
                    o0.b(f34359r, th2.getMessage());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        synchronized (f34359r) {
            try {
                try {
                    try {
                        b();
                        f fVar = this.f34364e;
                        if (fVar != null) {
                            fVar.a(this.f34365f, this.f34371l, this.f34369j);
                        }
                    } catch (Throwable th2) {
                        o0.b(f34359r, th2.getMessage());
                    }
                } catch (Exception e11) {
                    o0.b(f34359r, e11.getMessage());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        c();
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        d();
        j();
    }

    private void i() {
        this.f34362c.postDelayed(this.f34375p, this.f34361b);
    }

    private void j() {
        this.f34362c.postDelayed(this.f34376q, this.f34360a);
    }

    public void a(String str, String str2, Context context, String str3, f fVar) {
        if (fVar == null) {
            throw new NullPointerException("OverrideUrlLoadingListener can not be null");
        }
        this.f34365f = str3;
        this.f34364e = fVar;
        a(str, str2, context);
    }

    public void a(String str, String str2, Context context, String str3, String str4, f fVar) {
        if (fVar == null) {
            throw new NullPointerException("OverrideUrlLoadingListener can not be null");
        }
        this.f34366g = str4;
        this.f34365f = str3;
        this.f34364e = fVar;
        a(str, str2, context);
    }
}
