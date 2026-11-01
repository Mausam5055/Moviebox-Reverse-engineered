package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.video.SplashAdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class u2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f22992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SplashAdVideoView f22993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f22994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i1 f22995d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private InteractiveWebView f22997f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private q4 f23004m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f23005n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f22996e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f22998g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f22999h = -1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f23000i = -1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f23001j = -1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f23002k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f23003l = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f23006o = new e(this);

    class a implements InteractiveWebView.c {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void a(String str) {
            CountTimeView countTimeViewJ;
            e4.b().d("SplashImage", "interactiveEvent: " + str);
            u2.this.l(str);
            if (u2.this.f22995d == null || (countTimeViewJ = u2.this.f22995d.J()) == null) {
                return;
            }
            countTimeViewJ.cancel();
            countTimeViewJ.changeFinishMode();
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void b() {
            e4.b().d("SplashImage", "handleClick ");
            u2 u2Var = u2.this;
            u2Var.q(u2Var.f22997f);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void c() {
            e4.b().d("SplashImage", "timeoutShutdown ");
            if (u2.this.f22995d != null) {
                u2.this.f22995d.B0();
            }
        }
    }

    class b implements ValueCallback {
        b() {
        }

        @Override // android.webkit.ValueCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            e4.b().e("SplashImage", "onReceiveValue " + str);
        }
    }

    class c extends DrawableResponseListener {
        c() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            u2.this.h(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (u2.this.f22995d != null) {
                u2.this.f22995d.m0(true);
            }
        }
    }

    class d extends DrawableResponseListener {
        d() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            u2.this.h(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (u2.this.f22995d != null) {
                u2.this.f22995d.m0(true);
            }
        }
    }

    private static class e extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f23011b;

        public e(u2 u2Var) {
            this.f23011b = new WeakReference(u2Var);
        }

        @Override // com.cloud.hisavana.sdk.common.tranmeasure.a, com.cloud.hisavana.sdk.common.tranmeasure.d.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(AdsDTO adsDTO) {
            i1 i1Var;
            super.a(adsDTO);
            e4.b().d("ssp_measure", "onViewImpressed --> view has impression");
            u2 u2Var = (u2) this.f23011b.get();
            if (u2Var == null || u2Var.f23002k || (i1Var = u2Var.f22995d) == null) {
                return;
            }
            u2Var.f23002k = true;
            e4.b().d("ssp_measure", "mSplashAd.adListener().onAdShow()");
            i1Var.Q();
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            P.g().k(adsDTO.getImpBeanRequest().pmid);
            if (adsDTO.getSource() == 4) {
                Z.f21541a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
            } else if (adsDTO.isOfflineAd()) {
                adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                c0.F().q(adsDTO);
            }
        }
    }

    private class f implements View.OnClickListener {
        private f() {
        }

        /* synthetic */ f(u2 u2Var, a aVar) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u2.this.q(view);
        }
    }

    private class g implements View.OnTouchListener {
        private g() {
        }

        /* synthetic */ g(u2 u2Var, a aVar) {
            this();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                u2.this.f22998g = motionEvent.getX();
                u2.this.f22999h = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            u2.this.f23000i = motionEvent.getX();
            u2.this.f23001j = motionEvent.getY();
            return false;
        }
    }

    public u2(i1 i1Var) {
        this.f22995d = i1Var;
    }

    private void d(View view) {
        if (view instanceof ImageView) {
            com.cloud.sdk.commonutil.util.k.a((ImageView) view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(TaErrorCode taErrorCode) {
        try {
            i1 i1Var = this.f22995d;
            if (i1Var != null) {
                i1Var.D0();
                this.f22995d.e0(taErrorCode);
            }
        } catch (Throwable unused) {
        }
    }

    private void i(AdsDTO adsDTO) {
        if (this.f22992a == null) {
            this.f22992a = new ImageView(this.f22995d.H());
        }
        ((ImageView) this.f22992a).setScaleType(ImageView.ScaleType.CENTER_CROP);
        DownLoadRequest.n(adsDTO.getAdImgUrl(), adsDTO, new d(), (ImageView) this.f22992a);
    }

    private void j(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation()) || interactiveWebView == null) {
            r(TaErrorCode.ERROR_SHOW_INDEXLOCATION_EMPTY);
            i1 i1Var = this.f22995d;
            if (i1Var != null) {
                i1Var.B0();
                return;
            }
            return;
        }
        if (!new File(adsDTO.getIndexLocation()).exists()) {
            r(TaErrorCode.ERROR_SHOW_AD_INTERACTIVEAD_FILE_NOT_EXIST);
            i1 i1Var2 = this.f22995d;
            if (i1Var2 != null) {
                i1Var2.B0();
            }
            AthenaTracker.S(adsDTO, 3);
            return;
        }
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + adsDTO.getIndexLocation());
        i1 i1Var3 = this.f22995d;
        if (i1Var3 != null) {
            i1Var3.m0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str) {
        i1 i1Var = this.f22995d;
        if (i1Var == null) {
            e4.b().e("SplashImage", "trackInteractionEvent splashAd is null");
            return;
        }
        AdsDTO adsDTO = i1Var.f22506o;
        if (adsDTO == null) {
            e4.b().e("SplashImage", "trackInteractionEvent adsDto is null");
        } else {
            AthenaTracker.y(adsDTO, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(View view) {
        if (view == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f22994c <= 1000 || this.f22995d == null) {
                return;
            }
            this.f22994c = jCurrentTimeMillis;
            N0.b(view.getContext(), this.f22995d.f22506o, new DownUpPointBean(this.f22998g, this.f22999h, this.f23000i, this.f23001j, view.getMeasuredHeight(), view.getMeasuredWidth()), this.f22995d.p().v());
            AthenaTracker.W(this.f22995d.f22506o);
            this.f22995d.O();
        } catch (Throwable th2) {
            e4.b().e("ssp", Log.getStackTraceString(th2));
        }
    }

    private void r(TaErrorCode taErrorCode) {
        try {
            i1 i1Var = this.f22995d;
            if (i1Var != null) {
                i1Var.f0(taErrorCode, null);
            }
        } catch (Throwable unused) {
        }
    }

    private void s(AdsDTO adsDTO) {
        e4.b().d("SplashImage", "attachImgAd");
        if (this.f22992a == null) {
            this.f22992a = new ImageView(this.f22995d.H());
        }
        ((ImageView) this.f22992a).setScaleType(ImageView.ScaleType.CENTER_CROP);
        DownLoadRequest.o(adsDTO.getAdImgUrl(), adsDTO, 2, new c(), (ImageView) this.f22992a);
    }

    private void v(View view) {
        if (view == null || this.f22995d == null) {
            return;
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f22995d.f22506o, view, this.f23006o);
        String strK = com.cloud.hisavana.sdk.common.util.r.f22193a.k(this.f22995d.f22506o);
        ViewGroup viewGroupK = this.f22995d.K();
        a aVar = null;
        if (TextUtils.isEmpty(strK) || viewGroupK == null) {
            view.setOnTouchListener(new g(this, aVar));
            view.setOnClickListener(new f(this, aVar));
        } else {
            viewGroupK.setOnTouchListener(new g(this, aVar));
            viewGroupK.setOnClickListener(new f(this, aVar));
        }
    }

    private void w(AdsDTO adsDTO) {
        e4.b().d("SplashImage", "attachInteractiveAd");
        if (adsDTO == null) {
            h(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        } else {
            C(adsDTO);
            j(adsDTO, this.f22997f);
        }
    }

    private void y(AdsDTO adsDTO) {
        e4.b().d("SplashImage", "fillVideoAd");
        if (this.f22993b == null) {
            this.f22993b = new SplashAdVideoView(this.f22995d.H());
        }
        this.f22993b.resetVolumePosition(!TextUtils.isEmpty(com.cloud.hisavana.sdk.common.util.r.f22193a.k(this.f22995d.f22506o)));
        this.f22993b.setAdMediaPlayerListener(this.f23004m);
        String strK = v2.k(this.f22995d.f22506o);
        if (TextUtils.isEmpty(strK)) {
            r(TaErrorCode.ERROR_SHOW_AD_MAINURL_EMPTY);
            i1 i1Var = this.f22995d;
            if (i1Var != null) {
                i1Var.B0();
                return;
            }
            return;
        }
        this.f22993b.setMediaData(strK, adsDTO, strK.startsWith("http"));
        i1 i1Var2 = this.f22995d;
        if (i1Var2 != null) {
            i1Var2.m0(false);
        }
    }

    public void A(AdsDTO adsDTO) {
        View view;
        if (adsDTO == null) {
            h(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        AthenaTracker.A(adsDTO);
        if (adsDTO.isVastTypeAd()) {
            y(adsDTO);
            view = this.f22993b;
        } else if (adsDTO.isInteractiveAd()) {
            w(adsDTO);
            view = this.f22997f;
        } else if (adsDTO.getSource() != 4) {
            s(adsDTO);
            view = this.f22992a;
        } else if (adsDTO.getDefaultMaterialType() == 1) {
            i(adsDTO);
            view = this.f22992a;
        } else {
            y(adsDTO);
            view = this.f22993b;
        }
        v(view);
    }

    public View B(AdsDTO adsDTO) {
        if (adsDTO == null) {
            e4.b().e("SplashImage", "getView adsDto is null");
            return new View(com.cloud.sdk.commonutil.util.e.a());
        }
        if (adsDTO.isInteractiveAd()) {
            return this.f22997f;
        }
        return (adsDTO.isVastTypeAd() || adsDTO.getDefaultMaterialType() == 2) ? this.f22993b : this.f22992a;
    }

    public void C(AdsDTO adsDTO) {
        if (adsDTO == null) {
            e4.b().e("SplashImage", "initializeInteractiveAdView adsDTO is null");
            return;
        }
        if (this.f22997f != null || this.f22995d.H() == null) {
            return;
        }
        a aVar = null;
        try {
            InteractiveWebView interactiveWebView = new InteractiveWebView(this.f22995d.H());
            this.f22997f = interactiveWebView;
            interactiveWebView.setWebClientCallback(adsDTO);
            this.f22997f.setInteractiveListener(new a());
            this.f22997f.setOnTouchListener(new g(this, aVar));
        } catch (Throwable th2) {
            e4.b().e("SplashImage", "create webview error: " + Log.getStackTraceString(th2));
            this.f22997f = null;
        }
    }

    public void D(AdsDTO adsDTO) {
        SplashAdVideoView splashAdVideoView;
        if (adsDTO == null || !adsDTO.isVastTypeAd() || (splashAdVideoView = this.f22993b) == null) {
            return;
        }
        splashAdVideoView.pause();
    }

    public void b() {
        i1 i1Var = this.f22995d;
        if (i1Var != null && i1Var.f22506o != null) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.f22995d.f22506o);
        }
        d(this.f22992a);
        this.f22992a = null;
        InteractiveWebView interactiveWebView = this.f22997f;
        if (interactiveWebView != null) {
            interactiveWebView.setInteractiveListener(null);
            this.f22997f.destroy();
            this.f22997f = null;
        }
        SplashAdVideoView splashAdVideoView = this.f22993b;
        if (splashAdVideoView != null) {
            splashAdVideoView.setAdMediaPlayerListener(null);
            this.f22993b.release();
            this.f22993b = null;
        }
        e4.b().d("ssp", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    public void c(int i11) {
        this.f23005n = i11;
    }

    public void k(q4 q4Var) {
        this.f23004m = q4Var;
    }

    public void z(AdsDTO adsDTO) {
        InteractiveWebView interactiveWebView;
        if (adsDTO == null) {
            return;
        }
        if (adsDTO.isVastTypeAd()) {
            SplashAdVideoView splashAdVideoView = this.f22993b;
            if (splashAdVideoView != null) {
                splashAdVideoView.play();
                return;
            }
            return;
        }
        if (!adsDTO.isInteractiveAd() || (interactiveWebView = this.f22997f) == null) {
            return;
        }
        interactiveWebView.evaluateJavascript("javascript:continuePlay()", new b());
    }
}
