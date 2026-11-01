package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.component.reward.Sj.Ym;
import com.bytedance.sdk.openadsdk.component.reward.Sj.dNu;
import com.bytedance.sdk.openadsdk.component.reward.sP.Jcg;
import com.bytedance.sdk.openadsdk.component.reward.view.Dq;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.sef;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import v5.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj extends vS implements LqL.Sj, com.bytedance.sdk.openadsdk.component.reward.Sj.HiB.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP {
    protected int EjP;
    private int Fmk;
    private final AtomicBoolean HiB;
    private Bundle Jcg;
    protected final LqL Sj;
    protected com.bytedance.sdk.openadsdk.component.reward.Sj.Sj TKC;
    private boolean Zq;

    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.sP.sP sP;
    private boolean sef;
    private int vS;

    public Sj(sP sPVar, sU sUVar, int i11) {
        super(sPVar, sUVar, i11);
        this.Sj = new LqL(Looper.getMainLooper(), this);
        this.HiB = new AtomicBoolean(false);
        this.vS = 1;
        this.Fmk = 0;
        this.sef = false;
    }

    private boolean JcM() {
        if (this.TKC.TEQ.get() && this.TKC.Jcg) {
            return false;
        }
        if (this.Dq.EjP()) {
            return this.TKC.TEQ.get();
        }
        return true;
    }

    private void Mts() {
        if (this.Dq.EjP()) {
            return;
        }
        if (uP.TzV(this.TKC.sP)) {
            Sj(false, com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.TKC);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.Sj(this.TKC.Wjd.vS());
            this.sP.wE();
        }
    }

    private void Sj(sU sUVar, Bundle bundle) {
        Activity activityWE = wE();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = new com.bytedance.sdk.openadsdk.component.reward.Sj.Sj(activityWE, this.Sj, sUVar, this, 1);
        this.TKC = sj2;
        sj2.gR = uP().sP();
        this.TKC.Ir = uP().Sj();
        this.TKC.aZ = uP().uA();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
        sj3.HS = this;
        sj3.fF = uP().RiZ();
        Intent intent = activityWE.getIntent();
        com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(this.TKC, intent, bundle);
        if (intent != null) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(intent, this.TKC);
            sUVar.Sj(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.TKC.gY) {
            sP();
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVarSj = Jcg.Sj(this.TKC);
        this.sP = sPVarSj;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.TKC;
        sj4.f20994kb = sPVarSj;
        sj4.FPG.Sj(this);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.TKC;
        if (sj5.gR) {
            sj5.f20992ib.Sj(new com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj() { // from class: com.bytedance.sdk.openadsdk.activity.Sj.1
                @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj
                public void Sj(int i11) {
                    sP sPVarUP = Sj.this.uP();
                    if (sPVarUP == null) {
                        return;
                    }
                    sPVarUP.Sj(i11);
                }
            });
            uP().uA().setShowSound(sU.HiB(sUVar));
        }
        sef.Sj(this.TKC);
        Objects.toString(this.sP);
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.sP.sP sPVar) {
        if (sPVar != null) {
            HashMap map = new HashMap();
            try {
                if (this.TKC.Ir && uP() != null) {
                    uP().Sj(this);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ad_show_order", this.uA);
                map.put("pag_json_data", jSONObject.toString());
            } catch (Throwable unused) {
            }
            sPVar.Sj(map);
        }
    }

    private void WMZ() {
        if (this.Dq.EjP() && !this.sef) {
            this.sef = true;
            Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.Sj.2
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // java.lang.Runnable
                public void run() {
                    Sj sj2 = Sj.this;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = sj2.TKC;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.vS vSVar = sj3.Yf;
                    float[] fArrSj = sj3.ley.Sj(sj2.vS);
                    Sj sj4 = Sj.this;
                    vSVar.Sj(fArrSj, sj4, sj4.sP);
                }
            });
        }
    }

    private void fF() {
        this.sP.Sj(this.f20980aa);
        this.EjP = (int) this.TKC.f20992ib.Yf();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2.gR) {
            Sj(sj2.LqL.HiB());
            Sj(this.TKC.LqL.EjP());
        }
        TKC();
        Mts();
        if (this.TKC.sP.GMp() == null || this.TKC.sP.GMp().Sj() == null) {
            return;
        }
        this.TKC.sP.GMp().Sj().Sj(0L);
    }

    private void ib() {
        this.TKC.xD.Sj(this.sP);
        this.sP.Sj(this, this.Sj);
        this.sP.Ym();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void Dq() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.Fmk();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void EjP() {
        LD();
        this.TKC.sP.jU();
        this.TKC.sP.Sj(true);
        if (sU.HiB(this.TKC.sP)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
            sU sUVar = sj2.sP;
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, sj2.HiB, sUVar.SPg());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void EjP(Activity activity) {
        super.EjP(activity);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 == null) {
            return;
        }
        sj2.JcM.JcM();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(activity, this.TKC.sP);
    }

    protected final void Fmk() {
        this.Sj.removeMessages(400);
    }

    protected final void HiB() {
        Message message = new Message();
        message.what = 400;
        if (this.Dq.TT()) {
            Sj(10000);
        }
        this.Sj.sendMessageDelayed(message, 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void HiB(Activity activity) {
        super.HiB(activity);
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.sU();
    }

    protected abstract void Jcg();

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public boolean RiZ() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        return sj2 != null && sj2.f20992ib.uP();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final View Sj() {
        return this.TKC.xD;
    }

    public void Sj(float f11) {
        sP sPVarUP = uP();
        if (sPVarUP == null) {
            return;
        }
        sPVarUP.Sj(f11);
        if (this.Zq || f11 < this.Dq.eJi() / 100.0f) {
            return;
        }
        this.Zq = true;
        Sj sjJcg = sPVarUP.Jcg();
        if (sjJcg != null) {
            sjJcg.TzV();
        }
    }

    public void Sj(int i11) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void Sj(Activity activity) {
        super.Sj(activity);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 == null) {
            return;
        }
        sj2.ley.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void Sj(Activity activity, Bundle bundle) {
        this.Jcg = bundle;
        super.Sj(activity, bundle);
        Sj(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void Sj(Activity activity, sP.HiB hiB) {
        super.Sj(activity, hiB);
        this.vS = this.Dq.liH();
        Sj(this.Dq, this.Jcg);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2.gR && this.uA > 0) {
            sj2.ndK = hiB.EjP;
        }
        try {
            ib();
            fF();
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.AdScene", "onCreate: ", th2);
            com.bytedance.sdk.openadsdk.Zq.TKC.sP();
            ley();
        }
    }

    public abstract void Sj(Bundle bundle);

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public final void Sj(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.Sj(message);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void Sj(vS vSVar, vS vSVar2, sP.HiB hiB) {
        super.Sj(vSVar, vSVar2, hiB);
        if (vSVar == this && (vSVar2 instanceof TKC)) {
            int i11 = hiB.sP;
            if (i11 == 3) {
                dNu dnu = this.TKC.f20992ib;
                dnu.Sj(!dnu.LqL() ? 1 : 0, 2);
            } else if (i11 == 6) {
                dNu dnu2 = this.TKC.f20992ib;
                dnu2.Sj(!dnu2.LqL() ? 1 : 0, !this.TKC.f20992ib.LqL() ? 1 : 0);
            } else if (i11 == 5 && !sU.HiB(this.TKC.sP) && hiB.HiB) {
                this.TKC.f20992ib.Sj("skip", true);
            }
            this.TKC.Mts.Sj(false);
            this.TKC.Mts.EjP(false);
        }
        if (vSVar2.uA != 0 || this.uA == 0) {
            return;
        }
        if (!TextUtils.isEmpty(this.Dq.WMZ())) {
            this.Dq.uA("0");
        }
        Map<String, Object> mapQZ = this.Dq.QZ();
        if (mapQZ == null || !mapQZ.containsKey(BidResponsed.KEY_PRICE)) {
            return;
        }
        mapQZ.put(BidResponsed.KEY_PRICE, "0");
    }

    public void Sj(String str, JSONObject jSONObject) {
        if (str == null || !"skipToNextAd".equals(str) || uP() == null) {
            return;
        }
        uP().sP(this, sP(7));
    }

    public void Sj(boolean z10) {
    }

    public final void Sj(boolean z10, int i11) {
        Sj(z10, false, i11);
    }

    public final void Sj(boolean z10, boolean z11, int i11) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        sj2.FPG.Sj(z10, z11, false, sj2.f20994kb, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.HiB.Sj
    public void Sj(boolean z10, boolean z11, boolean z12, com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar, int i11) {
        Sj(z10, z11, z12, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final View TEQ() {
        return this.TKC.f20992ib.fF();
    }

    protected abstract void TKC();

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void TKC(Activity activity) {
        super.TKC(activity);
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.dx();
    }

    public void TzV() {
        com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(this.Dq.Gn()).Sj(), this.Dq);
        sPVarSj.Sj("material_meta", this.Dq);
        sPVarSj.Sj("ad_slot", this.Dq.xD());
        com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, new b() { // from class: com.bytedance.sdk.openadsdk.activity.Sj.3
            @Override // v5.a.InterfaceC0945a
            public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11) {
            }

            @Override // v5.a.InterfaceC0945a
            public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11, String str) {
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void Ym() {
        if (!this.TKC.sef.getAndSet(true) || uP.TKC(this.TKC.sP)) {
            this.TKC.LqL.Sj();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void Zq() {
        super.Zq();
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.zR();
    }

    public void aa() {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void dNu() {
        super.dNu();
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.ib();
        }
    }

    public void dx() {
        uP().Sj(this, sP(com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.sP));
    }

    protected sP.HiB sP(int i11) {
        sP.HiB hiB = new sP.HiB(i11, this.TKC);
        hiB.EjP = this.TKC.ndK;
        return hiB;
    }

    protected abstract void sP();

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void sP(Activity activity) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar;
        super.sP(activity);
        if (this.TKC == null || (sPVar = this.sP) == null) {
            return;
        }
        sPVar.dNu();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        sj2.qRN = true;
        sj2.ley.sP(this.Sj);
        if (JcM()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
            sj3.Mts.Sj(sj3.sP.RrR());
        }
        this.TKC.Wjd.Zq();
        this.TKC.JcM.zR();
        this.TKC.uP.Fmk();
        if (this.sP.sP()) {
            this.TKC.f20992ib.Sj(this.sP);
            this.TKC.f20992ib.Sj(false, this, this.Fmk != 0);
        }
        this.Fmk++;
        WMZ();
        Dq dq2 = this.TKC.wE;
        if (dq2 != null) {
            dq2.Jcg();
        }
        this.TKC.ley.Sj(this.Sj);
        this.sP.RiZ();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void sP(boolean z10) {
        Ym ym2;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 != null && (ym2 = sj2.LqL) != null) {
            ym2.sP(z10);
            this.TKC.LqL.TKC(z10);
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
        if (sj3 != null) {
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = sj3.f20994kb;
            if (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.vS) {
                ((com.bytedance.sdk.openadsdk.component.reward.sP.vS) sPVar).sP(z10);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    protected String sU() {
        return this.TKC.f20990db;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void sef() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void uA() {
        this.TKC.f20992ib.LD();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.HiB.Sj
    public void uvD() {
        TKC tkcVS;
        sP sPVarUP = uP();
        if (sPVarUP == null || (tkcVS = sPVarUP.vS()) == null) {
            return;
        }
        tkcVS.HiB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void vS() {
        if (this.HiB.compareAndSet(false, true)) {
            com.bytedance.sdk.component.utils.sU.Sj("BVA", "invoke callback onShow, ".concat(String.valueOf(this)));
            Jcg();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public com.bytedance.sdk.openadsdk.component.reward.Sj.Sj zR() {
        return this.TKC;
    }
}
