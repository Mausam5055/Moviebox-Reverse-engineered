package com.bytedance.sdk.openadsdk.core.TEQ.HiB;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.core.Fmk;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.aa;
import com.bytedance.adsdk.ugeno.core.uA;
import com.bytedance.sdk.component.adexpress.EjP.vS;
import com.bytedance.sdk.component.adexpress.sP.Dq;
import com.bytedance.sdk.component.adexpress.sP.Jcg;
import com.bytedance.sdk.component.adexpress.sP.sef;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TKC implements Fmk, aa, com.bytedance.sdk.component.adexpress.dynamic.EjP, com.bytedance.sdk.component.adexpress.sP.EjP<View> {
    private static float LD = 0.0f;
    private static float LqL = 0.0f;
    private static float Yf = 0.0f;
    private static float fF = 0.0f;
    private static long ley = 0;
    protected static int sU = 24;
    protected Dq Dq;
    protected JSONObject EjP;
    protected float Fmk;
    protected sU HiB;
    private EjP JcM;
    protected FrameLayout Jcg;
    protected uA Sj;
    protected com.bytedance.adsdk.ugeno.sP.TKC<View> TKC;
    protected long TzV;
    private RiZ WMZ;
    protected com.bytedance.adsdk.ugeno.sP.TKC Ym;
    protected float Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected com.bytedance.adsdk.ugeno.sP.TKC f21028aa;
    protected long dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    protected WeakReference<View> f21029dx;
    protected JSONObject kF;
    protected Context sP;
    protected float sef;
    protected sef uA;
    private Jcg uP;
    protected float uvD;
    protected Sj vS;
    private final boolean wE;
    protected String zR;
    protected boolean RiZ = true;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    public SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> f21030ib = new SparseArray<>();
    private String Mts = "";
    private final com.bytedance.sdk.component.Dq.Dq FPG = new com.bytedance.sdk.component.Dq.Dq("ugen_render_template") { // from class: com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC.1
        @Override // java.lang.Runnable
        public void run() {
            TKC tkc = TKC.this;
            tkc.EjP = tkc.Sj();
            if (TKC.this.WMZ != null) {
                TKC tkc2 = TKC.this;
                tkc2.Mts = tkc2.WMZ.getUgenTemplateErrorReason();
            } else {
                TKC.this.Mts = "expressView is null";
            }
            com.bytedance.sdk.openadsdk.core.sef.TKC().post(TKC.this.Wjd);
        }
    };
    private final Runnable Wjd = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC.2
        @Override // java.lang.Runnable
        public void run() {
            if (TKC.this.uP != null) {
                TKC tkc = TKC.this;
                tkc.sP(tkc.uP);
            }
        }
    };
    private boolean xD = false;
    protected AtomicBoolean TEQ = new AtomicBoolean(false);

    static {
        if (dNu.Sj() != null) {
            sU = dNu.sP();
        }
    }

    public TKC(Context context, sU sUVar, boolean z10, Sj sj2, ViewGroup viewGroup) {
        this.sP = context;
        this.wE = z10;
        this.Sj = new uA(context);
        this.HiB = sUVar;
        this.vS = sj2;
        this.Jcg = new FrameLayout(context);
        if (viewGroup instanceof RiZ) {
            this.WMZ = (RiZ) viewGroup;
        }
        this.zR = sj2.EjP();
        JSONObject jSONObjectSP = sP();
        this.kF = jSONObjectSP;
        this.JcM = new EjP(this.sP, this.HiB, this.zR, jSONObjectSP);
    }

    private void Sj(TEQ teq) {
        JSONObject jSONObjectEjP;
        boolean zSj;
        int i11;
        String str;
        EjP ejP;
        EjP ejP2;
        EjP ejP3;
        int i12 = 5;
        boolean z10 = true;
        if (this.Dq == null) {
            return;
        }
        String strOptString = teq.TKC().optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        if ("swiperLeft".equals(strOptString) && (ejP3 = this.JcM) != null) {
            ejP3.sP();
            return;
        }
        if ("swiperRight".equals(strOptString) && (ejP2 = this.JcM) != null) {
            ejP2.TKC();
            return;
        }
        if (!"swiperClick".equals(strOptString) || (ejP = this.JcM) == null) {
            jSONObjectEjP = null;
            zSj = false;
            i11 = 0;
        } else {
            zSj = ejP.Sj(teq);
            jSONObjectEjP = this.JcM.EjP();
            i11 = 2;
        }
        strOptString.hashCode();
        switch (strOptString) {
            case "privacy":
                i12 = 7;
                break;
            case "feedback":
                i12 = 3;
                break;
            case "mute":
                break;
            case "skip":
                i12 = 6;
                break;
            case "video":
                i12 = 4;
                break;
            case "creative":
                i12 = 2;
                break;
            default:
                i12 = i11;
                break;
        }
        com.bytedance.adsdk.ugeno.sP.TKC tkcSj = teq.Sj();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        WeakReference<View> weakReference = this.f21029dx;
        if (weakReference != null) {
            int[] iArrSj = FPG.Sj(weakReference.get());
            if (iArrSj != null) {
                iArr = iArrSj;
            }
            int[] iArrTKC = FPG.TKC(this.f21029dx.get());
            if (iArrTKC != null) {
                iArr2 = iArrTKC;
            }
        }
        com.bytedance.sdk.openadsdk.core.model.sef.Sj Sj = new com.bytedance.sdk.openadsdk.core.model.sef.Sj().EjP(this.Fmk).TKC(this.sef).sP(this.Zq).Sj(this.uvD).sP(this.dNu).Sj(this.TzV).TKC(iArr[0]).EjP(iArr[1]).HiB(iArr2[0]).vS(iArr2[1]).Sj(this.f21030ib);
        if (teq.sP() == 1 && !this.RiZ) {
            z10 = false;
        }
        com.bytedance.sdk.openadsdk.core.model.sef.Sj Sj2 = Sj.Sj(z10);
        if (tkcSj == null) {
            str = "";
        } else {
            str = tkcSj.WMZ() + "_" + tkcSj.JcM();
        }
        this.Dq.Sj(teq.Sj().Ym(), i12, Sj2.Sj(str).sP(zSj).sP(jSONObjectEjP).Sj());
    }

    private void Sj(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        com.bytedance.adsdk.ugeno.sP.TKC<T> TKC;
        int i12;
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = this.TKC;
        if (tkc == null || (TKC = tkc.TKC("countdown")) == 0) {
            return;
        }
        View viewYm = TKC.Ym();
        if (viewYm instanceof TextView) {
            try {
                i12 = Integer.parseInt((String) charSequence);
            } catch (Exception unused) {
                com.bytedance.sdk.component.utils.sU.sP("UGenRender", "parse duration exception", charSequence);
                i12 = 0;
            }
            if (z11 || i12 <= 0 || this.xD) {
                viewYm.setVisibility(8);
                return;
            }
            viewYm.setVisibility(0);
            if (!z10 && this.vS.Sj() && vS.sP(this.vS.EjP())) {
                ((TextView) viewYm).setText(String.format(ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_full_skip"), Integer.valueOf(i11)));
                return;
            }
            if (!"open_ad".equals(this.vS.EjP()) && this.vS.Sj()) {
                this.xD = true;
                viewYm.setVisibility(8);
            } else {
                ((TextView) viewYm).setText(((Object) charSequence) + "s");
            }
        }
    }

    private void Sj(JSONObject jSONObject) {
        com.bytedance.adsdk.ugeno.sP.TKC<T> TKC;
        if (this.TKC == null || jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        String strOptString2 = jSONObject.optString("nodeId");
        if (TextUtils.isEmpty(strOptString2) || (TKC = this.TKC.TKC(strOptString2)) == 0) {
            return;
        }
        if (TextUtils.equals(strOptString, "onShow")) {
            TKC.TKC(0);
        } else if (TextUtils.equals(strOptString, "onDismiss")) {
            TKC.TKC(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(Jcg jcg) {
        this.vS.fF().Sj();
        if (this.EjP == null) {
            jcg.Sj(Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, "ugen template is null real reason is " + this.Mts);
            return;
        }
        if (this.kF == null) {
            jcg.Sj(Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, "ugen data is null");
            return;
        }
        int iEjP = EjP();
        if (this.Sj.Sj()) {
            List<String> listSP = this.Sj.sP();
            if (listSP == null) {
                jcg.Sj(138, "unknow widget");
                return;
            }
            jcg.Sj(138, "unknow widget;" + listSP.toString());
            return;
        }
        if (iEjP != 0) {
            jcg.Sj(iEjP, "ugen render fail");
            return;
        }
        if (this.TKC == null) {
            jcg.Sj(138, "ugen render error");
            return;
        }
        sP sPVar = new sP();
        this.uA = sPVar;
        sPVar.Sj(true);
        this.uA.Sj(TKC());
        setSoundMute(this.wE);
        uA();
        com.bytedance.adsdk.ugeno.sP.TKC tkcJcg = Jcg();
        this.Ym = tkcJcg;
        if (tkcJcg != null && (tkcJcg instanceof com.bytedance.sdk.openadsdk.core.TEQ.sP.sP.sP)) {
            ((sP) this.uA).Sj((FrameLayout) ((com.bytedance.sdk.openadsdk.core.TEQ.sP.sP.sP) tkcJcg).EjP());
        }
        com.bytedance.adsdk.ugeno.sP.TKC tkcDq = Dq();
        EjP ejP = this.JcM;
        if (ejP != null) {
            ejP.Sj();
        }
        if (tkcDq != null && tkcDq.Ym() != null) {
            this.f21029dx = new WeakReference<>(tkcDq.Ym());
        }
        com.bytedance.adsdk.ugeno.sP.TKC tkcVS = vS();
        this.f21028aa = tkcVS;
        if (tkcVS != null && (tkcVS instanceof com.bytedance.adsdk.ugeno.uA.sP.sP)) {
            ((sP) this.uA).sP((FrameLayout) tkcVS.Ym());
        }
        this.Jcg.addView(this.TKC.Ym(), new FrameLayout.LayoutParams(this.TKC.Mts(), this.TKC.FPG()));
        float fLqL = this.vS.LqL();
        float fYf = this.vS.Yf();
        float fSP = FPG.sP(this.sP, fLqL);
        float fSP2 = FPG.sP(this.sP, fYf);
        if (TKC() != 7) {
            this.Jcg.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        } else if (fYf <= 0.0f) {
            this.Jcg.setLayoutParams(new FrameLayout.LayoutParams((int) fSP, -2));
        } else {
            this.Jcg.setLayoutParams(new FrameLayout.LayoutParams((int) fSP, (int) fSP2));
        }
        if (fYf <= 0.0f || fLqL <= 0.0f) {
            this.Jcg.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int iTKC = FPG.TKC(this.sP, this.Jcg.getMeasuredWidth());
            int iTKC2 = FPG.TKC(this.sP, this.Jcg.getMeasuredHeight());
            this.uA.Sj(iTKC);
            this.uA.sP(iTKC2);
        } else {
            this.uA.Sj(fLqL);
            this.uA.sP(fYf);
        }
        if (this.TEQ.get()) {
            jcg.Sj(Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, "ugen render timeout");
        } else {
            jcg.Sj(this.Jcg, this.uA);
        }
    }

    private void sP(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        com.bytedance.adsdk.ugeno.sP.TKC<T> TKC;
        View viewYm;
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = this.TKC;
        if (tkc == null || (TKC = tkc.TKC("skip")) == 0 || (viewYm = TKC.Ym()) == null) {
            return;
        }
        int i12 = 0;
        if (!z10 && !z11) {
            i12 = 8;
        }
        viewYm.setVisibility(i12);
    }

    private void uA() {
        com.bytedance.adsdk.ugeno.sP.TKC<T> TKC;
        if (this.TKC == null) {
            return;
        }
        if (this.HiB.rB() && (TKC = this.TKC.TKC("tvskip")) != 0) {
            TKC.TKC(8);
        }
        com.bytedance.adsdk.ugeno.sP.TKC<T> TKC2 = this.TKC.TKC("skip");
        if (TKC2 != 0 && (TKC2 instanceof com.bytedance.adsdk.ugeno.uA.EjP.TKC)) {
            if (!com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().sef(String.valueOf(this.HiB.If())) || this.HiB.dx() == 5 || this.HiB.dx() == 6 || this.HiB.DKj() == 3) {
                ((com.bytedance.adsdk.ugeno.uA.EjP.TKC) TKC2).Dq("local://tt_close_btn");
                TKC2.sP();
            }
        }
    }

    protected com.bytedance.adsdk.ugeno.sP.TKC Dq() {
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = this.TKC;
        if (tkc == null) {
            return null;
        }
        return tkc.TKC(TmcConstants.MENU_KEY_FEEDBACK);
    }

    protected int EjP() {
        this.Sj.Sj((aa) this);
        this.Sj.Sj((Fmk) this);
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkcSj = this.Sj.Sj(this.EjP);
        this.TKC = tkcSj;
        EjP ejP = this.JcM;
        if (ejP != null && tkcSj != null) {
            ejP.Sj(tkcSj);
        }
        this.vS.fF().sP();
        this.vS.fF().TKC();
        this.Sj.sP(this.kF);
        return 0;
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.EjP
    public View HiB() {
        return this.Jcg;
    }

    protected com.bytedance.adsdk.ugeno.sP.TKC Jcg() {
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = this.TKC;
        if (tkc == null) {
            return null;
        }
        return tkc.TKC("video");
    }

    protected JSONObject Sj() {
        return this.vS.TKC();
    }

    @Override // com.bytedance.adsdk.ugeno.core.aa
    public void Sj(TEQ teq, aa.sP sPVar, aa.Sj sj2) {
        if (teq == null) {
            return;
        }
        if (teq.sP() == 1 || teq.sP() == 4) {
            Sj(teq);
        }
        if (teq.sP() == 10) {
            Sj(teq.TKC());
        }
        if (sPVar == null || teq.EjP() == null) {
            return;
        }
        sPVar.Sj(teq.EjP());
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005b  */
    /* JADX WARN: Code duplicated, block: B:27:0x00af  */
    @Override // com.bytedance.adsdk.ugeno.core.Fmk
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, MotionEvent motionEvent) {
        int i11;
        int action = motionEvent.getAction();
        int i12 = 1;
        if (action != 0) {
            int i13 = -1;
            if (action == 1) {
                this.Zq = motionEvent.getRawX();
                this.uvD = motionEvent.getRawY();
                if (Math.abs(this.Zq - this.Fmk) < sU || Math.abs(this.uvD - this.sef) >= sU) {
                    this.RiZ = false;
                }
                this.TzV = System.currentTimeMillis();
            } else if (action == 2) {
                LD += Math.abs(motionEvent.getX() - LqL);
                fF += Math.abs(motionEvent.getY() - Yf);
                LqL = motionEvent.getX();
                Yf = motionEvent.getY();
                if (System.currentTimeMillis() - ley > 200) {
                    float f11 = LD;
                    int i14 = sU;
                    if (f11 <= i14 && fF <= i14) {
                        i12 = 2;
                    }
                } else {
                    i12 = 2;
                }
                if (Math.abs(motionEvent.getRawX() - this.Fmk) >= sU || Math.abs(motionEvent.getRawY() - this.sef) >= sU) {
                    this.RiZ = false;
                }
                i13 = i12;
                this.Zq = motionEvent.getRawX();
                this.uvD = motionEvent.getRawY();
                if (Math.abs(this.Zq - this.Fmk) < sU) {
                    this.RiZ = false;
                } else {
                    this.RiZ = false;
                }
                this.TzV = System.currentTimeMillis();
            }
            i11 = i13;
        } else {
            this.dNu = System.currentTimeMillis();
            this.Fmk = motionEvent.getRawX();
            this.sef = motionEvent.getRawY();
            this.RiZ = true;
            ley = System.currentTimeMillis();
            com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(motionEvent);
            i11 = 0;
        }
        this.f21030ib.put(motionEvent.getActionMasked(), new com.bytedance.sdk.openadsdk.core.sP.TKC.Sj(i11, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, com.bytedance.adsdk.ugeno.EjP.vS.Sj sj2) {
    }

    public void Sj(Dq dq2) {
        this.Dq = dq2;
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.EjP
    public void Sj(Jcg jcg) {
        this.uP = jcg;
        JcM.sP(this.FPG);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.widget.HiB hiB) {
        EjP ejP = this.JcM;
        if (ejP != null) {
            ejP.Sj(hiB);
        }
    }

    public void Sj(boolean z10) {
        this.TEQ.set(z10);
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.EjP
    public int TKC() {
        return this.HiB.fF();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void onvideoComplate() {
    }

    protected JSONObject sP() {
        return this.vS.LD();
    }

    public void setSoundMute(boolean z10) {
        com.bytedance.adsdk.ugeno.sP.TKC<T> TKC;
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = this.TKC;
        if (tkc == null || (TKC = tkc.TKC(CampaignEx.JSON_NATIVE_VIDEO_MUTE)) == 0) {
            return;
        }
        if (z10) {
            ((com.bytedance.adsdk.ugeno.uA.EjP.TKC) TKC).Dq("local://tt_reward_full_mute");
        } else {
            ((com.bytedance.adsdk.ugeno.uA.EjP.TKC) TKC).Dq("local://tt_reward_full_unmute");
        }
        TKC.sP();
    }

    public void setTime(CharSequence charSequence, int i11, int i12, boolean z10) {
        if (this.TKC == null) {
            return;
        }
        boolean z11 = i11 == 1;
        Sj(charSequence, z11, i12, z10);
        sP(charSequence, z11, i12, z10);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.EjP
    public void setTimeUpdate(int i11) {
    }

    public com.bytedance.adsdk.ugeno.sP.TKC vS() {
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = this.TKC;
        if (tkc == null) {
            return null;
        }
        return tkc.EjP("PlayableComponent");
    }
}
