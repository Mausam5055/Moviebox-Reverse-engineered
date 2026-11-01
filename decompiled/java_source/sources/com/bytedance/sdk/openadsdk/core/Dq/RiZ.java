package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.LD;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.fF;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class RiZ extends com.bytedance.sdk.openadsdk.core.HiB.TKC implements com.bytedance.sdk.component.adexpress.dynamic.EjP, com.bytedance.sdk.component.adexpress.sP.Dq, com.bytedance.sdk.component.adexpress.sP.Zq, sef, com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj {
    public static int zR = 500;
    private com.bytedance.sdk.component.adexpress.sP.Fmk Bml;
    private com.bytedance.sdk.component.adexpress.sP.uA Chv;
    protected final Context Dq;
    private com.bytedance.sdk.openadsdk.core.TEQ.sP.Jcg EZ;
    private final AtomicBoolean Ei;
    private TTDislikeDialogAbstract EjP;
    private com.bytedance.sdk.openadsdk.core.TEQ.TKC.sP FPG;
    private boolean Fm;
    protected boolean Fmk;
    private PAGExpressAdWrapperListener HiB;
    private TKC HpB;
    private com.bytedance.sdk.component.adexpress.sP.uvD IOh;
    private long Ir;
    private float JcM;
    private uA Jcg;
    private String LD;
    protected com.bytedance.sdk.component.adexpress.sP.sP LqL;
    private String Mts;
    private List<com.bytedance.sdk.component.adexpress.sP.TEQ> MuB;
    protected String RiZ;
    private boolean Sj;
    protected AdSlot TEQ;
    private com.bytedance.sdk.openadsdk.TKC.TKC TKC;
    protected int TzV;
    private ThemeStatusBroadcastReceiver UHs;
    private float Uc;
    private com.bytedance.sdk.openadsdk.EjP.EjP.HiB WMZ;
    private String Wjd;
    public com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> Yf;
    protected com.bytedance.sdk.openadsdk.core.model.sU Ym;
    protected com.bytedance.sdk.component.adexpress.sP.TKC Zq;
    private int aNB;
    private com.bytedance.sdk.openadsdk.core.TKC.Jcg aZ;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    public FrameLayout f21014aa;
    private final SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> cX;
    boolean dNu;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private final Runnable f21015db;
    private ib dwU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    protected ViewGroup f21016dx;
    private float fF;
    private float gR;
    private com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC gY;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    public boolean f21017ib;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private dx f21018jb;
    int kF;

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    private float f21019kb;
    long ley;
    private final Runnable ndK;
    private com.bytedance.sdk.component.adexpress.sP.vS pfr;
    private final Runnable qRN;
    private int sP;
    protected HashSet<String> sU;
    private com.bytedance.sdk.component.adexpress.sP.TEQ.Sj sdp;
    protected boolean sef;
    protected String uA;
    boolean uP;
    protected boolean uvD;
    private Dq vS;
    public com.bytedance.sdk.openadsdk.EjP.Jcg wE;
    private com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj xD;
    private final ViewTreeObserver.OnScrollChangedListener xhi;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    private float f21020xu;

    public RiZ(@NonNull Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, AdSlot adSlot, String str) {
        super(context);
        this.Sj = true;
        this.sP = 0;
        this.uA = "embeded_ad";
        this.LD = null;
        this.sef = false;
        this.uvD = false;
        this.dNu = true;
        this.TzV = -1;
        this.Mts = "";
        this.f21017ib = false;
        this.Fm = true;
        this.kF = -1;
        this.wE = new com.bytedance.sdk.openadsdk.EjP.Jcg();
        this.ley = 0L;
        this.Ei = new AtomicBoolean(false);
        this.xhi = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                RiZ riZ = RiZ.this;
                if (riZ.dNu) {
                    riZ.zR();
                    RiZ riZ2 = RiZ.this;
                    riZ2.removeCallbacks(riZ2.f21015db);
                    RiZ riZ3 = RiZ.this;
                    riZ3.postDelayed(riZ3.f21015db, 500L);
                }
            }
        };
        this.f21015db = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.2
            @Override // java.lang.Runnable
            public void run() {
                if (!LD.Sj(RiZ.this, 0, 5)) {
                    RiZ.this.vS(8);
                } else {
                    RiZ riZ = RiZ.this;
                    riZ.vS(riZ.getVisibility());
                }
            }
        };
        this.ndK = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.3
            @Override // java.lang.Runnable
            public void run() {
                RiZ.this.vS(0);
            }
        };
        this.qRN = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.4
            @Override // java.lang.Runnable
            public void run() {
                RiZ.this.vS(8);
            }
        };
        this.aNB = 8;
        this.cX = new SparseArray<>();
        this.f21019kb = -1.0f;
        this.Uc = -1.0f;
        this.f21020xu = -1.0f;
        this.gR = -1.0f;
        this.Ir = 0L;
        this.uA = str;
        this.Dq = context;
        this.Ym = sUVar;
        this.TEQ = adSlot;
        this.f21017ib = false;
        vS();
    }

    public RiZ(@NonNull Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, AdSlot adSlot, String str, boolean z10, boolean z11) {
        super(context);
        this.Sj = true;
        this.sP = 0;
        this.uA = "embeded_ad";
        this.LD = null;
        this.sef = false;
        this.uvD = false;
        this.dNu = true;
        this.TzV = -1;
        this.Mts = "";
        this.f21017ib = false;
        this.Fm = true;
        this.kF = -1;
        this.wE = new com.bytedance.sdk.openadsdk.EjP.Jcg();
        this.ley = 0L;
        this.Ei = new AtomicBoolean(false);
        this.xhi = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                RiZ riZ = RiZ.this;
                if (riZ.dNu) {
                    riZ.zR();
                    RiZ riZ2 = RiZ.this;
                    riZ2.removeCallbacks(riZ2.f21015db);
                    RiZ riZ3 = RiZ.this;
                    riZ3.postDelayed(riZ3.f21015db, 500L);
                }
            }
        };
        this.f21015db = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.2
            @Override // java.lang.Runnable
            public void run() {
                if (!LD.Sj(RiZ.this, 0, 5)) {
                    RiZ.this.vS(8);
                } else {
                    RiZ riZ = RiZ.this;
                    riZ.vS(riZ.getVisibility());
                }
            }
        };
        this.ndK = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.3
            @Override // java.lang.Runnable
            public void run() {
                RiZ.this.vS(0);
            }
        };
        this.qRN = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.4
            @Override // java.lang.Runnable
            public void run() {
                RiZ.this.vS(8);
            }
        };
        this.aNB = 8;
        this.cX = new SparseArray<>();
        this.f21019kb = -1.0f;
        this.Uc = -1.0f;
        this.f21020xu = -1.0f;
        this.gR = -1.0f;
        this.Ir = 0L;
        this.uA = str;
        this.Dq = context;
        this.Ym = sUVar;
        this.TEQ = adSlot;
        this.f21017ib = z10;
        this.Fm = z11;
        vS();
    }

    private void Jcg() {
        com.bytedance.sdk.openadsdk.core.model.sU.Sj sjXhi = this.Ym.xhi();
        if (!TextUtils.equals(this.uA, "embeded_ad") || sjXhi == null) {
            return;
        }
        String strAa = sjXhi.aa();
        if (TextUtils.isEmpty(strAa)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(strAa);
            int iOptInt = jSONObject.optInt("width");
            int iOptInt2 = jSONObject.optInt("height");
            if (iOptInt == 0 || iOptInt2 == 0) {
                return;
            }
            this.JcM = iOptInt2;
            this.fF = iOptInt;
        } catch (Exception unused) {
        }
    }

    private void RiZ() {
        this.sP = this.Ym.fF();
        try {
            sU();
            dx();
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.Sj("NativeExpressView", "NativeExpressView dynamicRender fail", e11);
        }
        boolean z10 = this.Ym.JcM() == 1;
        this.Sj = z10;
        if (z10) {
            com.bytedance.sdk.component.adexpress.sP.vS vSVar = new com.bytedance.sdk.component.adexpress.sP.vS(this.Dq, this.Bml, new sU(this, this.UHs, this.Bml));
            this.pfr = vSVar;
            this.MuB.add(vSVar);
        }
        Objects.toString(this.MuB);
        this.sdp = new com.bytedance.sdk.component.adexpress.sP.aa(this.MuB, this.Chv);
    }

    public static JSONObject Sj(View view) {
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", view.getWidth());
            jSONObject.put("height", view.getHeight());
            jSONObject.put(TtmlNode.LEFT, iArr[0]);
            jSONObject.put(IntegrationConstants.TAB_BAR_POSITION_TOP, iArr[1]);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private void TzV() {
        if (this.Ym.DKa() == 1 && this.Ym.Ph()) {
            com.bytedance.sdk.component.adexpress.sP.vS vSVar = new com.bytedance.sdk.component.adexpress.sP.vS(this.Dq, this.Bml, new sU(this, this.UHs, this.Bml));
            this.pfr = vSVar;
            this.MuB.add(vSVar);
            this.sdp = new com.bytedance.sdk.component.adexpress.sP.aa(this.MuB, this.Chv);
            return;
        }
        if (wE()) {
            RiZ();
            return;
        }
        try {
            sU();
            ib ibVar = new ib(this.Dq, this.Bml, this.UHs, this.WMZ, this.Ym);
            this.dwU = ibVar;
            com.bytedance.sdk.component.adexpress.sP.uvD uvd = new com.bytedance.sdk.component.adexpress.sP.uvD(this.Dq, this.Bml, ibVar, this);
            this.IOh = uvd;
            this.MuB.add(uvd);
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.Sj("NativeExpressView", "NativeExpressView dynamicRender fail", e11);
        }
        com.bytedance.sdk.component.adexpress.sP.vS vSVar2 = new com.bytedance.sdk.component.adexpress.sP.vS(this.Dq, this.Bml, new sU(this, this.UHs, this.Bml));
        this.pfr = vSVar2;
        this.MuB.add(vSVar2);
        this.sdp = new com.bytedance.sdk.component.adexpress.sP.aa(this.MuB, this.Chv);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003f  */
    private void dNu() {
        long jOptLong;
        boolean z10;
        com.bytedance.sdk.component.adexpress.sP.Fmk.Sj sj2;
        com.bytedance.sdk.openadsdk.EjP.dNu dnu = new com.bytedance.sdk.openadsdk.EjP.dNu(1, this.uA, this.Ym);
        this.WMZ = dnu;
        this.Chv = new Fmk(dnu, this.uA, this.Ym, this.LD);
        final boolean zDb = this.Ym.db();
        try {
            com.bytedance.sdk.openadsdk.core.model.sU.Sj sjXhi = this.Ym.xhi();
            if (sjXhi != null) {
                String strYm = sjXhi.Ym();
                if (TextUtils.isEmpty(strYm)) {
                    jOptLong = 0;
                } else {
                    jOptLong = new JSONObject(strYm).optLong("render_delay_time");
                }
            } else {
                jOptLong = 0;
            }
        } catch (Exception unused) {
        }
        try {
            z10 = !com.bytedance.sdk.openadsdk.core.model.sU.HiB(this.Ym) && com.bytedance.sdk.openadsdk.core.dNu.EjP().Fmk(this.LD) == 1;
            try {
                if (!com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().sef(this.LD) || this.Ym.dx() == 5 || this.Ym.dx() == 6 || this.Ym.DKj() == 3) {
                    z10 = true;
                }
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            z10 = false;
        }
        long jMin = Math.min(Math.max(jOptLong, 0L), 10000L);
        int renderTimeout = getRenderTimeout();
        double dK = this.Ym.UHs() != null ? this.Ym.UHs().K() * ((double) this.Ym.UHs().N()) : 0.0d;
        int i11 = this.kF;
        this.uP = i11 != -1 && i11 < ((int) dK);
        if (com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.Ym) || com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP(this.Ym)) {
            com.bytedance.sdk.openadsdk.core.TEQ.HiB.Sj.C0258Sj c0258Sj = new com.bytedance.sdk.openadsdk.core.TEQ.HiB.Sj.C0258Sj();
            if (com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.Ym)) {
                c0258Sj.Sj(com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.Ym, this.uA));
            }
            c0258Sj.Sj((com.bytedance.adsdk.ugeno.core.Zq) this.Chv);
            c0258Sj.Sj(this.fF);
            c0258Sj.sP(this.JcM);
            sj2 = c0258Sj;
        } else {
            sj2 = new com.bytedance.sdk.component.adexpress.sP.Fmk.Sj();
        }
        sj2.HiB(zDb);
        sj2.Sj(this.uA).sP(this.Ym.aZ()).TKC(this.Ym.Lip()).EjP(this.Ym.mZN()).Sj(this.Chv).EjP(this.Ym.dU()).Sj(renderTimeout).sP(this.Ym.RrR()).TKC(this.Fm).sP(this.Ym.Mts()).Sj(jMin).TKC(this.Ym.sdp()).Sj(com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj(this.Ym)).EjP(z10).HiB(this.kF).Sj(this.uP).Sj(dK).vS(com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().gR()).Jcg(this.Ym.fAj().Sj()).Dq(this.Ym.fAj().sP()).Sj(new com.bytedance.sdk.component.adexpress.sP.HiB() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.5
            @Override // com.bytedance.sdk.component.adexpress.sP.HiB
            public JSONObject Sj() {
                try {
                    RiZ riZ = RiZ.this;
                    com.bytedance.sdk.openadsdk.core.model.sU sUVar = riZ.Ym;
                    if (sUVar == null) {
                        riZ.Mts = "material is null";
                        return null;
                    }
                    if (zDb) {
                        riZ.f21018jb = new dx();
                        float f11 = RiZ.this.fF;
                        float f12 = RiZ.this.JcM;
                        RiZ riZ2 = RiZ.this;
                        JSONObject jSONObjectSj = com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj(f11, f12, riZ2.sef, riZ2.Ym, riZ2.uA, riZ2.f21018jb);
                        RiZ.this.Mts = com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj();
                        return jSONObjectSj;
                    }
                    if (!com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(sUVar)) {
                        float f13 = RiZ.this.fF;
                        float f14 = RiZ.this.JcM;
                        RiZ riZ3 = RiZ.this;
                        JSONObject jSONObjectSj2 = com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj(f13, f14, riZ3.sef, riZ3.Ym);
                        RiZ.this.Sj(jSONObjectSj2);
                        return jSONObjectSj2;
                    }
                    RiZ.this.f21018jb = new dx();
                    RiZ riZ4 = RiZ.this;
                    JSONObject jSONObjectSj3 = com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(riZ4.Ym, riZ4.f21018jb);
                    RiZ.this.Mts = com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj();
                    return jSONObjectSj3;
                } catch (Throwable unused4) {
                    return null;
                }
            }
        });
        Sj(sj2);
        this.Bml = sj2.Sj();
    }

    private void dx() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
        if (sUVar == null || sUVar.DKa() != 1 || this.Ym.ley() == 2) {
            com.bytedance.sdk.openadsdk.core.vS.Sj.Sj sj2 = new com.bytedance.sdk.openadsdk.core.vS.Sj.Sj();
            int i11 = this.sP;
            if (i11 != 0) {
                if (i11 == 3) {
                    com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg jcg = new com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg();
                    Context applicationContext = this.Dq.getApplicationContext();
                    com.bytedance.sdk.component.adexpress.sP.Fmk fmk = this.Bml;
                    ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver = this.UHs;
                    boolean z10 = this.f21017ib;
                    com.bytedance.sdk.component.adexpress.sP.sP sPVar = new com.bytedance.sdk.component.adexpress.sP.sP(applicationContext, fmk, themeStatusBroadcastReceiver, z10, jcg, this, sj2, new vS(this.Dq, themeStatusBroadcastReceiver, z10, jcg, fmk, sj2));
                    this.LqL = sPVar;
                    this.MuB.add(sPVar);
                    return;
                }
                if (i11 == 7) {
                    com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC(this.Dq, this.Ym, this.f21017ib, (com.bytedance.sdk.openadsdk.core.TEQ.HiB.Sj) this.Bml, this);
                    this.gY = tkc;
                    com.bytedance.sdk.openadsdk.core.TEQ.sP.Jcg jcg2 = new com.bytedance.sdk.openadsdk.core.TEQ.sP.Jcg(this.Dq, tkc, this, this.Bml);
                    this.EZ = jcg2;
                    this.MuB.add(jcg2);
                    return;
                }
                if (i11 != 9) {
                    if (i11 != 10) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.TEQ.sP.Jcg jcg3 = new com.bytedance.sdk.openadsdk.core.TEQ.sP.Jcg(this.Dq, new com.bytedance.sdk.openadsdk.core.TEQ.HiB.HiB(this.Dq, this.Ym, this.f21017ib, (com.bytedance.sdk.openadsdk.core.TEQ.HiB.Sj) this.Bml, this), this, this.Bml);
                    this.EZ = jcg3;
                    this.MuB.add(jcg3);
                    return;
                }
            }
            ib ibVar = new ib(this.Dq, this.Bml, this.UHs, this.WMZ, this.Ym);
            this.dwU = ibVar;
            com.bytedance.sdk.component.adexpress.sP.uvD uvd = new com.bytedance.sdk.component.adexpress.sP.uvD(this.Dq, this.Bml, ibVar, this);
            this.IOh = uvd;
            this.MuB.add(uvd);
        }
    }

    private int getAdSlotType() {
        String str = this.uA;
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return 1;
            case "rewarded_video":
                return 7;
            case "open_ad":
                return 3;
            case "fullscreen_interstitial_ad":
                return 8;
            case "interaction":
                return 2;
            default:
                return 5;
        }
    }

    private boolean ib() {
        return com.bytedance.sdk.openadsdk.core.model.sU.HiB(this.Ym);
    }

    private void kF() {
        List<com.bytedance.sdk.component.adexpress.sP.TEQ> list = this.MuB;
        if (list == null) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.sP.TEQ> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private void sU() {
        if (com.bytedance.sdk.openadsdk.core.sef.HiB()) {
            return;
        }
        aa.Sj();
    }

    private void uP() {
        List<com.bytedance.sdk.component.adexpress.sP.TEQ> list = this.MuB;
        if (list == null) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.sP.TEQ> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private boolean wE() {
        return TextUtils.equals(this.uA, "fullscreen_interstitial_ad") || TextUtils.equals(this.uA, "rewarded_video") || TextUtils.equals("open_ad", this.uA) || ib.sP(this.uA) || TextUtils.equals(this.uA, "embeded_ad");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zR() {
        if (this.Ei.get()) {
            this.wE.Sj(System.currentTimeMillis(), LD.Sj(this));
        }
    }

    public void Dq() {
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP instanceof ib) {
            if (ejP == null) {
                return;
            }
            ((ib) ejP).Dq();
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
            com.bytedance.sdk.component.utils.uA.sP().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.6
                @Override // java.lang.Runnable
                public void run() {
                    RiZ.this.HiB(1);
                }
            }, ((long) (sUVar != null ? sUVar.sef().EjP() : 5)) * 1000);
        }
        com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.Ym;
        if (sUVar2 != null && sUVar2.GMp() != null && this.Ym.GMp().Sj() != null) {
            this.Ym.GMp().Sj().Sj(0L);
        }
        if ((this.Yf instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.HiB) && com.bytedance.sdk.openadsdk.core.model.Zq.Sj(this.Ym)) {
            Sj(this.Yf);
        }
    }

    public int EjP() {
        return 0;
    }

    public boolean Fmk() {
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        return ejP != null && (ejP instanceof sU);
    }

    public void HiB() {
    }

    public void HiB(int i11) {
        if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(this.Ym)) {
            com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
            if (ejP instanceof ib) {
                ((ib) ejP).sP(i11);
            }
        }
    }

    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (!(this.Yf instanceof ib)) {
            return null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            int renderEngineCacheType = getRenderEngineCacheType();
            if (sUVar != null) {
                if (sUVar.xhi() != null && sUVar.xhi().sef()) {
                    jSONObject.put("engine_version", sUVar.xhi().Fmk());
                } else if (sUVar.ndK() != null) {
                    jSONObject.put("engine_version", "v3");
                } else {
                    jSONObject.put("engine_version", "v1");
                }
            }
            jSONObject.put("engine_type", renderEngineCacheType);
        } catch (Exception e11) {
            e11.getMessage();
        }
        return jSONObject;
    }

    public void Sj() {
    }

    public void Sj(int i11) {
    }

    public void Sj(int i11, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
    }

    public void Sj(int i11, String str) {
    }

    public void Sj(int i11, boolean z10, boolean z11) {
        this.dNu = z10;
        removeCallbacks(this.qRN);
        removeCallbacks(this.ndK);
        if (i11 == 0) {
            if (z11) {
                this.ndK.run();
                return;
            } else {
                postDelayed(this.ndK, 50L);
                return;
            }
        }
        if (z11) {
            this.qRN.run();
        } else {
            postDelayed(this.qRN, 50L);
        }
    }

    public void Sj(View view, int i11, com.bytedance.sdk.component.adexpress.TKC tkc) {
        View view2;
        JSONObject jSONObject;
        com.bytedance.sdk.component.utils.sU.Sj("ClickCreativeListener", "trigger Class2 method1", Integer.valueOf(i11));
        if (i11 == -1 || tkc == null) {
            return;
        }
        HashMap map = new HashMap();
        if (uP.TKC(this.Ym)) {
            map.put("click_scence", 3);
        } else {
            map.put("click_scence", 1);
        }
        com.bytedance.sdk.openadsdk.core.model.sef sefVar = (com.bytedance.sdk.openadsdk.core.model.sef) tkc;
        if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(this.Ym)) {
            try {
                JSONObject jSONObject2 = sefVar.dNu;
                if (jSONObject2 != null) {
                    int iOptInt = jSONObject2.optInt("click_type", 0);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("click_type", iOptInt);
                    map.put("pag_json_data", jSONObject3.toString());
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
            }
        }
        Dq dq2 = this.vS;
        if (dq2 != null) {
            dq2.EjP(getDynamicShowType());
            this.vS.Sj(map);
        }
        uA uAVar = this.Jcg;
        if (uAVar != null) {
            uAVar.EjP(getDynamicShowType());
            this.Jcg.Sj(map);
        }
        float f11 = sefVar.Sj;
        float f12 = sefVar.sP;
        float f13 = sefVar.TKC;
        float f14 = sefVar.EjP;
        boolean z10 = sefVar.Zq;
        SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray = sefVar.sef;
        if (sparseArray == null || sparseArray.size() == 0) {
            sparseArray = this.cX;
        }
        SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray2 = sparseArray;
        String str = sefVar.Ym;
        JSONObject jSONObjectSj = null;
        if (view == null) {
            view2 = this;
        } else {
            jSONObjectSj = view != this ? Sj(view) : null;
            view2 = view;
        }
        sefVar.f21076aa = i11;
        if (jSONObjectSj != null && sefVar.Fmk == null) {
            sefVar.Fmk = jSONObjectSj;
        }
        switch (i11) {
            case 1:
                FrameLayout frameLayout = this.f21014aa;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
                if (sUVar == null || sUVar.ib() != 1 || z10) {
                    uA uAVar2 = this.Jcg;
                    if (uAVar2 != null) {
                        uAVar2.Sj(sefVar);
                        this.Jcg.Sj(str);
                        this.Jcg.Sj(view2, f11, f12, f13, f14, sparseArray2, z10);
                    }
                    PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.HiB;
                    if (pAGExpressAdWrapperListener != null && !sefVar.TzV) {
                        pAGExpressAdWrapperListener.onAdClicked();
                        break;
                    }
                }
                break;
            case 2:
                if (sefVar.uvD > 0) {
                    fF.Sj(true);
                }
                Dq dq3 = this.vS;
                if (dq3 != null) {
                    dq3.Sj(sefVar);
                    this.vS.Sj(str);
                    if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(this.Ym) && (jSONObject = sefVar.dNu) != null) {
                        this.vS.EjP(jSONObject.optBoolean("is_ceiling_page", false));
                    }
                    this.vS.Sj(view2, f11, f12, f13, f14, sparseArray2, z10);
                }
                PAGExpressAdWrapperListener pAGExpressAdWrapperListener2 = this.HiB;
                if (pAGExpressAdWrapperListener2 != null && !sefVar.TzV) {
                    pAGExpressAdWrapperListener2.onAdClicked();
                }
                fF.Sj(false);
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.Ym, 9);
                break;
            case 3:
                TTDislikeDialogAbstract tTDislikeDialogAbstract = this.EjP;
                if (tTDislikeDialogAbstract == null) {
                    com.bytedance.sdk.openadsdk.TKC.TKC tkc2 = this.TKC;
                    if (tkc2 == null) {
                        TTDelegateActivity.Sj(this.Ym, this.Wjd);
                    } else {
                        tkc2.Sj();
                    }
                } else {
                    tTDislikeDialogAbstract.show();
                }
                break;
            case 4:
                FrameLayout frameLayout2 = this.f21014aa;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.Ym;
                if (sUVar2 == null || sUVar2.ib() != 1 || z10) {
                    Mts.TKC(this.Ym);
                    if ("embeded_ad".equals(this.uA) && ib() && !this.Fmk && Mts.TKC(this.Ym)) {
                        Dq dq4 = this.vS;
                        if (dq4 != null) {
                            dq4.Sj(sefVar);
                            this.vS.Sj(str);
                            this.vS.Sj(view2, f11, f12, f13, f14, sparseArray2, z10);
                        }
                    } else {
                        uA uAVar3 = this.Jcg;
                        if (uAVar3 != null) {
                            uAVar3.Sj(sefVar);
                            this.Jcg.Sj(str);
                            this.Jcg.Sj(view2, f11, f12, f13, f14, sparseArray2, z10);
                        }
                    }
                    PAGExpressAdWrapperListener pAGExpressAdWrapperListener3 = this.HiB;
                    if (pAGExpressAdWrapperListener3 != null && !sefVar.TzV) {
                        pAGExpressAdWrapperListener3.onAdClicked();
                        break;
                    }
                }
                break;
            case 5:
                Sj(!this.f21017ib, "dynamicClick");
                break;
            case 6:
                Sj();
                break;
            case 7:
                TTWebsiteActivity.Sj(this.Dq, this.Ym, this.uA);
                break;
        }
    }

    public void Sj(com.bytedance.sdk.component.adexpress.sP.EjP ejP) {
        if (this.FPG == null) {
            return;
        }
        try {
            if (ejP instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.HiB) {
                ViewGroup viewGroup = (ViewGroup) ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.HiB) ejP).vS().Ym();
                this.f21016dx = viewGroup;
                if (viewGroup != null) {
                    this.FPG.Sj();
                    View viewSP = this.FPG.sP();
                    if (viewSP != null) {
                        ViewGroup viewGroup2 = (ViewGroup) viewSP.getParent();
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(viewSP);
                        }
                        this.f21016dx.addView(viewSP, new ViewGroup.LayoutParams(-1, -1));
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void Sj(com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        this.Ei.set(true);
        this.Yf = ejP;
        if (this.aNB != getWindowVisibility()) {
            vS(getWindowVisibility());
        }
        ejP.TKC();
        if (ejP.TKC() == 3 && (sUVar = this.Ym) != null && sUVar.dx() == 1) {
            this.Ym.HiB(0);
        }
        if (ejP.TKC() != 1) {
            View viewHiB = ejP.HiB();
            if (viewHiB.getParent() != null) {
                ((ViewGroup) viewHiB.getParent()).removeView(viewHiB);
            }
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                arrayList.add(getChildAt(i11));
            }
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                if (arrayList.get(i12) instanceof com.bytedance.sdk.component.uA.vS) {
                    removeView((View) arrayList.get(i12));
                }
            }
            if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(this.Ym)) {
                addView(ejP.HiB(), new FrameLayout.LayoutParams(-1, -1));
            } else {
                addView(ejP.HiB());
            }
        }
        com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.Ym;
        if (sUVar2 != null) {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj(sUVar2.HiB(), this.ley, this.uA, ejP.TKC());
        }
        com.bytedance.sdk.component.adexpress.sP.uA uAVar = this.Chv;
        if (uAVar != null) {
            ((Fmk) uAVar).Ym();
        }
        PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.HiB;
        if (pAGExpressAdWrapperListener != null) {
            pAGExpressAdWrapperListener.onRenderSuccess(this, (float) sefVar.EjP(), (float) sefVar.HiB());
        }
        if ((this.Yf instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.HiB) && com.bytedance.sdk.openadsdk.core.model.Zq.Sj(this.Ym)) {
            uvD();
        }
        if (Sj(sefVar)) {
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this, this.Ym, TKC(getDynamicShowType()));
        }
        dx dxVar = this.f21018jb;
        if (dxVar != null) {
            dxVar.Sj(this.Ym, this.uA);
        }
    }

    protected void Sj(com.bytedance.sdk.component.adexpress.sP.Fmk.Sj sj2) {
    }

    public void Sj(String str, JSONObject jSONObject) {
    }

    protected void Sj(JSONObject jSONObject) {
    }

    public void Sj(boolean z10, String str) {
    }

    protected boolean Sj(com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        return true;
    }

    public void TEQ() {
        ib ibVar = this.dwU;
        if (ibVar == null || ibVar.HiB() == null) {
            return;
        }
        this.dwU.vS();
    }

    public long TKC() {
        return 0L;
    }

    protected com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj TKC(int i11) {
        return new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(i11);
    }

    public void Ym() {
        try {
            TKC tkc = this.HpB;
            if (tkc != null) {
                tkc.sP();
            }
            sef();
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            List<com.bytedance.sdk.component.adexpress.sP.TEQ> list = this.MuB;
            if (list != null) {
                Iterator<com.bytedance.sdk.component.adexpress.sP.TEQ> it = list.iterator();
                while (it.hasNext()) {
                    it.next().Sj();
                }
            }
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.Ym);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(this.Ym);
            this.TKC = null;
            this.EjP = null;
            this.TEQ = null;
            this.Ym = null;
            this.HiB = null;
            this.vS = null;
            this.Zq = null;
            this.Jcg = null;
            com.bytedance.sdk.openadsdk.core.TEQ.TKC.sP sPVar = this.FPG;
            if (sPVar != null) {
                sPVar.TKC();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("NativeExpressView", "detach error", th2);
        }
    }

    public boolean Zq() {
        return this.Ei.get();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.Zq
    public void a_(int i11) {
        com.bytedance.sdk.component.adexpress.sP.uA uAVar = this.Chv;
        if (uAVar != null) {
            if (!this.Sj) {
                uAVar.Dq();
            }
            this.Chv.uA();
            ((Fmk) this.Chv).Ym();
        }
        PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.HiB;
        if (pAGExpressAdWrapperListener != null) {
            pAGExpressAdWrapperListener.onRenderFail(this, com.bytedance.sdk.openadsdk.core.Dq.Sj(i11), i11);
        }
        dx dxVar = this.f21018jb;
        if (dxVar != null) {
            dxVar.Sj(this.Ym, this.uA);
        }
    }

    public void aa() {
        try {
            FrameLayout frameLayout = this.f21014aa;
            if (frameLayout == null || frameLayout.getParent() == null) {
                return;
            }
            removeView(this.f21014aa);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b1  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i11;
        SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray;
        Dq dq2 = this.vS;
        int i12 = 0;
        if (dq2 != null) {
            dq2.sP(motionEvent.getDeviceId());
            this.vS.Sj(motionEvent.getSource());
            this.vS.TKC(motionEvent.getToolType(0));
        }
        uA uAVar = this.Jcg;
        if (uAVar != null) {
            uAVar.sP(motionEvent.getDeviceId());
            this.Jcg.Sj(motionEvent.getSource());
            this.Jcg.TKC(motionEvent.getToolType(0));
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            i12 = 3;
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    i12 = actionMasked != 3 ? -1 : 4;
                } else {
                    this.f21020xu += Math.abs(motionEvent.getX() - this.f21019kb);
                    this.gR += Math.abs(motionEvent.getY() - this.Uc);
                    this.f21019kb = motionEvent.getX();
                    this.Uc = motionEvent.getY();
                    i11 = (System.currentTimeMillis() - this.Ir <= 200 || (this.f21020xu <= 8.0f && this.gR <= 8.0f)) ? 2 : 1;
                }
            }
            sparseArray = this.cX;
            if (sparseArray != null) {
                sparseArray.put(motionEvent.getActionMasked(), new com.bytedance.sdk.openadsdk.core.sP.TKC.Sj(i11, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        this.f21019kb = motionEvent.getRawX();
        this.Uc = motionEvent.getRawY();
        this.Ir = System.currentTimeMillis();
        i11 = i12;
        sparseArray = this.cX;
        if (sparseArray != null) {
            sparseArray.put(motionEvent.getActionMasked(), new com.bytedance.sdk.openadsdk.core.sP.TKC.Sj(i11, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.bytedance.sdk.openadsdk.EjP.Jcg getAdShowTime() {
        return this.wE;
    }

    public TKC getBrandBannerController() {
        return this.HpB;
    }

    public Dq getClickCreativeListener() {
        return this.vS;
    }

    public uA getClickListener() {
        return this.Jcg;
    }

    public String getClosedListenerKey() {
        return this.Wjd;
    }

    public int getDynamicShowType() {
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP != null) {
            return ejP.TKC();
        }
        return 0;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.JcM).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.fF).intValue();
    }

    public Yf getJsObject() {
        ib ibVar = this.dwU;
        if (ibVar != null) {
            return ibVar.uvD();
        }
        return null;
    }

    public int getRenderEngineCacheType() {
        TEQ teqZq;
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (!(ejP instanceof ib) || (teqZq = ((ib) ejP).Zq()) == null) {
            return 0;
        }
        return teqZq.Sj();
    }

    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.core.dNu.EjP().uP();
    }

    public String getUgenTemplateErrorReason() {
        return this.Mts;
    }

    @Override // com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj
    public long getVideoProgress() {
        com.bytedance.sdk.openadsdk.core.TKC.Jcg jcg = this.aZ;
        if (jcg != null) {
            return jcg.getVideoProgress();
        }
        return 0L;
    }

    public com.bytedance.sdk.component.uA.vS getWebView() {
        ib ibVar = this.dwU;
        if (ibVar == null) {
            return null;
        }
        return ibVar.Sj();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        zR();
        kF();
        getViewTreeObserver().addOnScrollChangedListener(this.xhi);
        com.bytedance.sdk.openadsdk.core.uA.sP().Sj(this.Wjd, this.xD);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.xhi);
        com.bytedance.sdk.openadsdk.core.uA.sP().vS(this.Wjd);
        uP();
        Sj(8, true, true);
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        zR();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (Build.VERSION.SDK_INT < 28) {
            onWindowVisibilityChanged(z10 ? getVisibility() : 8);
        }
        zR();
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(this.Ym, z10);
        if (z10) {
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.Ym, 4);
        } else {
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.Ym, 8);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i11) {
        super.onWindowVisibilityChanged(i11);
        Sj(i11, true, false);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void onvideoComplate() {
    }

    public void sP() {
    }

    public void sP(int i11) {
    }

    protected void sP(int i11, int i12) {
        int iMin;
        if (TextUtils.equals(this.uA, "banner_ad")) {
            return;
        }
        int i13 = this.kF;
        int i14 = ((i12 < i13 || i13 < 0 || !(this.uP || TextUtils.equals(this.uA, "open_ad"))) && !((i11 == 0 && TextUtils.equals(this.uA, "open_ad")) || EjP() == 5)) ? 0 : 1;
        if (i12 <= this.kF) {
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
            iMin = (sUVar == null || sUVar.UHs() == null) ? this.kF - i12 : (int) (Math.min(this.kF, this.Ym.UHs().K() * ((double) this.Ym.UHs().N())) - ((double) i12));
        } else {
            iMin = 0;
        }
        com.bytedance.sdk.component.adexpress.sP.sP sPVar = this.LqL;
        if (sPVar != null && sPVar.sP() != null) {
            this.LqL.sP().setTime(String.valueOf(i11), i14, iMin, false);
        }
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) {
            ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) ejP).setTime(String.valueOf(i11), i14, iMin, false);
        }
    }

    public void sP(int i11, String str) {
        Yf yfUvD;
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP == null || !(ejP instanceof ib) || (yfUvD = ((ib) ejP).uvD()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(EventConstants.KEY_TIME, i11);
            jSONObject.put("flag", str);
            yfUvD.Sj("onVideoPaused", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void sef() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
        if (sUVar == null || sUVar.GMp() == null || this.Ym.GMp().Sj() == null) {
            return;
        }
        this.Ym.GMp().Sj().HiB(getVideoProgress());
    }

    public void setBackupListener(com.bytedance.sdk.component.adexpress.sP.TKC tkc) {
        this.Zq = tkc;
        com.bytedance.sdk.component.adexpress.sP.vS vSVar = this.pfr;
        if (vSVar != null) {
            vSVar.Sj(tkc);
        }
    }

    public void setBannerClickClosedListener(com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sj2) {
        this.xD = sj2;
    }

    public void setClickCreativeListener(Dq dq2) {
        this.vS = dq2;
        if (dq2 != null) {
            dq2.Sj((com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj) this);
        }
    }

    public void setClickListener(uA uAVar) {
        this.Jcg = uAVar;
    }

    public void setClosedListenerKey(String str) {
        this.Wjd = str;
        TKC tkc = this.HpB;
        if (tkc != null) {
            tkc.Sj(str);
        }
    }

    public void setDislike(com.bytedance.sdk.openadsdk.TKC.TKC tkc) {
        Sj sj2;
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP != null && (ejP instanceof sU) && (sj2 = (Sj) ejP.HiB()) != null) {
            sj2.setDislikeInner(tkc);
        }
        TKC tkc2 = this.HpB;
        if (tkc2 != null) {
            tkc2.Sj(tkc);
        }
        this.TKC = tkc;
    }

    public void setExpressInteractionListener(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        this.HiB = pAGExpressAdWrapperListener;
        TKC tkc = this.HpB;
        if (tkc != null) {
            tkc.Sj(pAGExpressAdWrapperListener);
        }
    }

    public void setJsbLandingPageOpenListener(com.bytedance.sdk.openadsdk.core.widget.HiB hiB) {
        if (this.dwU != null && getJsObject() != null) {
            getJsObject().Sj(hiB);
        }
        com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC tkc = this.gY;
        if (tkc != null) {
            tkc.Sj(hiB);
        }
    }

    public void setOuterDislike(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        Sj sj2;
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP != null && (ejP instanceof sU) && (sj2 = (Sj) ejP.HiB()) != null) {
            sj2.setDislikeOuter(tTDislikeDialogAbstract);
        }
        TKC tkc = this.HpB;
        if (tkc != null) {
            tkc.Sj(tTDislikeDialogAbstract);
        }
        this.EjP = tTDislikeDialogAbstract;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setSoundMute(boolean z10) {
        this.f21017ib = z10;
        com.bytedance.sdk.component.adexpress.sP.sP sPVar = this.LqL;
        if (sPVar != null && sPVar.sP() != null) {
            this.LqL.sP().setSoundMute(z10);
        }
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) {
            ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) ejP).setSoundMute(z10);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setTime(CharSequence charSequence, int i11, int i12, boolean z10) {
        try {
            int i13 = Integer.parseInt(String.valueOf(charSequence));
            sP(i13, i11);
            com.bytedance.sdk.openadsdk.core.TEQ.TKC.sP sPVar = this.FPG;
            if (sPVar != null) {
                sPVar.Sj(i13);
            }
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setTimeUpdate(int i11) {
    }

    public void setVastVideoHelper(com.bytedance.sdk.openadsdk.core.TKC.Jcg jcg) {
        this.aZ = jcg;
    }

    public void setVideoFrameChangeListener(com.bytedance.sdk.openadsdk.aa.Jcg jcg) {
        if (this.dwU == null || getJsObject() == null) {
            return;
        }
        getJsObject().Sj(jcg);
    }

    public void uA() {
        if (this.Ym == null) {
            return;
        }
        this.ley = SystemClock.elapsedRealtime();
        if (this.Ym.hzV()) {
            TKC tkc = this.HpB;
            if (tkc == null) {
                a_(106);
                return;
            } else {
                tkc.Sj((com.bytedance.sdk.component.adexpress.sP.Zq) this);
                this.HpB.Sj();
                return;
            }
        }
        this.WMZ.Sj();
        com.bytedance.sdk.component.adexpress.sP.TEQ.Sj sj2 = this.sdp;
        if (sj2 != null) {
            sj2.Sj(this);
        }
        try {
            this.sdp.Sj();
        } catch (Throwable unused) {
        }
    }

    public void uvD() {
        com.bytedance.sdk.openadsdk.core.TEQ.TKC.sP sPVar = new com.bytedance.sdk.openadsdk.core.TEQ.TKC.sP(this.Dq, this.Ym);
        this.FPG = sPVar;
        sPVar.Sj(this);
        this.FPG.Sj(new com.bytedance.sdk.openadsdk.core.TEQ.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.core.Dq.RiZ.7
        });
    }

    protected void vS() {
        this.sU = new HashSet<>();
        this.UHs = new ThemeStatusBroadcastReceiver();
        AdSlot adSlot = this.TEQ;
        if (adSlot != null) {
            this.fF = adSlot.getExpressViewAcceptedWidth();
            this.JcM = this.TEQ.getExpressViewAcceptedHeight();
            Jcg();
            this.LD = this.TEQ.getCodeId();
            if (TextUtils.equals(this.uA, "fullscreen_interstitial_ad")) {
                com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
                if (sUVar == null || sUVar.Sj() < 0) {
                    this.kF = com.bytedance.sdk.openadsdk.core.dNu.EjP().RiZ(this.LD);
                } else {
                    this.kF = this.Ym.Sj();
                }
            } else if (TextUtils.equals(this.uA, "rewarded_video")) {
                com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.Ym;
                if (sUVar2 == null || sUVar2.sP() < 0) {
                    this.kF = com.bytedance.sdk.openadsdk.core.dNu.EjP().TEQ(this.LD);
                } else {
                    this.kF = this.Ym.sP();
                }
            } else if (TextUtils.equals(this.uA, "open_ad")) {
                com.bytedance.sdk.openadsdk.core.model.sU sUVar3 = this.Ym;
                if (sUVar3 == null || sUVar3.TKC() < 0) {
                    this.kF = com.bytedance.sdk.openadsdk.core.dNu.EjP().zR(this.LD);
                } else {
                    this.kF = this.Ym.TKC();
                }
                if (this.kF < 0) {
                    this.kF = 5;
                }
            }
        }
        setBackgroundColor(0);
        if (this.Ym.hzV()) {
            this.HpB = new TKC(this.Dq, this, this.Ym, this.uA);
            return;
        }
        dNu();
        this.MuB = new ArrayList();
        TzV();
        com.bytedance.sdk.component.adexpress.sP.uvD uvd = this.IOh;
        if (uvd != null) {
            this.dwU = (ib) uvd.sP();
        }
        Yf jsObject = getJsObject();
        if (jsObject != null) {
            jsObject.vS(this.uA);
        }
    }

    public void vS(int i11) {
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP == null || !(ejP instanceof ib)) {
            return;
        }
        ((ib) ejP).Sj(i11);
        this.aNB = i11;
    }
}
