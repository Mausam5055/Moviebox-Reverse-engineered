package com.bytedance.sdk.openadsdk.core.model;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import u5.b;

/* JADX INFO: loaded from: classes3.dex */
public class TzV implements Handler.Callback {
    private com.bytedance.sdk.openadsdk.core.widget.uvD Bml;
    private AtomicBoolean Chv;
    FrameLayout Dq;
    private FrameLayout EZ;
    private boolean Ei;
    FrameLayout EjP;
    private int FPG;
    private boolean Fm;
    com.bytedance.sdk.openadsdk.core.sP.Sj Fmk;
    View HiB;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.HiB HpB;
    private com.bytedance.sdk.openadsdk.core.HiB.EjP IOh;
    private String JcM;
    final sU Jcg;
    private View LqL;
    private final View Mts;
    private com.bytedance.sdk.openadsdk.common.EjP MuB;
    private TextView RiZ;
    ImageView Sj;
    ValueAnimator TEQ;
    TextView TKC;
    private TextView TzV;
    private final com.bytedance.sdk.openadsdk.core.aa.EjP.sP WMZ;
    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS Wjd;
    private long Yf;
    ObjectAnimator Ym;
    private Handler Zq;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq aNB;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    b.InterfaceC0935b f21066aa;
    private LinearLayout.LayoutParams cX;
    private View dNu;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private ILoader f21067db;
    private int dwU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private TextView f21068dx;
    private final Activity fF;
    private ValueAnimator gR;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private com.bytedance.sdk.component.uA.vS f21069ib;
    private FrameLayout kF;
    private ImageView ley;
    private com.bytedance.sdk.openadsdk.core.Dq.RiZ pfr;
    FrameLayout sP;
    private com.bytedance.sdk.openadsdk.core.widget.uvD sU;
    private int sdp;
    com.bytedance.sdk.openadsdk.core.sP.sP sef;
    ObjectAnimator uA;
    private com.bytedance.sdk.openadsdk.common.aa uP;
    private View uvD;
    RelativeLayout vS;
    private View wE;
    private com.bytedance.sdk.openadsdk.EjP.Ym xD;
    private String xhi;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    private sP f21072xu;
    private com.bytedance.sdk.openadsdk.core.Yf zR;
    private final AtomicBoolean LD = new AtomicBoolean(false);

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private final AtomicBoolean f21070jb = new AtomicBoolean(false);
    private volatile int ndK = 0;
    private volatile int qRN = 0;
    private volatile int UHs = 0;
    private float gY = -1.0f;

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    private final AtomicBoolean f21071kb = new AtomicBoolean(false);
    private long Uc = -1;
    private final AtomicBoolean Ir = new AtomicBoolean(false);

