package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.Zq;
import com.bytedance.sdk.openadsdk.component.uA.Dq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.ib;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TTAppOpenAdActivity extends TTBaseActivity implements LqL.Sj {
    private static com.bytedance.sdk.openadsdk.Sj.EjP.sP Dq;
    private AdSlot LD;
    private boolean LqL;
    private int RiZ;
    private com.bytedance.sdk.openadsdk.component.vS.sP TEQ;
    private boolean TzV;
    private com.bytedance.sdk.openadsdk.component.TKC Yf;
    private Zq Ym;
    private Jcg Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private TTAdDislikeToast f20953aa;
    private float dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private sU f20954dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.Sj.EjP.sP f20955ib;
    private FrameLayout ley;
    private String sU;
    private int uP;
    private float uvD;
    private int wE;
    private IListenerManager zR;
    protected final AtomicBoolean Sj = new AtomicBoolean(false);
    protected final LqL sP = new LqL(Looper.getMainLooper(), this);
    final AtomicBoolean TKC = new AtomicBoolean(false);
    final AtomicBoolean EjP = new AtomicBoolean(false);
    private final com.bytedance.sdk.openadsdk.component.Dq.Sj uA = new com.bytedance.sdk.openadsdk.component.Dq.Sj();
    protected boolean HiB = false;
    private final AtomicBoolean Fmk = new AtomicBoolean(false);
    private WMZ sef = WMZ.TKC();
    private final AtomicBoolean kF = new AtomicBoolean(false);
    long vS = 0;
    private volatile boolean fF = false;
    private final com.bytedance.sdk.openadsdk.component.Sj JcM = new com.bytedance.sdk.openadsdk.component.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.1
        @Override // com.bytedance.sdk.openadsdk.component.Sj
        public void EjP() {
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj
        public void HiB() {
            TTAppOpenAdActivity.this.RiZ();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj, u5.b.InterfaceC0935b
        public void Sj() {
            TTAppOpenAdActivity.this.sU();
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj, com.bytedance.sdk.openadsdk.component.vS.Sj
        public void Sj(int i11, boolean z10) {
            if (TTAppOpenAdActivity.this.Yf != null) {
                TTAppOpenAdActivity.this.Yf.Sj(i11, z10);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj, u5.b.InterfaceC0935b
        public void Sj(long j11, long j12) {
            TTAppOpenAdActivity.this.uA.Sj(j11);
            TTAppOpenAdActivity tTAppOpenAdActivity = TTAppOpenAdActivity.this;
            if (!tTAppOpenAdActivity.HiB && tTAppOpenAdActivity.Yf != null && TTAppOpenAdActivity.this.Yf.Jcg() != null && TTAppOpenAdActivity.this.Yf.Jcg().EjP()) {
                TTAppOpenAdActivity.this.Yf.Jcg().Jcg();
            }
            TTAppOpenAdActivity.this.Fmk();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj, com.bytedance.sdk.openadsdk.component.vS.Sj
        public void Sj(View view) {
            TTAppOpenAdActivity.this.dx();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj
        public void TKC() {
            TTAppOpenAdActivity.this.vS();
            TTAppOpenAdActivity.this.sef.HiB();
            TTAppOpenAdActivity.this.dNu();
            if (TTAppOpenAdActivity.this.TzV) {
                TTAppOpenAdActivity.this.aa();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj, com.bytedance.sdk.openadsdk.component.vS.Sj
        public void sP() {
            TTAppOpenAdActivity.this.fF = true;
            if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("splash_auto_close_switch", 0) == 0) {
                TTAppOpenAdActivity.this.Jcg();
                TTAppOpenAdActivity.this.finish();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj, u5.b.InterfaceC0935b
        public void sP(long j11, int i11) {
            com.bytedance.sdk.openadsdk.component.Dq.TKC tkcJcg;
            StringBuilder sb2 = new StringBuilder("onError() called with: totalPlayTime = [");
            sb2.append(j11);
            sb2.append("], percent = [");
            sb2.append(i11);
            sb2.append("]");
            if (TTAppOpenAdActivity.this.Yf != null && (tkcJcg = TTAppOpenAdActivity.this.Yf.Jcg()) != null) {
                tkcJcg.Sj(true);
            }
            TTAppOpenAdActivity.this.sU();
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Sj, com.bytedance.sdk.openadsdk.component.vS.Sj
        public void sP(View view) {
            TTAppOpenAdActivity.this.Sj();
        }
    };
    private final Runnable WMZ = new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.5
        @Override // java.lang.Runnable
        public void run() {
            if (TTAppOpenAdActivity.this.Fmk.get()) {
                return;
            }
            if (TTAppOpenAdActivity.this.f20954dx != null && TTAppOpenAdActivity.this.f20954dx.Ph() && TTAppOpenAdActivity.this.f20954dx.GMp() != null && TTAppOpenAdActivity.this.f20954dx.GMp().Sj() != null) {
                TTAppOpenAdActivity.this.f20954dx.GMp().Sj().Sj(0L);
            }
            TTAppOpenAdActivity.this.Zq = new Jcg();
            TTAppOpenAdActivity.this.Zq.Sj(System.currentTimeMillis(), 1.0f);
            TTAppOpenAdActivity.this.sef.HiB();
            if (TTAppOpenAdActivity.this.TEQ != null) {
                TTAppOpenAdActivity.this.TEQ.sP();
            }
            if (TTAppOpenAdActivity.this.Yf != null) {
                TTAppOpenAdActivity.this.Yf.HiB();
            }
            TTAppOpenAdActivity.this.TzV();
            View viewFindViewById = TTAppOpenAdActivity.this.findViewById(R.id.content);
            JSONObject jSONObject = new JSONObject();
            if (viewFindViewById != null) {
                try {
                    jSONObject.put("width", viewFindViewById.getWidth());
                    jSONObject.put("height", viewFindViewById.getHeight());
                    jSONObject.put("alpha", viewFindViewById.getAlpha());
                } catch (JSONException e11) {
                    Log.e("TTAppOpenAdActivity", "run: ", e11);
                    TTAppOpenAdActivity.this.finish();
                    return;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("root_view", jSONObject.toString());
            jSONObject2.put("ad_root", TTAppOpenAdActivity.this.uP);
            jSONObject2.put("openad_creative_type", TTAppOpenAdActivity.this.TzV ? "video_normal_ad" : "image_normal_ad");
            if (Dq.TKC() == null) {
                jSONObject2.put("appicon_acquirefail", "1");
            }
            if (TTAppOpenAdActivity.this.LqL || TTAppOpenAdActivity.this.f20954dx.hzV()) {
                jSONObject2.put("dynamic_show_type", TTAppOpenAdActivity.this.uvD());
                TTAppOpenAdActivity.this.Sj(jSONObject2);
            }
            jSONObject2.put("is_icon_only", TTAppOpenAdActivity.this.f20954dx.yfI() ? 1 : 0);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(TTAppOpenAdActivity.this.f20954dx, "open_ad", jSONObject2);
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(TTAppOpenAdActivity.this.findViewById(R.id.content), TTAppOpenAdActivity.this.f20954dx, new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(TTAppOpenAdActivity.this.uvD()));
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TTAppOpenAdActivity.this.f20954dx);
            TTAppOpenAdActivity.this.Fmk.set(true);
        }
    };

    private void Dq() {
        if (26 != Build.VERSION.SDK_INT) {
            this.wE = this.f20954dx.liH();
        } else if (getResources().getConfiguration().orientation == 1) {
            this.wE = 1;
        } else {
            this.wE = 2;
        }
        uA();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Fmk() {
        if (!this.TzV || this.f20954dx.yfI()) {
            return;
        }
        this.sP.removeMessages(100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Jcg() {
        com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdActivity", "invoke callback onAdDismiss, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdTimeOver");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20955ib;
        if (sPVar != null) {
            sPVar.TKC();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void RiZ() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdClicked");
        } else {
            com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20955ib;
            if (sPVar != null) {
                sPVar.onAdClicked();
            }
        }
        if (Fmk.gq().kF(String.valueOf(this.RiZ))) {
            this.kF.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject Sj(JSONObject jSONObject) {
        if (uvD() == 0) {
            return this.Yf.Sj(jSONObject);
        }
        return null;
    }

    private void Sj(final String str) {
        JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("AppOpenAd_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTAppOpenAdActivity.this.EjP().executeAppOpenAdCallback(TTAppOpenAdActivity.this.sU, str);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", "open_ad", "executeAppOpenAdCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void TEQ() {
        if (this.wE != 2) {
            setRequestedOrientation(1);
        } else if (HiB()) {
            setRequestedOrientation(8);
        } else {
            setRequestedOrientation(0);
        }
        if (this.wE == 2 || !FPG.TKC((Activity) this)) {
            getWindow().addFlags(1024);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TzV() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdShow");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20955ib;
        if (sPVar != null) {
            sPVar.Sj();
        }
    }

    private void Ym() {
        if (this.Ym == null) {
            Zq zq2 = new Zq(this, this.f20954dx);
            this.Ym = zq2;
            zq2.setDislikeSource("video_player");
            this.Ym.setCallback(new Zq.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.4
                @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                public void Sj(View view) {
                    TTAppOpenAdActivity.this.TKC.set(true);
                    TTAppOpenAdActivity.this.TKC();
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TTAppOpenAdActivity.this.f20954dx, 8);
                }

                @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                public void Sj(FilterWord filterWord) {
                    if (TTAppOpenAdActivity.this.EjP.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    TTAppOpenAdActivity.this.EjP.set(true);
                    TTAppOpenAdActivity.this.Zq();
                }

                @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                public void sP(View view) {
                    TTAppOpenAdActivity.this.TKC.set(false);
                    TTAppOpenAdActivity.this.sP();
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TTAppOpenAdActivity.this.f20954dx, 4);
                }
            });
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
        frameLayout.addView(this.Ym);
        if (this.f20953aa == null) {
            TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this);
            this.f20953aa = tTAdDislikeToast;
            frameLayout.addView(tTAdDislikeToast);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Zq() {
        this.f20953aa.show(TTAdDislikeToast.getDislikeSendTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aa() {
        if (!this.TzV || this.f20954dx.yfI() || this.fF) {
            return;
        }
        this.sP.sendEmptyMessageDelayed(100, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dNu() {
        if (this.Fmk.get()) {
            return;
        }
        try {
            getWindow().getDecorView().post(this.WMZ);
        } catch (Throwable unused) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dx() {
        com.bytedance.sdk.openadsdk.component.TKC tkc;
        ib.TKC(this.RiZ);
        sU();
        if (this.TzV && (tkc = this.Yf) != null && tkc.Jcg() != null) {
            this.Yf.Jcg().Sj(4);
        }
        com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(this.f20954dx, (int) this.uA.sP(), this.TEQ.Sj(), this.uA.Sj());
        sU sUVar = this.f20954dx;
        if (sUVar != null && sUVar.Ph() && this.f20954dx.GMp() != null && this.f20954dx.GMp().Sj() != null) {
            com.bytedance.sdk.openadsdk.core.Ym.EjP ejPSj = this.f20954dx.GMp().Sj();
            com.bytedance.sdk.openadsdk.component.TKC tkc2 = this.Yf;
            long jAa = (tkc2 == null || tkc2.Jcg() == null) ? 0L : this.Yf.Jcg().aa();
            ejPSj.vS(jAa);
            ejPSj.HiB(jAa);
        }
        finish();
    }

    private boolean sP(Bundle bundle) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Intent intent = getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.f20954dx = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(stringExtra));
                    } catch (Exception e11) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", "open_ad", "initData MultiGlobalInfo throws ", e11);
                    }
                }
                this.sU = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_META_MD5);
            }
        } else {
            this.f20954dx = kF.Sj().sP();
            this.f20955ib = kF.Sj().HiB();
            kF.Sj().vS();
        }
        Sj(getIntent());
        Sj(bundle);
        sU sUVar = this.f20954dx;
        if (sUVar == null) {
            finish();
            return false;
        }
        this.LD = sUVar.xD();
        this.f20954dx.Sj(this.vS);
        this.RiZ = this.f20954dx.If();
        com.bytedance.sdk.openadsdk.utils.sP.Sj(this.f20954dx);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sU() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdSkip");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20955ib;
        if (sPVar != null) {
            sPVar.sP();
        }
    }

    private void sef() {
        this.f20953aa.show(TTAdDislikeToast.getDislikeTip());
    }

    private void uA() {
        int iMin;
        int iMax;
        new StringBuilder("changeScreenOrientation: mOrientation=").append(this.wE);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 != 26) {
            if (i11 == 27) {
                try {
                    TEQ();
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
                    return;
                }
            } else {
                TEQ();
            }
        }
        Pair<Integer, Integer> pairTEQ = FPG.TEQ(getApplicationContext());
        if (this.wE == 2) {
            iMin = Math.max(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
            iMax = Math.min(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
        } else {
            iMin = Math.min(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
            iMax = Math.max(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
        }
        this.uvD = iMax;
        this.dNu = iMin;
        float fSj = FPG.Sj();
        if (FPG.TKC((Activity) this)) {
            int i12 = this.wE;
            if (i12 == 1) {
                this.uvD -= fSj;
            } else if (i12 == 2) {
                this.dNu -= fSj;
            }
        }
        com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
        if (tkc != null) {
            tkc.Sj(this.dNu, this.uvD);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int uvD() {
        if (this.f20954dx.hzV()) {
            return 5;
        }
        if (this.LqL) {
            return this.Yf.EjP();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vS() {
        sU sUVar = this.f20954dx;
        int iZR = (sUVar == null || sUVar.TKC() < 0) ? dNu.EjP().zR(String.valueOf(this.RiZ)) : this.f20954dx.TKC();
        this.TEQ.Sj(this.uA.Sj());
        this.TEQ.sP(iZR);
    }

    protected IListenerManager EjP() {
        if (this.zR == null) {
            this.zR = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(7));
        }
        return this.zR;
    }

    protected boolean HiB() {
        try {
            return getIntent().getIntExtra("orientation_angle", 0) == 3;
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", e11.getMessage());
            return false;
        }
    }

    protected void Sj() {
        if (isFinishing()) {
            return;
        }
        if (this.EjP.get()) {
            sef();
            return;
        }
        if (this.Ym == null) {
            try {
                Ym();
            } catch (Throwable th2) {
                ApmHelper.reportCustomError("initDislike error", "TTAppOpenAdActivity", th2);
            }
        }
        Zq zq2 = this.Ym;
        if (zq2 != null) {
            zq2.Sj();
        }
    }

    protected void Sj(Intent intent) {
        if (intent != null) {
            this.uP = intent.getIntExtra("ad_source", 0);
            this.vS = intent.getLongExtra("start_show_time", 0L);
        }
    }

    protected void Sj(Bundle bundle) {
        if (bundle != null) {
            if (this.f20955ib == null) {
                this.f20955ib = Dq;
                Dq = null;
            }
            try {
                String string = bundle.getString("material_meta");
                this.sU = bundle.getString(TTAdConstant.MULTI_PROCESS_META_MD5);
                this.uP = bundle.getInt("ad_source", 0);
                this.vS = bundle.getLong("start_show_time", 0L);
                this.f20954dx = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(string));
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        com.bytedance.sdk.openadsdk.component.TKC tkc;
        if (message.what == 100) {
            if (this.TzV && (tkc = this.Yf) != null && tkc.Jcg() != null) {
                this.Yf.Jcg().Sj(1);
            }
            sU();
            finish();
        }
    }

    void TKC() {
        if (this.TzV) {
            com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
            if (tkc != null && tkc.Jcg() != null && this.Yf.Jcg().EjP()) {
                this.Yf.Jcg().Jcg();
            }
            Fmk();
        }
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.EjP();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        FPG.Sj((Activity) this);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.7
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i11) {
                if (i11 == 0) {
                    try {
                        if (TTAppOpenAdActivity.this.isFinishing()) {
                            return;
                        }
                        TTAppOpenAdActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FPG.Sj((Activity) TTAppOpenAdActivity.this);
                            }
                        }, 2500L);
                    } catch (Exception e11) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", e11.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (dNu.EjP().dx(String.valueOf(this.RiZ)) == 1) {
            if (this.uA.sP() >= ((long) dNu.EjP().zR(String.valueOf(this.RiZ))) * 1000) {
                dx();
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        dNu.sP(getApplicationContext());
        if (!sP(bundle)) {
            finish();
            return;
        }
        if (!sef.HiB()) {
            finish();
            return;
        }
        if (bundle != null) {
            com.bytedance.sdk.openadsdk.EjP.TKC.HiB(this.f20954dx, "open_ad", (JSONObject) null);
        }
        this.TzV = sU.HiB(this.f20954dx);
        new StringBuilder("onCreate: isVideo is ").append(this.TzV);
        if (this.TzV) {
            this.uA.Sj((float) this.f20954dx.UHs().K());
        } else {
            this.uA.Sj(dNu.EjP().ib(String.valueOf(this.RiZ)));
        }
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = new com.bytedance.sdk.openadsdk.component.vS.sP(this.uA);
        this.TEQ = sPVar;
        sPVar.Sj(this.JcM);
        Dq();
        FrameLayout frameLayout = new FrameLayout(this);
        this.ley = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        try {
            setContentView(this.ley);
            this.ley.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.2
                /* JADX WARN: Code duplicated, block: B:11:0x0026  */
                @Override // java.lang.Runnable
                public void run() {
                    boolean z10;
                    try {
                        int iFF = TTAppOpenAdActivity.this.f20954dx.fF();
                        TTAppOpenAdActivity tTAppOpenAdActivity = TTAppOpenAdActivity.this;
                        if (tTAppOpenAdActivity.f20954dx == null || TTAppOpenAdActivity.this.f20954dx.ley() != 2) {
                            z10 = false;
                        } else {
                            z10 = true;
                            if (iFF == 1) {
                                z10 = false;
                            }
                        }
                        tTAppOpenAdActivity.LqL = z10;
                        if (TTAppOpenAdActivity.this.LqL) {
                            TTAppOpenAdActivity tTAppOpenAdActivity2 = TTAppOpenAdActivity.this;
                            tTAppOpenAdActivity2.Yf = new com.bytedance.sdk.openadsdk.component.sP(tTAppOpenAdActivity2, tTAppOpenAdActivity2.f20954dx, TTAppOpenAdActivity.this.ley, TTAppOpenAdActivity.this.JcM, TTAppOpenAdActivity.this.wE, TTAppOpenAdActivity.this.TzV, TTAppOpenAdActivity.this.uA, TTAppOpenAdActivity.this.TEQ);
                        } else {
                            TTAppOpenAdActivity tTAppOpenAdActivity3 = TTAppOpenAdActivity.this;
                            tTAppOpenAdActivity3.Yf = new com.bytedance.sdk.openadsdk.component.TKC(tTAppOpenAdActivity3, tTAppOpenAdActivity3.f20954dx, TTAppOpenAdActivity.this.ley, TTAppOpenAdActivity.this.JcM, TTAppOpenAdActivity.this.wE, TTAppOpenAdActivity.this.TzV, TTAppOpenAdActivity.this.uA);
                            TTAppOpenAdActivity.this.Yf.Sj(TTAppOpenAdActivity.this.dNu, TTAppOpenAdActivity.this.uvD);
                        }
                        TTAppOpenAdActivity.this.Yf.Sj((ViewGroup) TTAppOpenAdActivity.this.ley);
                        TTAppOpenAdActivity.this.Yf.Sj();
                        TTAppOpenAdActivity.this.Yf.sP();
                    } catch (Throwable th2) {
                        TTAppOpenAdActivity.this.finish();
                        com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
                    }
                }
            });
            try {
                final View decorView = getWindow().getDecorView();
                if (Build.VERSION.SDK_INT >= 35) {
                    decorView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.3
                        @Override // android.view.View.OnApplyWindowInsetsListener
                        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                            List boundingRects;
                            try {
                                DisplayCutout displayCutout = windowInsets.getDisplayCutout();
                                if (displayCutout != null && (boundingRects = displayCutout.getBoundingRects()) != null && !boundingRects.isEmpty()) {
                                    decorView.setPadding(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
                                }
                            } catch (Throwable unused) {
                            }
                            return windowInsets;
                        }
                    });
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            com.bytedance.sdk.openadsdk.Zq.TKC.sP();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.f20954dx != null) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoForceBreak", this.f20954dx);
        }
        this.sP.removeCallbacksAndMessages(null);
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.HiB();
        }
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.f20954dx);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(this.f20954dx);
        if (this.TzV) {
            com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(this.f20954dx, this.uA.sP(), this.uA.Sj(), true);
        } else {
            com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(this.f20954dx, -1L, this.uA.Sj(), false);
        }
        if (this.sef.vS() && this.Fmk.get()) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(String.valueOf(this.sef.EjP()), this.f20954dx, "open_ad", this.Zq);
            this.sef = WMZ.TKC();
        }
        com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
        if (tkc != null) {
            tkc.TKC();
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("recycleRes");
        }
        Jcg();
        Dq = null;
        this.f20955ib = null;
        Zq zq2 = this.Ym;
        if (zq2 != null) {
            zq2.setCallback(null);
        }
        if (Fmk.gq().uP(String.valueOf(this.RiZ)) != 1 || sU.vS(this.f20954dx) || this.f20954dx.ODI()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.vS.Sj(dNu.Sj()).Sj(this.LD);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.HiB = false;
        TKC();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        com.bytedance.sdk.openadsdk.component.TKC tkc;
        super.onResume();
        this.HiB = true;
        if (this.Sj.getAndSet(true)) {
            if (!this.kF.get()) {
                sP();
                return;
            }
            sU();
            if (this.TzV && (tkc = this.Yf) != null && tkc.Jcg() != null) {
                this.Yf.Jcg().Sj(3);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            sU sUVar = this.f20954dx;
            bundle.putString("material_meta", sUVar != null ? sUVar.SP().toString() : null);
            bundle.putString(TTAdConstant.MULTI_PROCESS_META_MD5, this.sU);
            bundle.putInt("ad_source", this.uP);
            bundle.putLong("start_show_time", this.vS);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
        }
        Dq = this.f20955ib;
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.f20954dx);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            if (!this.LqL) {
                this.sef.HiB();
            }
            sU sUVar = this.f20954dx;
            if (sUVar != null && sUVar.UmR() && !this.f20954dx.Hs()) {
                this.f20954dx.Jcg(true);
                sU sUVar2 = this.f20954dx;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar2, "open_ad", sUVar2.at());
            }
        } else if (this.Fmk.get()) {
            if (this.sef.vS()) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(String.valueOf(this.sef.EjP()), this.f20954dx, "open_ad", this.Zq);
            }
            this.sef = WMZ.TKC();
        }
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.f20954dx, z10 ? 4 : 8);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(this.f20954dx, z10);
    }

    void sP() {
        if (this.TKC.get()) {
            return;
        }
        if (this.TzV) {
            com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
            if (tkc != null && tkc.Jcg() != null && this.Yf.Jcg().HiB()) {
                this.Yf.Jcg().TEQ();
            }
            aa();
        }
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.TKC();
        }
    }
}
