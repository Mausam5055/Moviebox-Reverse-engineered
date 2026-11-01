package com.cloud.hisavana.sdk;

import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class r {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f22913f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WebView f22915h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AdsDTO f22916i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private s4 f22917j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f22919l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f22920m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22908a = "AdmHandler";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f22909b = -1.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f22910c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f22911d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f22912e = -1.0f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f22914g = LazyKt.b(c.f22923a);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b f22918k = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f22921n = System.currentTimeMillis();

    public interface a {
        void a(String str, int i11);

        boolean a(String str);
    }

    public static final class b implements a {
        b() {
        }

        @Override // com.cloud.hisavana.sdk.r.a
        public void a(String str, int i11) {
            s4 s4Var = r.this.f22917j;
            if (s4Var != null) {
                s4Var.a(str, i11);
            }
        }

        @Override // com.cloud.hisavana.sdk.r.a
        public boolean a(String url) {
            Intrinsics.h(url, "url");
            return r.this.k(url);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Le7/n;", "a", "()Le7/n;"}, k = 3, mv = {1, 9, 0})
    static final class c extends Lambda implements Function0<e7.n> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f22923a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e7.n invoke() {
            return new e7.n(com.cloud.sdk.commonutil.util.e.a());
        }
    }

    private final void e(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    com.cloud.hisavana.sdk.common.util.e.f22153a.g(this.f22921n, str);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        s4 s4Var = this.f22917j;
        if (s4Var != null) {
            s4Var.a();
        }
    }

    private final void f(boolean z10) {
        s4 s4Var = this.f22917j;
        this.f22913f = s4Var != null ? s4Var.b(this.f22909b, this.f22910c, this.f22911d, this.f22912e, z10) : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g(r this$0, AdsDTO mAdBean, TadmWebView admWebView, View view, MotionEvent motionEvent) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(mAdBean, "$mAdBean");
        Intrinsics.h(admWebView, "$admWebView");
        if (motionEvent != null) {
            this$0.i().onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 && (!this$0.f22920m || this$0.f22919l == 0 || System.currentTimeMillis() - this$0.f22919l > 200)) {
                    this$0.f22911d = motionEvent.getX();
                    this$0.f22912e = motionEvent.getY();
                    this$0.f22919l = System.currentTimeMillis();
                    e4.b().d(this$0.f22908a, "simulateClickByCoordinate,isADXI01Style->" + this$0.f22920m + ",mAdBean.isAdmNormalClick() ->" + mAdBean.isAdmNormalClick() + ",mGestureDetector.isClicked -> " + this$0.i().a());
                    if (this$0.f22920m) {
                        com.cloud.hisavana.sdk.common.util.r.f22193a.s(admWebView);
                    }
                    if (this$0.i().a() && !mAdBean.isAdmNormalClick()) {
                        this$0.f(false);
                    }
                }
            } else if (!this$0.f22920m || this$0.f22919l == 0 || System.currentTimeMillis() - this$0.f22919l > 200) {
                this$0.f22909b = motionEvent.getX();
                this$0.f22910c = motionEvent.getY();
            }
        }
        return false;
    }

    private final e7.n i() {
        return (e7.n) this.f22914g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean k(String str) {
        AdsDTO adsDTO;
        if (!i().a()) {
            return false;
        }
        int i11 = this.f22913f;
        if (i11 == 0) {
            AdsDTO adsDTO2 = this.f22916i;
            if (adsDTO2 != null) {
                adsDTO2.setClickUrl(str);
            }
            AdsDTO adsDTO3 = this.f22916i;
            if (adsDTO3 != null) {
                adsDTO3.setUpdateClickUrl(true);
            }
            f(true);
        } else if (i11 == -1 || (i11 == 5 && (adsDTO = this.f22916i) != null && adsDTO.isJumpToHalfscreen())) {
            if (this.f22920m) {
                e(str);
            } else {
                if (this.f22915h == null) {
                    try {
                        WebView webView = new WebView(com.cloud.sdk.commonutil.util.e.a());
                        this.f22915h = webView;
                        webView.setWebViewClient(new WebViewClient());
                        WebView webView2 = this.f22915h;
                        WebSettings settings = webView2 != null ? webView2.getSettings() : null;
                        if (settings != null) {
                            settings.setJavaScriptEnabled(true);
                        }
                    } catch (Exception unused) {
                        e4.b().w(this.f22908a, "create web view error");
                    }
                }
                WebView webView3 = this.f22915h;
                if (webView3 != null) {
                    webView3.loadUrl(str);
                }
            }
        }
        return true;
    }

    public final void c() {
        WebView webView = this.f22915h;
        if (webView != null) {
            try {
                webView.clearHistory();
                webView.clearCache(true);
                webView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
                webView.freeMemory();
                webView.destroy();
            } catch (Exception unused) {
            }
        }
        this.f22915h = null;
        if (this.f22920m) {
            com.cloud.hisavana.sdk.common.util.e.f22153a.d(this.f22921n);
        }
        this.f22917j = null;
    }

    public final void d(final TadmWebView admWebView, final AdsDTO mAdBean, s4 loadAdmListener) {
        Intrinsics.h(admWebView, "admWebView");
        Intrinsics.h(mAdBean, "mAdBean");
        Intrinsics.h(loadAdmListener, "loadAdmListener");
        admWebView.addJavascriptInterface(new w4(this.f22918k), "loadError");
        admWebView.setWebViewClient(new b5(this.f22918k));
        admWebView.setOnTouchListener(new View.OnTouchListener() { // from class: com.cloud.hisavana.sdk.x4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return r.g(this.f23087a, mAdBean, admWebView, view, motionEvent);
            }
        });
        this.f22916i = mAdBean;
        this.f22917j = loadAdmListener;
        this.f22913f = 0;
    }

    public final void j(boolean z10) {
        this.f22920m = z10;
    }
}
