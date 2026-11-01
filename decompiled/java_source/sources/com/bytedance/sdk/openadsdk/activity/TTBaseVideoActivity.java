package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.component.reward.Fmk;
import com.bytedance.sdk.openadsdk.component.reward.Sj.Dq;
import com.bytedance.sdk.openadsdk.component.reward.Sj.Ym;
import com.bytedance.sdk.openadsdk.component.reward.sP.Jcg;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.sef;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TTBaseVideoActivity extends TTBaseActivity implements LqL.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP {
    boolean Dq;
    final LqL EjP;
    private final AtomicBoolean Fmk;
    protected IListenerManager HiB;
    public final String Sj;
    protected com.bytedance.sdk.openadsdk.aa.vS TEQ;

    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.sP.sP TKC;
    private boolean Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20956aa;
    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sP;
    int uA;
    int vS;

    private static class Sj implements Runnable {
        boolean Sj;
        AdSlot sP;

        Sj(boolean z10, AdSlot adSlot) {
            this.Sj = z10;
            this.sP = adSlot;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.Sj) {
                Fmk.Sj(dNu.Sj()).Sj(this.sP);
            } else {
                com.bytedance.sdk.openadsdk.component.reward.HiB.Sj(dNu.Sj()).Sj(this.sP);
            }
        }
    }

    public TTBaseVideoActivity() {
        this.Sj = RiZ() ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.EjP = new LqL(Looper.getMainLooper(), this);
        this.Ym = false;
        this.f20956aa = 0;
        this.uA = 1;
        this.Fmk = new AtomicBoolean(false);
        this.TEQ = new com.bytedance.sdk.openadsdk.aa.vS() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.aa.vS
            public void Sj() {
                TTBaseVideoActivity.this.sef();
            }
        };
    }

    private void Sj(sU sUVar, Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = new com.bytedance.sdk.openadsdk.component.reward.Sj.Sj(this, this.EjP, sUVar, this, 0);
        this.sP = sj2;
        com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(sj2, getIntent(), bundle);
        Intent intent = getIntent();
        if (intent != null) {
            Sj(intent);
            sUVar.Sj(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.sP.gY) {
            TKC();
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVarSj = Jcg.Sj(this.sP);
        this.TKC = sPVarSj;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
        sj3.f20994kb = sPVarSj;
        sef.Sj(sj3);
        Objects.toString(this.TKC);
    }

    private void dx() {
        this.TKC.Sj(this.TEQ);
        this.vS = (int) this.sP.f20992ib.Yf();
        TzV();
        HiB();
        if (this.sP.sP.GMp() == null || this.sP.sP.GMp().Sj() == null) {
            return;
        }
        this.sP.sP.GMp().Sj().Sj(0L);
    }

    private boolean zR() {
        if (this.sP.TEQ.get() && this.sP.Jcg) {
            return false;
        }
        if ((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) {
            return this.sP.TEQ.get();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Dq() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.Fmk();
    }

    protected void Fmk() {
        if (sU() && !this.Ym) {
            this.Ym = true;
            getWindow().getDecorView().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.2
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
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = tTBaseVideoActivity.sP;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.vS vSVar = sj2.Yf;
                    float[] fArrSj = sj2.ley.Sj(tTBaseVideoActivity.uA);
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    vSVar.Sj(fArrSj, tTBaseVideoActivity2, tTBaseVideoActivity2.TKC);
                    TTBaseVideoActivity.this.Zq();
                }
            });
        }
    }

    protected void HiB() {
        if (uP.TKC(this.sP.sP)) {
            Sj(false, com.bytedance.sdk.openadsdk.EjP.sP.C0238sP.TKC);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar != null) {
            sPVar.Sj(this.sP.Wjd.vS());
            this.TKC.wE();
        }
    }

    protected abstract void Jcg();

    public abstract boolean RiZ();

    protected void Sj() {
        setContentView(this.sP.xD);
        this.sP.xD.Sj(this.TKC);
        this.TKC.Sj(this, this.EjP);
        this.TKC.Ym();
    }

    protected void Sj(@NonNull Intent intent) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.Sj(message);
    }

    public void Sj(boolean z10, int i11) {
        Sj(z10, false, i11);
    }

    public void Sj(boolean z10, boolean z11, int i11) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.Sj(z10, z11, false, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public View TEQ() {
        return this.sP.f20992ib.fF();
    }

    protected abstract void TKC();

    protected abstract void TzV();

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Ym() {
        if (!this.sP.sef.getAndSet(true) || uP.TKC(this.sP.sP)) {
            this.sP.LqL.Sj();
        }
    }

    protected void Zq() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void aa() {
    }

    protected void dNu() {
        this.EjP.removeMessages(400);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        if (this.sP == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.utils.uP.HiB()) {
            FPG.sP((Activity) this);
        }
        if (uP.Jcg(this.sP.sP) && !this.sP.TEQ.get()) {
            ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
        } else {
            if (!uP.HiB(this.sP.sP) || this.sP.uP.Dq(Dq.sP)) {
                return;
            }
            ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null) {
            return;
        }
        sj2.ley.Sj();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar;
        if (this.sP == null || (sPVar = this.TKC) == null) {
            super.onBackPressed();
        } else {
            sPVar.ib();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        super.onCreate(bundle);
        com.bytedance.sdk.component.utils.sU.Sj("BVA", "onCreate ".concat(String.valueOf(this)));
        dNu.sP(getApplicationContext());
        if (!com.bytedance.sdk.openadsdk.core.sef.HiB()) {
            finish();
            return;
        }
        sU sUVarSj = com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(getIntent(), bundle, this);
        if (sUVarSj == null) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.utils.sP.Sj(sUVarSj);
        this.uA = sUVarSj.liH();
        Sj(sUVarSj, bundle);
        if (bundle != null) {
            if (sUVarSj.Vd()) {
                this.Fmk.set(true);
            }
            if (sUVarSj.xH() && (sj2 = this.sP) != null) {
                sj2.Fmk.set(true);
            }
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            if (sj3 != null) {
                sj3.LqL.Jcg();
            }
        }
        try {
            Sj();
            dx();
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.BVA", "onCreate: ", th2);
            com.bytedance.sdk.openadsdk.Zq.TKC.sP();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.bytedance.sdk.component.utils.sU.Sj("BVA", "onDestroy ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || this.TKC == null) {
            return;
        }
        if (sj2.Bml > 0 && sj2.Fmk.get()) {
            String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - this.sP.Bml);
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(strValueOf, sj3.sP, this.Sj, sj3.f20992ib.Sj());
            this.sP.Bml = 0L;
        }
        this.sP.LD.sP();
        this.EjP.removeCallbacksAndMessages(null);
        this.TKC.zR();
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.sP.sP);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(this.sP.sP);
        AdSlot adSlotXD = this.sP.sP.xD();
        if (!this.sP.f20992ib.uP() && adSlotXD != null && TextUtils.isEmpty(adSlotXD.getBidAdm()) && !this.sP.sP.ODI()) {
            com.bytedance.sdk.openadsdk.core.sef.sP().post(new Sj(RiZ(), adSlotXD));
        }
        sef.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.bytedance.sdk.component.utils.sU.Sj("BVA", "onPause ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.sU();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        sU sUVar;
        super.onRestart();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || (sUVar = sj2.sP) == null) {
            return;
        }
        if (this.Jcg && !sUVar.Xqg() && !TextUtils.isEmpty(sU.Sj(this, sUVar))) {
            finish();
        }
        if (sUVar.Xqg()) {
            sUVar.HiB(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar;
        super.onResume();
        com.bytedance.sdk.component.utils.sU.Sj("BVA", "onResume ".concat(String.valueOf(this)));
        if (this.sP == null || (sPVar = this.TKC) == null) {
            return;
        }
        sPVar.dNu();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        sj2.qRN = true;
        sj2.ley.sP(this.EjP);
        if (zR()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
            sj3.Mts.Sj(sj3.sP.RrR());
        }
        this.sP.Wjd.Zq();
        this.sP.JcM.zR();
        this.sP.uP.Fmk();
        if (this.TKC.sP()) {
            this.sP.f20992ib.Sj(this.TKC);
            this.sP.f20992ib.Sj(false, this, this.f20956aa != 0);
        }
        this.f20956aa++;
        Fmk();
        com.bytedance.sdk.openadsdk.component.reward.view.Dq dq2 = this.sP.wE;
        if (dq2 != null) {
            dq2.Jcg();
        }
        this.sP.ley.Sj(this.EjP);
        this.TKC.RiZ();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null) {
            super.onSaveInstanceState(bundle);
            return;
        }
        if (sj2.Fmk.get()) {
            this.sP.sP.Dq(true);
        }
        if (this.Fmk.get()) {
            this.sP.sP.AL();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(this.sP, bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.component.utils.sU.Sj("BVA", "onStart ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null) {
            return;
        }
        sj2.JcM.JcM();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.sP.sP);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.bytedance.sdk.component.utils.sU.Sj("BVA", "onStop ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.dx();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        Ym ym2;
        super.onWindowFocusChanged(z10);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 != null && (ym2 = sj2.LqL) != null) {
            ym2.sP(z10);
            this.sP.LqL.TKC(z10);
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
        if (sj3 != null) {
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = sj3.f20994kb;
            if (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.vS) {
                ((com.bytedance.sdk.openadsdk.component.reward.sP.vS) sPVar).sP(z10);
            }
        }
    }

    protected IListenerManager sP(int i11) {
        if (this.HiB == null) {
            this.HiB = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(i11));
        }
        return this.HiB;
    }

    public boolean sU() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void uA() {
        this.sP.f20992ib.LD();
    }

    protected void uvD() {
        Message message = new Message();
        message.what = 400;
        if (RiZ()) {
            Sj(10000);
        }
        this.EjP.sendMessageDelayed(message, 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void vS() {
        if (this.Fmk.compareAndSet(false, true)) {
            com.bytedance.sdk.component.utils.sU.Sj("BVA", "invoke callback onShow, ".concat(String.valueOf(this)));
            Jcg();
        }
    }
}
