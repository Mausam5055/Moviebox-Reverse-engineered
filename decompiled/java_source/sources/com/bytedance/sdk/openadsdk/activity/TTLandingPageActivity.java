package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.TEQ;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.Zq;
import com.bytedance.sdk.openadsdk.common.aa;
import com.bytedance.sdk.openadsdk.common.sef;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Dq;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.TzV;
import com.cloud.tmc.integration.event.EventConstants;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TTLandingPageActivity extends TTBaseActivity {
    private ImageView Dq;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.HiB FPG;
    private com.bytedance.sdk.openadsdk.core.HiB.vS Fmk;
    private Fmk JcM;
    private aa LD;
    private int LqL;
    private com.bytedance.sdk.openadsdk.common.EjP Mts;
    private sU RiZ;
    Ym Sj;
    private Context TEQ;
    TTAdDislikeToast TKC;
    private String TzV;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj WMZ;
    private sef Ym;
    private String Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private Button f20958aa;
    private int dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private String f20959dx;
    private boolean fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private String f20960ib;
    private ILoader kF;
    private int ley;
    Zq sP;
    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS sU;
    private String sef;
    private TextView uA;
    private Yf uvD;
    private com.bytedance.sdk.component.uA.vS vS;
    private final AtomicBoolean zR = new AtomicBoolean(true);
    private final AtomicInteger uP = new AtomicInteger(0);
    private final AtomicInteger wE = new AtomicInteger(0);
    private final AtomicInteger Yf = new AtomicInteger(0);
    final AtomicBoolean EjP = new AtomicBoolean(false);
    final AtomicBoolean HiB = new AtomicBoolean(false);
    private String Wjd = "ダウンロード";

    public static class Sj implements TEQ {
        private final WeakReference<TTLandingPageActivity> EjP;
        private final int Sj;
        private final String TKC;
        private final sU sP;

        public Sj(int i11, sU sUVar, String str, TTLandingPageActivity tTLandingPageActivity) {
            this.Sj = i11;
            this.sP = sUVar;
            this.TKC = str;
            this.EjP = new WeakReference<>(tTLandingPageActivity);
        }

        @Override // com.bytedance.sdk.openadsdk.EjP.TEQ
        public void Sj(int i11) {
            TTLandingPageActivity tTLandingPageActivity = this.EjP.get();
            if (tTLandingPageActivity != null) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(this.Sj, tTLandingPageActivity.wE.get(), tTLandingPageActivity.Yf.get(), tTLandingPageActivity.uP.get() - tTLandingPageActivity.Yf.get(), this.sP, this.TKC, i11);
            }
        }
    }

    private static class TKC implements View.OnTouchListener {
        private final WeakReference<Ym> Sj;
        private final WeakReference<com.bytedance.sdk.openadsdk.common.EjP> sP;

        public TKC(Ym ym2, com.bytedance.sdk.openadsdk.common.EjP ejP) {
            this.Sj = new WeakReference<>(ym2);
            this.sP = new WeakReference<>(ejP);
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            Ym ym2 = this.Sj.get();
            if (ym2 != null) {
                ym2.Sj(motionEvent);
            }
            com.bytedance.sdk.openadsdk.common.EjP ejP = this.sP.get();
            if (ejP == null) {
                return false;
            }
            ejP.Sj(motionEvent);
            return false;
        }
    }

    private static class sP implements View.OnScrollChangeListener {
        private final WeakReference<Ym> Sj;

        public sP(Ym ym2) {
            this.Sj = new WeakReference<>(ym2);
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(View view, int i11, int i12, int i13, int i14) {
            Ym ym2 = this.Sj.get();
            if (ym2 != null) {
                ym2.sP(i12);
            }
        }
    }

    private void Dq() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", true);
            this.uvD.Sj("temai_back_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    private String EjP() {
        sU sUVar = this.RiZ;
        if (sUVar != null && !TextUtils.isEmpty(sUVar.Ir())) {
            this.Wjd = this.RiZ.Ir();
        }
        return this.Wjd;
    }

    private void HiB() {
        com.bytedance.sdk.component.uA.vS vSVar = (com.bytedance.sdk.component.uA.vS) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21129db);
        this.vS = vSVar;
        Mts.Sj(this.RiZ, vSVar);
        this.Ym = (sef) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.pfr);
        sef sefVar = (sef) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.gY);
        aa aaVar = (aa) findViewById(520093721);
        this.LD = aaVar;
        if (aaVar != null) {
            aaVar.Sj(this.RiZ);
            this.LD.Sj();
        }
        if (sefVar != null) {
            sefVar.setVisibility(0);
        }
        ImageView imageView = (ImageView) findViewById(520093720);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTLandingPageActivity.this.vS != null) {
                        if (TTLandingPageActivity.this.WMZ != null) {
                            TTLandingPageActivity.this.WMZ.Sj();
                        }
                        if (TTLandingPageActivity.this.vS.uA()) {
                            TTLandingPageActivity.this.vS.TEQ();
                        } else if (TTLandingPageActivity.this.Jcg()) {
                            TTLandingPageActivity.this.onBackPressed();
                        } else {
                            TTLandingPageActivity.this.finish();
                        }
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(520093716);
        this.Dq = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.finish();
                }
            });
        }
        this.uA = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.nru);
        com.bytedance.sdk.openadsdk.core.HiB.vS vSVar2 = (com.bytedance.sdk.openadsdk.core.HiB.vS) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.aNB);
        this.Fmk = vSVar2;
        if (vSVar2 != null) {
            vSVar2.setVisibility(0);
        }
        View viewFindViewById = findViewById(com.bytedance.sdk.openadsdk.utils.Zq.HcZ);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.Sj();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Jcg() {
        return !TextUtils.isEmpty(this.f20959dx) && this.f20959dx.contains("__luban_sdk");
    }

    private void Sj(int i11) {
        int i12;
        if (i11 == 1 || (i12 = Build.VERSION.SDK_INT) == 26) {
            return;
        }
        if (i12 != 27) {
            setRequestedOrientation(i11);
        } else {
            try {
                setRequestedOrientation(i11);
            } catch (Throwable unused) {
            }
        }
    }

    private void Sj(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.f20958aa) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.10
            @Override // java.lang.Runnable
            public void run() {
                if (TTLandingPageActivity.this.f20958aa == null || TTLandingPageActivity.this.isFinishing()) {
                    return;
                }
                TTLandingPageActivity.this.f20958aa.setText(str);
            }
        });
    }

    private void TEQ() {
        TTAdDislikeToast tTAdDislikeToast = this.TKC;
        if (tTAdDislikeToast == null) {
            return;
        }
        tTAdDislikeToast.show(TTAdDislikeToast.getDislikeTip());
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void TKC() {
        sU sUVar = this.RiZ;
        if (sUVar == null || sUVar.sdp() != 4) {
            return;
        }
        sef sefVar = this.Ym;
        if (sefVar != null) {
            sefVar.setVisibility(0);
        }
        Button button = (Button) findViewById(com.bytedance.sdk.openadsdk.utils.Zq.mZN);
        this.f20958aa = button;
        if (button != null) {
            Sj(EjP());
            if (this.sU == null) {
                this.sU = Jcg.Sj(this, this.RiZ, TextUtils.isEmpty(this.TzV) ? Mts.sP(this.dNu) : this.TzV);
            }
            com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this, this.RiZ, this.TzV, this.dNu);
            sj2.Sj(false);
            this.f20958aa.setOnClickListener(sj2);
            this.f20958aa.setOnTouchListener(sj2);
            sj2.TKC(true);
            sj2.Sj(this.sU);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Ym() {
        TTAdDislikeToast tTAdDislikeToast;
        if (isFinishing() || (tTAdDislikeToast = this.TKC) == null) {
            return;
        }
        tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
    }

    private View sP() {
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this);
        if (Build.VERSION.SDK_INT >= 35) {
            tkc.setFitsSystemWindows(true);
        }
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(this);
        hiB.setOrientation(1);
        tkc.addView(hiB, new FrameLayout.LayoutParams(-1, -1));
        View sefVar = new sef(this, new sef.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.8
            @Override // com.bytedance.sdk.openadsdk.common.sef.Sj
            public View Sj(Context context) {
                return new com.bytedance.sdk.openadsdk.common.TEQ(context);
            }
        });
        sefVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.gY);
        hiB.addView(sefVar, new LinearLayout.LayoutParams(-1, FPG.sP(this, 44.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        hiB.addView(tkc2, layoutParams);
        com.bytedance.sdk.component.uA.vS vSVar = new com.bytedance.sdk.component.uA.vS(this);
        vSVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21129db);
        tkc2.addView(vSVar, new FrameLayout.LayoutParams(-1, -1));
        sef sefVar2 = new sef(this, new sef.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.9
            @Override // com.bytedance.sdk.openadsdk.common.sef.Sj
            public View Sj(Context context) {
                return new com.bytedance.sdk.openadsdk.common.Jcg(context);
            }
        });
        sefVar2.setId(com.bytedance.sdk.openadsdk.utils.Zq.pfr);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 81;
        tkc2.addView(sefVar2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.vS vSVar2 = new com.bytedance.sdk.openadsdk.core.HiB.vS(this, null, R.style.Widget.ProgressBar.Horizontal);
        vSVar2.setId(com.bytedance.sdk.openadsdk.utils.Zq.aNB);
        vSVar2.setProgress(1);
        vSVar2.setVisibility(8);
        vSVar2.setProgressDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this, "tt_browser_progress_style"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, FPG.sP(this, 3.0f));
        layoutParams3.gravity = 49;
        tkc2.addView(vSVar2, layoutParams3);
        View aaVar = new aa(this);
        aaVar.setId(520093721);
        tkc.addView(aaVar, new FrameLayout.LayoutParams(-1, -1));
        return tkc;
    }

    private void sP(final int i11) {
        if (this.Dq == null || !Jcg()) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.3
            @Override // java.lang.Runnable
            public void run() {
                FPG.Sj((View) TTLandingPageActivity.this.Dq, i11);
            }
        });
    }

    private void uA() {
        try {
            if (this.sP == null) {
                Zq zq2 = new Zq(this.TEQ, this.RiZ);
                this.sP = zq2;
                zq2.setDislikeSource("landing_page");
                this.sP.setCallback(new Zq.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.4
                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void Sj(View view) {
                        TTLandingPageActivity.this.EjP.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void Sj(FilterWord filterWord) {
                        if (TTLandingPageActivity.this.HiB.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TTLandingPageActivity.this.HiB.set(true);
                        TTLandingPageActivity.this.Ym();
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void sP(View view) {
                        TTLandingPageActivity.this.EjP.set(false);
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.addView(this.sP);
            if (this.TKC == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.TEQ);
                this.TKC = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("initDislike error", "LandingPageActivity", th2);
        }
    }

    private void vS() {
        Yf yf2 = new Yf(this);
        this.uvD = yf2;
        yf2.sP(this.vS).TKC(this.sef).EjP(this.Zq).Sj(this.RiZ).sP(this.dNu).Sj(this.RiZ.HpB()).HiB(this.RiZ.Lip()).Sj(this.vS).sP("landingpage");
    }

    protected void Sj() {
        if (isFinishing()) {
            return;
        }
        if (this.HiB.get()) {
            TEQ();
            return;
        }
        if (this.sP == null) {
            uA();
        }
        Zq zq2 = this.sP;
        if (zq2 != null) {
            zq2.Sj();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (Jcg() && !this.zR.getAndSet(true)) {
            Dq();
            sP(0);
        } else {
            try {
                super.onBackPressed();
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("TTAD.LandingPageAct", "onBackPressed: ", th2.getMessage());
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        try {
            super.onConfigurationChanged(configuration);
        } catch (Throwable unused) {
        }
        TKC();
    }

    @Override // android.app.Activity
    @SuppressLint({"ClickableViewAccessibility"})
    protected void onCreate(@Nullable Bundle bundle) {
        Sj(3);
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.sef.HiB()) {
            finish();
            return;
        }
        try {
            dNu.sP(this);
        } catch (Throwable unused) {
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            setContentView(sP());
            Intent intent = getIntent();
            int intExtra = intent.getIntExtra("sdk_version", 1);
            this.sef = intent.getStringExtra("adid");
            this.Zq = intent.getStringExtra("log_extra");
            this.dNu = intent.getIntExtra(EventConstants.KEY_SOURCE, -1);
            String stringExtra = intent.getStringExtra("url");
            this.f20959dx = stringExtra;
            sP(4);
            String stringExtra2 = intent.getStringExtra("web_title");
            this.TzV = intent.getStringExtra("event_tag");
            this.f20960ib = intent.getStringExtra("gecko_id");
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra3 != null) {
                    try {
                        this.RiZ = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(stringExtra3));
                    } catch (Exception e11) {
                        com.bytedance.sdk.component.utils.sU.Sj("TTAD.LandingPageAct", "TTLandingPageActivity - onCreate MultiGlobalInfo : ", e11);
                    }
                }
            } else {
                this.RiZ = kF.Sj().sP();
                kF.Sj().vS();
            }
            if (this.RiZ == null) {
                finish();
                return;
            }
            HiB();
            if (!TextUtils.isEmpty(this.f20960ib)) {
                this.kF = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().sP();
                int iSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.kF, this.f20960ib);
                this.ley = iSj;
                this.LqL = iSj > 0 ? 2 : 0;
            }
            this.TEQ = this;
            if (this.vS != null) {
                com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(this).Sj(false).sP(false).Sj(this.vS.getWebView());
            }
            com.bytedance.sdk.component.uA.vS vSVar = this.vS;
            if (vSVar != null && vSVar.getWebView() != null) {
                Ym ymSP = new Ym(this.RiZ, this.vS.getWebView(), new Sj(this.ley, this.RiZ, "landingpage", this), this.LqL).sP(true);
                this.Sj = ymSP;
                this.WMZ = ymSP.Sj;
                this.Mts = Mts.Sj(this.RiZ, this.vS, this.TEQ, this.TzV);
            }
            vS();
            com.bytedance.sdk.component.uA.vS vSVar2 = this.vS;
            if (vSVar2 != null) {
                vSVar2.setLandingPage(true);
                this.vS.setTag("landingpage");
                this.vS.setMaterialMeta(this.RiZ.hif());
            }
            com.bytedance.sdk.openadsdk.core.widget.Sj.HiB hiB = new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(this.TEQ, this.uvD, this.sef, this.Mts, this.Sj, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.1
                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    try {
                        if (TTLandingPageActivity.this.Fmk != null && !TTLandingPageActivity.this.isFinishing()) {
                            TTLandingPageActivity.this.Fmk.setVisibility(8);
                        }
                    } catch (Throwable unused2) {
                    }
                    if (TTLandingPageActivity.this.LD != null) {
                        TTLandingPageActivity.this.LD.sP();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (TextUtils.isEmpty(TTLandingPageActivity.this.f20960ib)) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        TTLandingPageActivity.this.uP.incrementAndGet();
                        WebResourceResponseModel webResourceResponseModelSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(TTLandingPageActivity.this.kF, TTLandingPageActivity.this.f20960ib, str);
                        if (webResourceResponseModelSj != null && webResourceResponseModelSj.getWebResourceResponse() != null) {
                            TTLandingPageActivity.this.Yf.incrementAndGet();
                            return webResourceResponseModelSj.getWebResourceResponse();
                        }
                        if (webResourceResponseModelSj != null && webResourceResponseModelSj.getMsg() == 2) {
                            TTLandingPageActivity.this.wE.incrementAndGet();
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.Sj("TTAD.LandingPageAct", "shouldInterceptRequest url error", th2);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }
            };
            this.FPG = hiB;
            hiB.Sj(this.RiZ);
            com.bytedance.sdk.component.uA.vS vSVar3 = this.vS;
            if (vSVar3 != null) {
                vSVar3.setWebViewClient(this.FPG);
                com.bytedance.sdk.component.uA.vS vSVar4 = this.vS;
                if (vSVar4 != null) {
                    vSVar4.setUserAgentString(TzV.Sj(vSVar4.getWebView(), intExtra));
                }
                com.bytedance.sdk.component.uA.vS vSVar5 = this.vS;
                if (vSVar5 != null) {
                    vSVar5.setMixedContentMode(0);
                }
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.RiZ, "landingpage", this.LqL);
            com.bytedance.sdk.component.uA.vS vSVar6 = this.vS;
            if (vSVar6 != null) {
                com.bytedance.sdk.openadsdk.utils.sU.Sj(vSVar6, stringExtra);
                this.vS.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.uvD, this.Sj, this.Mts) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.5
                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView, int i11) {
                        super.onProgressChanged(webView, i11);
                        if (TTLandingPageActivity.this.LD != null) {
                            TTLandingPageActivity.this.LD.Sj(i11);
                        }
                        if (TTLandingPageActivity.this.Fmk == null || TTLandingPageActivity.this.isFinishing()) {
                            return;
                        }
                        if (i11 == 100 && TTLandingPageActivity.this.Fmk.isShown()) {
                            TTLandingPageActivity.this.Fmk.setVisibility(8);
                        } else {
                            TTLandingPageActivity.this.Fmk.setProgress(i11);
                        }
                    }
                });
                if (this.vS.getWebView() != null) {
                    this.vS.getWebView().setOnScrollChangeListener(new sP(this.Sj));
                    this.vS.getWebView().setOnTouchListener(new TKC(this.Sj, this.Mts));
                }
                this.vS.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.6
                    @Override // android.webkit.DownloadListener
                    public void onDownloadStart(String str, String str2, String str3, String str4, long j11) {
                        if (TTLandingPageActivity.this.sU != null) {
                            TTLandingPageActivity.this.sU.EjP();
                        }
                    }
                });
            }
            TextView textView = this.uA;
            if (textView != null) {
                if (TextUtils.isEmpty(stringExtra2)) {
                    stringExtra2 = ib.Sj(this, "tt_web_title_default");
                }
                textView.setText(stringExtra2);
            }
            TKC();
            Fmk fmkSj = Dq.Sj(this, new Dq.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.7
                @Override // com.bytedance.sdk.openadsdk.utils.Dq.Sj
                public View Sj() {
                    return TTLandingPageActivity.this.Dq;
                }

                @Override // com.bytedance.sdk.openadsdk.utils.Dq.Sj
                public void sP() {
                }
            });
            this.JcM = fmkSj;
            fmkSj.Sj(0L);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(SystemClock.elapsedRealtime() - jElapsedRealtime, this.RiZ, "landingpage", this.kF, this.f20960ib);
        } catch (Throwable unused2) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        com.bytedance.sdk.component.uA.vS vSVar;
        super.onDestroy();
        Ym ym2 = this.Sj;
        if (ym2 != null && (vSVar = this.vS) != null) {
            ym2.Sj(vSVar);
        }
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.component.uA.vS vSVar2 = this.vS;
        if (vSVar2 != null) {
            com.bytedance.sdk.openadsdk.core.JcM.Sj(vSVar2.getWebView());
        }
        this.vS = null;
        Yf yf2 = this.uvD;
        if (yf2 != null) {
            yf2.aa();
        }
        Ym ym3 = this.Sj;
        if (ym3 != null) {
            ym3.EjP(true);
        }
        if (!TextUtils.isEmpty(this.f20960ib)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(this.Yf.get(), this.uP.get(), this.RiZ);
        }
        com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.kF);
        Fmk fmk = this.JcM;
        if (fmk != null) {
            fmk.TKC();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Fmk fmk = this.JcM;
        if (fmk != null) {
            fmk.sP();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Yf yf2 = this.uvD;
        if (yf2 != null) {
            yf2.Ym();
        }
        Ym ym2 = this.Sj;
        if (ym2 != null) {
            ym2.Jcg();
        }
        if (!this.fF) {
            this.fF = true;
            Sj(4);
        }
        Fmk fmk = this.JcM;
        if (fmk != null) {
            fmk.Sj();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.RiZ);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Ym ym2 = this.Sj;
        if (ym2 != null) {
            ym2.Dq();
        }
    }
}