    private static class Sj implements com.bytedance.sdk.component.HiB.Dq {
        @Override // com.bytedance.sdk.component.HiB.Dq
        public Bitmap Sj(Bitmap bitmap) {
            return com.bytedance.sdk.component.adexpress.EjP.Sj.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), bitmap, 25);
        }
    }

    public static class sP implements com.bytedance.sdk.openadsdk.EjP.TEQ {
        private final WeakReference<TzV> EjP;
        private final int Sj;
        private final String TKC;
        private final sU sP;

        public sP(int i11, sU sUVar, String str, TzV tzV) {
            this.Sj = i11;
            this.sP = sUVar;
            this.TKC = str;
            this.EjP = new WeakReference<>(tzV);
        }

        @Override // com.bytedance.sdk.openadsdk.EjP.TEQ
        public void Sj(int i11) {
            TzV tzV = this.EjP.get();
            if (tzV != null) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(this.Sj, tzV.UHs, tzV.qRN, tzV.ndK - tzV.qRN, this.sP, this.TKC, i11);
            }
        }
    }

    public TzV(Activity activity, final sU sUVar, String str, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar, View view) {
        this.fF = activity;
        this.Jcg = sUVar;
        this.JcM = str;
        this.WMZ = sPVar;
        this.Mts = view;
        this.FPG = Mts.Sj(str);
        if (sUVar != null) {
            this.xhi = sUVar.eMB();
        }
        if (!TextUtils.isEmpty(this.xhi)) {
            this.f21067db = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().sP();
            int iSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.f21067db, this.xhi);
            this.dwU = iSj;
            this.sdp = iSj > 0 ? 2 : 0;
        }
        boolean zEjP = EjP(sUVar);
        boolean zHiB = HiB(sUVar);
        boolean zSP = sP(sUVar);
        if (zSP) {
            this.JcM = "landingpage_split_screen";
        } else if (zEjP) {
            this.JcM = "landingpage_direct";
        } else if (zHiB) {
            this.JcM = "aggregate_page";
        } else if (TKC(sUVar)) {
            this.JcM = "landingpage_split_ceiling";
        }
        this.Fmk = new com.bytedance.sdk.openadsdk.core.sP.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), sUVar, this.JcM, Mts.Sj(str));
        HashMap map = new HashMap();
        map.put("click_scence", 1);
        this.Fmk.Sj(map);
        View viewFindViewById = activity.findViewById(R.id.content);
        this.Fmk.Sj(viewFindViewById);
        com.bytedance.sdk.openadsdk.core.sP.sP sPVar2 = new com.bytedance.sdk.openadsdk.core.sP.sP(activity, sUVar, this.JcM, Mts.Sj(str), true) { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.1
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP
            public boolean Sj(TEQ teq, Map<String, Object> map2) {
                if (TzV.Dq(sUVar) && TzV.this.HpB != null) {
                    TzV.this.HpB.Sj(teq);
                    TzV.this.HpB.Sj(map2);
                    if (TzV.Jcg(TzV.this.Jcg) || TzV.this.Ei) {
                        return true;
                    }
                }
                return super.Sj(teq, map2);
            }
        };
        this.sef = sPVar2;
        sPVar2.Sj(map);
        this.sef.Sj(viewFindViewById);
        this.Dq = frameLayout;
        if (zSP || zEjP || zHiB) {
            try {
                this.Zq = new Handler(Looper.getMainLooper(), this);
            } catch (Exception e11) {
                Log.e("LandingPageModel", "LandingPageModel: ", e11);
                return;
            }
        }
        if (zEjP || zHiB) {
            Handler handler = this.Zq;
            handler.sendMessage(handler.obtainMessage(100, 0, 0));
        }
    }

    public static boolean Dq(sU sUVar) {
        if (sUVar != null) {
            return sUVar.dx() == 19 || sUVar.dx() == 20;
        }
        return false;
    }

    public static boolean EjP(sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        if (uA(sUVar)) {
            return true;
        }
        return sUVar.sdp() == 3 && sUVar.dx() == 5 && !uP.sP(sUVar) && (sUVar.tY() == 0.0f || sUVar.tY() == 100.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Fmk() {
        if (this.LD.get() || this.f21070jb.get()) {
            return;
        }
        this.LD.set(true);
        long jElapsedRealtime = this.Uc == -1 ? 0L : SystemClock.elapsedRealtime() - this.Uc;
        if (TKC(this.Jcg)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.TKC(this.Jcg, this.JcM, jElapsedRealtime);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.Jcg, this.JcM, System.currentTimeMillis() - this.Yf, true);
        sef();
    }

    public static boolean HiB(sU sUVar) {
        return sUVar != null && sUVar.dx() == 33;
    }

    public static boolean Jcg(sU sUVar) {
        return (sUVar == null || sUVar.jjS() == 1 || !Dq(sUVar)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean RiZ() {
        return sU.HiB(this.Jcg);
    }

    public static boolean Sj(sU sUVar) {
        if (sUVar == null || uA(sUVar)) {
            return false;
        }
        return EjP(sUVar) || sP(sUVar) || HiB(sUVar);
    }

    public static boolean TEQ(sU sUVar) {
        return (sUVar == null || !com.bytedance.sdk.openadsdk.core.dNu.EjP().sU() || !sUVar.Ei() || sP(sUVar) || EjP(sUVar) || HiB(sUVar)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(int i11) {
        FPG.Sj((View) this.Bml, i11);
        FPG.Sj((View) this.aNB, i11);
        if (this.f21070jb.get()) {
            FPG.Sj((View) this.TzV, i11);
            FPG.Sj((View) this.RiZ, i11);
            FPG.Sj((View) this.sU, i11);
            FPG.Sj((View) this.f21068dx, 0);
        }
    }

    public static boolean TKC(sU sUVar) {
        return sUVar != null && sUVar.sdp() == 3 && sUVar.zR() == 38 && sUVar.liH() == 1;
    }

    private void TzV() {
        if (EjP()) {
            this.wE.setVisibility(0);
            ObjectAnimator duration = ObjectAnimator.ofFloat(this.ley, "translationY", 16.0f, 0.0f).setDuration(500L);
            this.uA = duration;
            duration.setRepeatMode(2);
            this.uA.setRepeatCount(-1);
            this.uA.start();
            this.wE.setClickable(true);
            this.wE.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.5
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (!TzV.this.Ei) {
                        TzV.this.sef.onTouch(view, motionEvent);
                    }
                    if (motionEvent.getAction() != 3 && motionEvent.getAction() != 1) {
                        return false;
                    }
                    TzV.this.TEQ = ObjectAnimator.ofFloat(this, "timeSlide", 0.0f, 1.0f);
                    TzV.this.TEQ.setDuration(200L);
                    TzV.this.TEQ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.5.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) TzV.this.kF.getLayoutParams();
                            layoutParams.weight = (float) (((double) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 2.07f)) + 0.25d);
                            TzV.this.Sj((float) (0.800000011920929d - (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 0.5d)));
                            TzV.this.kF.setLayoutParams(layoutParams);
                        }
                    });
                    if (TzV.this.sef.Jcg()) {
                        TzV.this.wE.performClick();
                        TzV.this.Ei = true;
                    }
                    TzV.this.TEQ.start();
                    TzV.this.wE.setVisibility(8);
                    return true;
                }
            });
            this.wE.setOnClickListener(this.sef);
        }
        if (!RiZ()) {
            this.Dq.setVisibility(8);
            this.sP.setVisibility(0);
            this.Sj.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.Sj.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TzV tzV = TzV.this;
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(tzV.Jcg, tzV.JcM);
                }
            });
            sU sUVar = this.Jcg;
            if (sUVar != null && sUVar.Bml() != null && this.Jcg.Bml().size() > 0 && this.Jcg.Bml().get(0) != null && !TextUtils.isEmpty(this.Jcg.Bml().get(0).Sj())) {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.Jcg.Bml().get(0), this.Sj, this.Jcg, new com.bytedance.sdk.component.HiB.uvD<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.7
                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(int i11, String str, @Nullable Throwable th2) {
                        if (TzV.this.Zq != null) {
                            TzV.this.Zq.removeMessages(101);
                        }
                        TzV.this.TEQ();
                    }

                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
                        if (TzV.this.Zq != null) {
                            TzV.this.Zq.removeMessages(101);
                        }
                    }
                });
            }
        }
        try {
            String strSj = this.Jcg.Bml().get(0).Sj();
            com.bytedance.sdk.openadsdk.uA.EjP.Sj().Sj(strSj).Sj(this.Jcg.Bml().get(0).sP()).sP(this.Jcg.Bml().get(0).TKC()).HiB(FPG.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj())).EjP(FPG.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj())).TKC(2).Sj(new Sj()).Sj(new com.bytedance.sdk.openadsdk.uA.sP(this.Jcg, strSj, new com.bytedance.sdk.component.HiB.uvD<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.8
                @Override // com.bytedance.sdk.component.HiB.uvD
                public void Sj(int i11, String str, @Nullable Throwable th2) {
                }

                @Override // com.bytedance.sdk.component.HiB.uvD
                public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
                    try {
                        Bitmap bitmapSP = ym2.sP();
                        if (bitmapSP != null && ym2.TKC() != null) {
                            BitmapDrawable bitmapDrawable = new BitmapDrawable(com.bytedance.sdk.openadsdk.core.dNu.Sj().getResources(), bitmapSP);
                            if (!TzV.this.RiZ()) {
                                TzV.this.sP.setBackground(bitmapDrawable);
                                return;
                            }
                            TzV.this.EjP.setBackground(bitmapDrawable);
                            View viewTEQ = TzV.this.WMZ.TEQ();
                            if (viewTEQ == null || !(viewTEQ.getParent() instanceof View)) {
                                return;
                            }
                            ((View) viewTEQ.getParent()).setBackground(bitmapDrawable);
                        }
                    } catch (Exception unused) {
                    }
                }
            }));
        } catch (Exception unused) {
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Ym() {
        com.bytedance.sdk.component.uA.vS vSVar = this.f21069ib;
        if (vSVar != null && vSVar.getWebView() != null) {
            com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()).Sj(false).sP(false).Sj(this.f21069ib.getWebView());
            com.bytedance.sdk.component.uA.vS vSVar2 = this.f21069ib;
            if (vSVar2 != null && vSVar2.getWebView() != null) {
                this.f21072xu = new sP(this.dwU, this.Jcg, this.JcM, this);
                if (this.f21069ib.f_() && (this.f21069ib.getWebViewClient() instanceof com.bytedance.sdk.openadsdk.core.widget.Sj.HiB)) {
                    com.bytedance.sdk.openadsdk.EjP.Ym ymSP = ((com.bytedance.sdk.openadsdk.core.widget.Sj.HiB) this.f21069ib.getWebViewClient()).sP();
                    this.xD = ymSP;
                    if (ymSP != null) {
                        ymSP.Sj(this.f21072xu);
                        this.xD.sP(true);
                    }
                } else {
                    this.xD = new com.bytedance.sdk.openadsdk.EjP.Ym(this.Jcg, this.f21069ib.getWebView(), this.f21072xu, this.sdp).sP(true);
                }
                this.xD.Sj(this.JcM);
                com.bytedance.sdk.openadsdk.common.EjP ejPSj = Mts.Sj(this.Jcg, this.f21069ib, this.fF, this.JcM);
                this.MuB = ejPSj;
                if (ejPSj != null) {
                    ejPSj.Sj(this.JcM);
                }
                Mts.Sj(this.Jcg, this.f21069ib);
            }
            aa();
            if (this.f21069ib.f_()) {
                sU();
            }
            this.f21069ib.setLandingPage(true);
            this.f21069ib.setTag(this.JcM);
            this.f21069ib.setMaterialMeta(this.Jcg.hif());
            com.bytedance.sdk.openadsdk.core.widget.Sj.HiB hiB = new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj(), this.zR, this.Jcg.aZ(), this.MuB, this.xD, true) { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.12
                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    TzV.this.Fmk();
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    super.onPageStarted(webView, str, bitmap);
                    TzV.this.WMZ.Ym();
                    TzV.this.Yf = System.currentTimeMillis();
                    if (!TzV.sP(TzV.this.Jcg) || TzV.this.Zq == null || sU.HiB(TzV.this.Jcg)) {
                        return;
                    }
                    TzV.this.Zq.sendEmptyMessageDelayed(101, 2000L);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i11, String str, String str2) {
                    super.onReceivedError(webView, i11, str, str2);
                    String strEjP = com.bytedance.sdk.openadsdk.core.widget.Sj.HiB.EjP(str2);
                    boolean z10 = false;
                    if (this.vS != null) {
                        this.vS.Sj(webView, i11, str, str2, com.bytedance.sdk.openadsdk.core.widget.Sj.HiB.EjP(str2), (webView == null || str2 == null || !str2.equals(webView.getUrl())) ? false : true);
                    }
                    boolean z11 = strEjP != null && strEjP.startsWith("image");
                    if (strEjP != null && strEjP.startsWith("mp4")) {
                        z10 = true;
                    }
                    if (z11 || z10 || TzV.this.LD.get()) {
                        return;
                    }
                    TzV.this.Zq();
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                    if (sslErrorHandler != null) {
                        TzV.this.Zq();
                    }
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (TextUtils.isEmpty(TzV.this.xhi)) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        TzV.aa(TzV.this);
                        WebResourceResponseModel webResourceResponseModelSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(TzV.this.f21067db, TzV.this.xhi, str);
                        if (webResourceResponseModelSj != null && webResourceResponseModelSj.getWebResourceResponse() != null) {
                            TzV.sef(TzV.this);
                            return webResourceResponseModelSj.getWebResourceResponse();
                        }
                        if (webResourceResponseModelSj != null && webResourceResponseModelSj.getMsg() == 2) {
                            TzV.Zq(TzV.this);
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.Sj("LandingPageModel", "shouldInterceptRequest url error", th2);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (!TzV.TKC(TzV.this.Jcg) || Mts.Sj(webView) != 1) {
                        return super.shouldOverrideUrlLoading(webView, str);
                    }
                    Intent intent = new Intent(TzV.this.fF, (Class<?>) TTCeilingLandingPageActivity.class);
                    intent.putExtra("second_url", str);
                    com.bytedance.sdk.openadsdk.core.kF.Sj().vS();
                    com.bytedance.sdk.openadsdk.core.kF.Sj().Sj(TzV.this.Jcg);
                    com.bytedance.sdk.component.utils.sP.Sj(this.EjP, intent, null);
                    return true;
                }
            };
            this.HpB = hiB;
            this.f21069ib.setWebViewClient(hiB);
            this.HpB.Sj(this.Jcg);
            this.HpB.Sj(this.JcM);
            this.f21069ib.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.zR, this.xD, this.MuB) { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.13
                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i11) {
                    super.onProgressChanged(webView, i11);
                    if (TzV.this.fF != null && !TzV.this.fF.isFinishing() && i11 == 100) {
                        TzV.this.Fmk();
                    }
                    if (TzV.this.uP != null) {
                        TzV.this.uP.Sj(i11);
                    }
                }
            });
            if (this.Wjd == null) {
                this.Wjd = com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), this.Jcg, this.JcM);
            }
            this.f21069ib.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.14
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j11) {
                    if (TzV.this.Wjd != null) {
                        TzV.this.Wjd.EjP();
                    }
                }
            });
            com.bytedance.sdk.component.uA.vS vSVar3 = this.f21069ib;
            vSVar3.setUserAgentString(com.bytedance.sdk.openadsdk.utils.TzV.Sj(vSVar3.getWebView(), BuildConfig.VERSION_CODE));
            this.f21069ib.setMixedContentMode(0);
            this.f21069ib.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.15
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i11, int i12, int i13, int i14) {
                    if (TzV.this.xD != null) {
                        TzV.this.xD.sP(i12);
                    }
                }
            });
            this.f21069ib.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.16
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (TzV.this.uA()) {
                        int action = motionEvent.getAction();
                        if (action == 0) {
                            TzV.this.gY = motionEvent.getY();
                        } else if (action == 1) {
                            if (FPG.Sj(TzV.this.gY, motionEvent.getY(), TzV.this.fF)) {
                                TzV.this.Sj(5);
                            }
                        } else if (action == 2) {
                            motionEvent.setAction(3);
                        }
                    }
                    if ((!TzV.this.Ei || TzV.Dq(TzV.this.Jcg)) && !TzV.HiB(TzV.this.Jcg)) {
                        TzV.this.sef.onTouch(view, motionEvent);
                    }
                    if ((!TzV.this.Ei || TzV.Dq(TzV.this.Jcg)) && !TzV.HiB(TzV.this.Jcg) && motionEvent.getAction() == 1 && TzV.this.sef.Jcg()) {
                        TzV.this.f21069ib.getWebView().performClick();
                        TzV.this.Ei = true;
                    }
                    if (TzV.this.xD != null) {
                        TzV.this.xD.Sj(motionEvent);
                    }
                    if (TzV.this.MuB == null) {
                        return false;
                    }
                    TzV.this.MuB.Sj(motionEvent);
                    return false;
                }
            });
            this.f21069ib.getWebView().setOnClickListener(this.sef);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.Jcg, this.JcM, this.sdp);
            if (!this.f21069ib.f_()) {
                com.bytedance.sdk.openadsdk.utils.sU.Sj(this.f21069ib, this.Jcg.Chv());
            }
            this.Fm = true;
        }
        com.bytedance.sdk.component.uA.vS vSVar4 = this.f21069ib;
        if (vSVar4 == null || this.uP == null || vSVar4.TKC()) {
            return;
        }
        this.uP.Sj();
    }

    static /* synthetic */ int Zq(TzV tzV) {
        int i11 = tzV.UHs;
        tzV.UHs = i11 + 1;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void Zq() {
        LinearLayout.LayoutParams layoutParams;
        if (this.LD.get()) {
            return;
        }
        uvD();
        this.f21070jb.set(true);
        this.WMZ.Dq();
        com.bytedance.sdk.openadsdk.common.aa aaVar = this.uP;
        if (aaVar != null) {
            aaVar.sP();
        }
        if (HiB(this.Jcg)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), this.Jcg, this.JcM, "show_agg_backup");
            View view = this.dNu;
            if (view != null) {
                view.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.dNu.getLayoutParams();
                layoutParams2.addRule(13);
                layoutParams2.addRule(10, 0);
                this.dNu.setLayoutParams(layoutParams2);
                RelativeLayout relativeLayout = this.vS;
                if (relativeLayout != null) {
                    relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        this.uvD.setVisibility(0);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.uvD.getLayoutParams();
        layoutParams3.addRule(13);
        layoutParams3.addRule(10, 0);
        this.uvD.setLayoutParams(layoutParams3);
        if (this.Jcg.EZ() != null && !TextUtils.isEmpty(this.Jcg.EZ().Sj())) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.Jcg.EZ().Sj(), this.Jcg.EZ().sP(), this.Jcg.EZ().TKC(), this.sU, this.Jcg);
        }
        this.TzV.setText(this.Jcg.dwU());
        this.RiZ.setText(this.Jcg.gR());
        if (this.f21068dx != null) {
            sP();
            this.f21068dx.setClickable(true);
            this.f21068dx.setOnClickListener(this.Fmk);
            this.f21068dx.setOnTouchListener(this.Fmk);
        }
        if (!TKC(this.Jcg) || (layoutParams = this.cX) == null) {
            return;
        }
        if (layoutParams.weight < 30.0f) {
            TKC(8);
        } else {
            TKC(0);
        }
    }

    static /* synthetic */ int aa(TzV tzV) {
        int i11 = tzV.ndK;
        tzV.ndK = i11 + 1;
        return i11;
    }

    private void aa() {
        com.bytedance.sdk.openadsdk.core.Yf yf2 = new com.bytedance.sdk.openadsdk.core.Yf(this.fF);
        this.zR = yf2;
        yf2.sP(this.f21069ib).TKC(this.Jcg.aZ()).EjP(this.Jcg.mZN()).Sj(this.Jcg).sP(HiB(this.Jcg) ? this.FPG : -1).Sj(this.Jcg.HpB()).sP(this.JcM).HiB(this.Jcg.Lip()).Sj(this.f21069ib).Sj(new com.bytedance.sdk.openadsdk.core.widget.HiB() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.17
            @Override // com.bytedance.sdk.openadsdk.core.widget.HiB
            public void Sj() {
                if (TzV.HiB(TzV.this.Jcg) && (TzV.this.fF instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.sP)) {
                    ((com.bytedance.sdk.openadsdk.core.aa.EjP.sP) TzV.this.fF).c_();
                } else if (TzV.this.HpB != null) {
                    TzV.this.HpB.TKC();
                }
            }
        });
    }

    private void dNu() {
        com.bytedance.sdk.openadsdk.common.Ym loadingStyle;
        com.bytedance.sdk.openadsdk.common.aa aaVar = this.uP;
        if (aaVar != null && (loadingStyle = aaVar.getLoadingStyle()) != null) {
            this.Bml = loadingStyle.sP();
            this.aNB = loadingStyle.TKC();
        }
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = this.IOh;
        if (ejP != null) {
            ejP.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TzV.this.IOh.getTag() != null) {
                        if (TzV.this.IOh.getTag().equals(1)) {
                            TzV.this.Sj(3);
                        } else if (TzV.this.IOh.getTag().equals(2)) {
                            TzV.this.Sj(4);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sP(int i11) {
        return i11 == 1 || i11 == 2 || i11 == 4 || i11 == 5;
    }

    public static boolean sP(sU sUVar) {
        return sUVar != null && sUVar.sdp() == 3 && sUVar.dx() == 6 && !uP.sP(sUVar) && sUVar.liH() == 1 && (sUVar.tY() == 0.0f || sUVar.tY() == 100.0f);
    }

    private void sU() {
        com.bytedance.sdk.component.uA.vS vSVar = this.f21069ib;
        if (vSVar == null || vSVar.getWebView() == null) {
            return;
        }
        this.ndK = this.f21069ib.Sj;
        this.qRN = this.f21069ib.sP;
        this.UHs = this.f21069ib.TKC;
        if (this.f21069ib.sP()) {
            this.WMZ.Ym();
            this.Yf = System.currentTimeMillis();
        }
        if (this.f21069ib.EjP()) {
            Fmk();
        }
        if (this.f21069ib.TKC()) {
            Fmk();
            int iSj = Mts.Sj(this.f21069ib.getWebView());
            sP sPVar = this.f21072xu;
            if (sPVar != null) {
                sPVar.Sj(iSj != 1 ? 0 : 1);
            }
        }
    }

    static /* synthetic */ int sef(TzV tzV) {
        int i11 = tzV.qRN;
        tzV.qRN = i11 + 1;
        return i11;
    }

    private void sef() {
        this.vS.setVisibility(8);
        if (EjP(this.Jcg) || HiB(this.Jcg) || !EjP() || TKC(this.Jcg)) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "timeVisible", 0.0f, 1.0f);
        this.Ym = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(100L);
        this.Ym.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.18
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) TzV.this.kF.getLayoutParams();
                layoutParams.weight = (float) (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 0.25d);
                TzV.this.Sj((float) (1.0d - (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 0.2d)));
                TzV.this.kF.setLayoutParams(layoutParams);
            }
        });
        this.Ym.start();
    }

    public static boolean uA(sU sUVar) {
        return sUVar != null && sUVar.dx() == 19;
    }

    private void uvD() {
        if ((EjP(this.Jcg) || HiB(this.Jcg)) && (this.fF instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.sP)) {
            this.WMZ.Ym();
            this.WMZ.aa();
        }
    }

    public static boolean vS(sU sUVar) {
        return EjP(sUVar) && !uA(sUVar);
    }

    public void Dq() {
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.xD;
        if (ym2 != null) {
            ym2.Dq();
        }
    }

    public boolean EjP() {
        return this.Jcg.HcZ() == 15 || this.Jcg.HcZ() == 16;
    }

    public void HiB() {
        FrameLayout frameLayout = this.kF;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
            View view = this.LqL;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public void Jcg() {
        com.bytedance.sdk.openadsdk.core.Yf yf2 = this.zR;
        if (yf2 != null) {
            yf2.Ym();
        }
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.xD;
        if (ym2 != null) {
            ym2.Jcg();
        }
    }

    public void Sj() {
        View view;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.sdk.component.uA.vS vSVar = (com.bytedance.sdk.component.uA.vS) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21130dx);
        this.f21069ib = vSVar;
        if (vSVar == null || sU.Sj(this.Jcg)) {
            FPG.Sj((View) this.f21069ib, 8);
        } else if (!this.f21069ib.f_()) {
            this.f21069ib.HiB();
        }
        this.kF = (FrameLayout) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.sU);
        this.uP = (com.bytedance.sdk.openadsdk.common.aa) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.uP);
        this.wE = this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.zR);
        this.ley = (ImageView) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21132ib);
        this.LqL = this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.WMZ);
        this.sP = (FrameLayout) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.TzV);
        this.Sj = (ImageView) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.RiZ);
        this.vS = (RelativeLayout) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.kF);
        this.TKC = (TextView) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21139yr);
        this.EjP = (FrameLayout) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.TEQ);
        View viewFindViewById = this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.wE);
        this.uvD = viewFindViewById;
        if (viewFindViewById == null) {
            this.uvD = this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.FPG);
        }
        this.dNu = this.fF.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.ley);
        this.TzV = (TextView) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.Yf);
        this.RiZ = (TextView) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.LD);
        this.sU = (com.bytedance.sdk.openadsdk.core.widget.uvD) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.LqL);
        this.f21068dx = (TextView) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.fF);
        if (this.TKC != null && this.Jcg.Fmk() != null) {
            this.TKC.setText(this.Jcg.Fmk().HiB());
        }
        this.HiB = this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.JcM);
        this.IOh = (com.bytedance.sdk.openadsdk.core.HiB.EjP) this.Mts.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.XgY);
        if ((EjP(this.Jcg) || sP(this.Jcg) || HiB(this.Jcg) || TKC(this.Jcg)) && this.Jcg.Fmk() != null) {
            View view2 = this.HiB;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            com.bytedance.sdk.openadsdk.core.sef.TKC().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.11
                @Override // java.lang.Runnable
                public void run() {
                    if (TzV.this.LD.get()) {
                        return;
                    }
                    TzV tzV = TzV.this;
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(tzV.Jcg, tzV.JcM, System.currentTimeMillis() - TzV.this.Yf, false);
                    TzV.this.Zq();
                }
            }, (HiB(this.Jcg) ? this.Jcg.Fmk().TKC() : this.Jcg.Fmk().Sj()) * 1000);
        }
        Ym();
        if (sP(this.Jcg)) {
            TzV();
            if (!EjP()) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.kF.getLayoutParams();
                layoutParams.weight = 2.33f;
                this.kF.setLayoutParams(layoutParams);
            }
        }
        if ((EjP(this.Jcg) || HiB(this.Jcg)) && (view = this.LqL) != null) {
            view.setVisibility(8);
        }
        com.bytedance.sdk.openadsdk.common.aa aaVar = this.uP;
        if (aaVar != null) {
            aaVar.Sj(this.Jcg);
        }
        if (TKC(this.Jcg)) {
            dNu();
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(SystemClock.elapsedRealtime() - jElapsedRealtime, this.Jcg, this.JcM, this.f21067db, this.xhi);
    }

    public void Sj(float f11) {
        try {
            this.WMZ.uA();
        } catch (Throwable unused) {
        }
    }

    public void Sj(int i11) {
        com.bytedance.sdk.openadsdk.core.Dq.RiZ riZ = this.pfr;
        if (riZ != null) {
            riZ.HiB(i11);
        }
    }

    public void Sj(final int i11, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        float f11;
        int iVS;
        if (i11 == 3 || sP(i11)) {
            if (this.EZ == null || sefVar == null) {
                return;
            }
            AtomicBoolean atomicBoolean = this.Chv;
            if (atomicBoolean != null) {
                if (i11 == 1) {
                    return;
                }
                if (i11 == 5 && atomicBoolean.get()) {
                    return;
                }
            }
            final LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.LqL.getLayoutParams();
            this.cX = (LinearLayout.LayoutParams) this.kF.getLayoutParams();
            final float f12 = layoutParams.weight;
            dNu dnuSef = this.Jcg.sef();
            if (sP(i11)) {
                if (dnuSef != null) {
                    iVS = dnuSef.HiB();
                    f11 = iVS;
                } else {
                    f11 = 30.0f;
                }
            } else if (dnuSef != null) {
                iVS = dnuSef.vS();
                f11 = iVS;
            } else {
                f11 = 70.0f;
            }
            final float f13 = f11;
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.EZ.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            }
            final FrameLayout.LayoutParams layoutParams3 = layoutParams2;
            final int i12 = layoutParams3.height;
            final int i13 = layoutParams3.width;
            final int i14 = layoutParams3.leftMargin;
            final int i15 = layoutParams3.topMargin;
            final int iSP = FPG.sP(this.fF, (float) sefVar.Dq());
            final int iSP2 = FPG.sP(this.fF, (float) sefVar.uA());
            final int iSP3 = FPG.sP(this.fF, (float) sefVar.vS());
            final int iSP4 = FPG.sP(this.fF, (float) sefVar.Jcg());
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.TEQ = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(500L);
            this.TEQ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    LinearLayout.LayoutParams layoutParams4 = layoutParams;
                    float f14 = f12;
                    layoutParams4.weight = f14 + ((f13 - f14) * fFloatValue);
                    TzV.this.cX.weight = 100.0f - layoutParams.weight;
                    if (TzV.this.LqL != null) {
                        TzV.this.LqL.setLayoutParams(layoutParams);
                    }
                    if (TzV.this.kF != null) {
                        TzV.this.kF.setLayoutParams(TzV.this.cX);
                    }
                    if (TzV.this.cX.weight < 30.0f) {
                        TzV.this.TKC(8);
                    } else {
                        TzV.this.TKC(0);
                    }
                    FrameLayout.LayoutParams layoutParams5 = layoutParams3;
                    int i16 = i13;
                    layoutParams5.width = i16 + ((int) ((iSP - i16) * fFloatValue));
                    int i17 = i12;
                    layoutParams5.height = i17 + ((int) ((iSP2 - i17) * fFloatValue));
                    int i18 = i14;
                    layoutParams5.leftMargin = i18 + ((int) ((iSP3 - i18) * fFloatValue));
                    int i19 = i15;
                    layoutParams5.topMargin = i19 + ((int) ((iSP4 - i19) * fFloatValue));
                    if (TzV.this.EZ != null) {
                        TzV.this.EZ.setLayoutParams(layoutParams3);
                    }
                    TzV.this.Sj(0.0f);
                    if (fFloatValue == 1.0f) {
                        if (TzV.this.IOh != null) {
                            FPG.Sj((View) TzV.this.IOh, 0);
                            if (TzV.this.sP(i11)) {
                                TzV.this.IOh.setImageDrawable(com.bytedance.sdk.component.utils.ib.TKC(TzV.this.fF, "tt_ad_zoom_down"));
                                TzV.this.IOh.setTag(1);
                            } else {
                                TzV.this.IOh.setImageDrawable(com.bytedance.sdk.component.utils.ib.TKC(TzV.this.fF, "tt_ad_zoom_up"));
                                TzV.this.IOh.setTag(2);
                            }
                        }
                        if (TzV.this.Chv == null) {
                            TzV.this.Chv = new AtomicBoolean();
                        }
                        TzV.this.Chv.set(TzV.this.sP(i11));
                    }
                }
            });
            com.bytedance.sdk.openadsdk.EjP.TKC.EjP(this.Jcg, this.JcM, i11);
            this.TEQ.start();
            if (this.f21071kb.compareAndSet(false, true)) {
                this.Uc = SystemClock.elapsedRealtime();
            }
            com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.xD;
            if (ym2 != null) {
                ym2.Sj(true, SystemClock.elapsedRealtime());
            }
            FPG.Sj((View) this.IOh, 8);
        }
    }

    public void Sj(@NonNull com.bytedance.sdk.openadsdk.core.Dq.RiZ riZ, FrameLayout frameLayout) {
        this.pfr = riZ;
        this.EZ = frameLayout;
    }

    public void Sj(b.InterfaceC0935b interfaceC0935b) {
        this.f21066aa = interfaceC0935b;
    }

    public void TEQ() {
        if ("landingpage_split_screen".equals(this.JcM) && com.bytedance.sdk.openadsdk.dx.Sj.Sj("default_split_style", false) && this.Ir.compareAndSet(false, true)) {
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.10
                @Override // java.lang.Runnable
                public void run() {
                    TzV.this.gR = ValueAnimator.ofFloat(1.0f, 0.0f);
                    TzV.this.gR.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.10.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            if (TzV.this.LqL != null) {
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) TzV.this.LqL.getLayoutParams();
                                layoutParams.weight = fFloatValue;
                                TzV.this.LqL.setLayoutParams(layoutParams);
                            }
                        }
                    });
                    TzV.this.gR.setDuration(500L);
                    TzV.this.gR.start();
                    if (TzV.this.wE != null) {
                        TzV.this.wE.setVisibility(8);
                    }
                }
            });
        }
    }

    public void TKC() {
        if (RiZ()) {
            try {
                String strR = this.Jcg.UHs().r();
                com.bytedance.sdk.openadsdk.uA.EjP.Sj().Sj(strR).Sj(this.Jcg.UHs().t()).sP(this.Jcg.UHs().C()).HiB(FPG.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj())).EjP(FPG.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj())).TKC(2).Sj(new Sj()).Sj(new com.bytedance.sdk.openadsdk.uA.sP(this.Jcg, strR, new com.bytedance.sdk.component.HiB.uvD<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.model.TzV.4
                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(int i11, String str, @Nullable Throwable th2) {
                    }

                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
                        try {
                            Bitmap bitmapSP = ym2.sP();
                            if (bitmapSP != null && ym2.TKC() != null) {
                                BitmapDrawable bitmapDrawable = new BitmapDrawable(com.bytedance.sdk.openadsdk.core.dNu.Sj().getResources(), bitmapSP);
                                View viewTEQ = TzV.this.WMZ.TEQ();
                                if (viewTEQ == null || !(viewTEQ.getParent() instanceof View)) {
                                    return;
                                }
                                ((View) viewTEQ.getParent()).setBackground(bitmapDrawable);
                            }
                        } catch (Throwable th2) {
                            com.bytedance.sdk.component.utils.sU.sP("LandingPageModel", th2.getMessage());
                        }
                    }
                }));
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        long jEjP;
        sU sUVar;
        sU sUVar2;
        int i11 = message.what;
        if (i11 == 100) {
            int i12 = message.arg1;
            if (!EjP(this.Jcg) || (sUVar2 = this.Jcg) == null || sUVar2.Fmk() == null) {
                jEjP = (!HiB(this.Jcg) || (sUVar = this.Jcg) == null || sUVar.Fmk() == null) ? 20L : this.Jcg.Fmk().EjP();
            } else {
                jEjP = this.Jcg.Fmk().sP();
            }
            b.InterfaceC0935b interfaceC0935b = this.f21066aa;
            if (interfaceC0935b != null) {
                interfaceC0935b.Sj(((long) i12) * 1000, jEjP * 1000);
            }
            long j11 = i12;
            if (j11 >= jEjP) {
                b.InterfaceC0935b interfaceC0935b2 = this.f21066aa;
                if (interfaceC0935b2 != null) {
                    interfaceC0935b2.Sj(jEjP * 1000, 100);
                }
            } else if (j11 < jEjP && this.Zq != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 100;
                messageObtain.arg1 = i12 + 1;
                this.Zq.sendMessageDelayed(messageObtain, 1000L);
            }
        } else if (i11 == 101) {
            TEQ();
        }
        return true;
    }

    protected void sP() {
        sU sUVar = this.Jcg;
        if (sUVar == null || TextUtils.isEmpty(sUVar.Ir())) {
            return;
        }
        this.f21068dx.setText(this.Jcg.Ir());
    }

    public boolean uA() {
        AtomicBoolean atomicBoolean;
        return (!TKC(this.Jcg) || (atomicBoolean = this.Chv) == null || atomicBoolean.get()) ? false : true;
    }

    public void vS() {
        com.bytedance.sdk.component.uA.vS vSVar;
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.xD;
        if (ym2 != null && (vSVar = this.f21069ib) != null) {
            ym2.Sj(vSVar);
        }
        Handler handler = this.Zq;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        ValueAnimator valueAnimator = this.gR;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.gR.cancel();
        }
        ValueAnimator valueAnimator2 = this.TEQ;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllUpdateListeners();
            this.TEQ.cancel();
        }
        ObjectAnimator objectAnimator = this.Ym;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.Ym.cancel();
        }
        com.bytedance.sdk.openadsdk.common.aa aaVar = this.uP;
        if (aaVar != null) {
            aaVar.sP();
        }
        ObjectAnimator objectAnimator2 = this.uA;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        com.bytedance.sdk.component.uA.vS vSVar2 = this.f21069ib;
        if (vSVar2 != null) {
            com.bytedance.sdk.openadsdk.core.JcM.Sj(vSVar2.getWebView());
        }
        this.f21069ib = null;
        com.bytedance.sdk.openadsdk.core.Yf yf2 = this.zR;
        if (yf2 != null) {
            yf2.aa();
        }
        com.bytedance.sdk.openadsdk.EjP.Ym ym3 = this.xD;
        if (ym3 != null) {
            ym3.EjP(true);
        }
        if (!TextUtils.isEmpty(this.xhi) && this.Fm) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(this.qRN, this.ndK, this.Jcg);
        }
        com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.f21067db);
    }
}
