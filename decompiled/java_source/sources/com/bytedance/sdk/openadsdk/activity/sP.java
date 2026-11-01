package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.aa.TEQ;
import com.bytedance.sdk.openadsdk.component.reward.Ym;
import com.bytedance.sdk.openadsdk.core.HiB.Dq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.google.android.material.card.MaterialCardView;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import y5.b;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static com.bytedance.sdk.openadsdk.Sj.TKC.sP EjP;
    private static com.bytedance.sdk.openadsdk.Sj.HiB.Sj TKC;
    private Activity Fmk;
    private final sU Jcg;
    private boolean LD;
    private Runnable LqL;
    private Dq RiZ;
    public Fmk Sj;
    private com.bytedance.sdk.openadsdk.Sj.TKC.sP TEQ;
    private com.bytedance.sdk.openadsdk.core.HiB.TKC TzV;
    private final TEQ Yf;
    private boolean Ym;
    private int Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20976aa;
    private com.bytedance.sdk.openadsdk.activity.TKC dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private Bundle f20977dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.component.reward.top.TKC f20978ib;
    private AbstractC0246sP kF;
    private int ley;
    public Ym sP;
    private int sU;
    private vS sef;
    private com.bytedance.sdk.openadsdk.Sj.HiB.Sj uA;
    private boolean uP;
    private com.bytedance.sdk.openadsdk.core.HiB.TKC uvD;
    private boolean wE;
    private com.bytedance.sdk.openadsdk.sef.Ym zR;
    private final List<vS> HiB = new ArrayList();
    private List<Integer> vS = new ArrayList();
    private final Bundle Dq = new Bundle();

    static class EjP extends AbstractC0246sP {
        private int Dq;
        private final int Jcg;
        private boolean uA;

        public EjP(sP sPVar, sU sUVar, com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc) {
            super(sPVar, sUVar, tkc);
            if (sUVar == null) {
                this.Jcg = 100;
            } else if (sUVar.LqL() >= 0) {
                this.Jcg = Math.min(100, sUVar.LqL());
            } else {
                this.Jcg = dNu.EjP().ley(String.valueOf(sUVar.If())).vS;
            }
        }

        @Override // com.bytedance.sdk.openadsdk.activity.sP.AbstractC0246sP
        protected int Sj(sU sUVar) {
            if (sUVar != null) {
                return sUVar.uWH();
            }
            return 30;
        }

        @Override // com.bytedance.sdk.openadsdk.activity.sP.AbstractC0246sP, android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (!this.uA && this.EjP <= this.Dq) {
                this.uA = true;
                vS vSVarIb = this.Sj.ib();
                if (vSVarIb instanceof com.bytedance.sdk.openadsdk.activity.HiB) {
                    ((com.bytedance.sdk.openadsdk.activity.HiB) vSVarIb).ib();
                } else if (this.Sj.Sj() && !vSVarIb.kF() && (vSVarIb instanceof com.bytedance.sdk.openadsdk.activity.TKC)) {
                    vS vSVarTEQ = this.Sj.TEQ();
                    if (vSVarTEQ instanceof com.bytedance.sdk.openadsdk.activity.HiB) {
                        ((com.bytedance.sdk.openadsdk.activity.HiB) vSVarTEQ).ib();
                    }
                }
            }
            super.handleMessage(message);
            return true;
        }

        @Override // com.bytedance.sdk.openadsdk.activity.sP.AbstractC0246sP
        public void sP(int i11) {
            boolean z10 = this.HiB == 0;
            int i12 = this.EjP;
            super.sP(i11);
            if (!z10) {
                if (this.TKC < i12) {
                    this.Dq = (int) ((1.0f - (this.Jcg / 100.0f)) * this.EjP);
                    return;
                }
                return;
            }
            if (this.HiB == 1) {
                this.Dq = 3;
            } else {
                this.Dq = (int) ((1.0f - (this.Jcg / 100.0f)) * this.TKC);
            }
            Ym ym2 = this.Sj.sP;
            if (ym2 != null) {
                ym2.Sj(this.EjP);
            }
        }
    }

    public static class HiB {
        public boolean EjP;
        public boolean HiB;
        public final Bundle Sj = new Bundle();
        public final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj TKC;
        public final int sP;

        public HiB(int i11, com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
            this.sP = i11;
            this.TKC = sj2;
        }
    }

    static class Sj extends AbstractC0246sP {
        public Sj(sP sPVar, sU sUVar, com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc) {
            super(sPVar, sUVar, tkc);
        }

        @Override // com.bytedance.sdk.openadsdk.activity.sP.AbstractC0246sP
        protected int Sj(sU sUVar) {
            if (sUVar != null) {
                return sUVar.Sj() >= 0 ? sUVar.Sj() : dNu.EjP().RiZ(String.valueOf(sUVar.If()));
            }
            return 5;
        }
    }

    private static class TKC implements Runnable {
        private final sU Sj;

        public TKC(sU sUVar) {
            this.Sj = sUVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.Sj.ODI()) {
                return;
            }
            if (this.Sj.TT()) {
                com.bytedance.sdk.openadsdk.component.reward.Fmk.Sj(dNu.Sj()).Sj(this.Sj.xD());
            } else {
                com.bytedance.sdk.openadsdk.component.reward.HiB.Sj(dNu.Sj()).Sj(this.Sj.xD());
            }
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.activity.sP$sP, reason: collision with other inner class name */
    static abstract class AbstractC0246sP implements Handler.Callback {
        private final com.bytedance.sdk.openadsdk.component.reward.top.TKC Dq;
        protected int EjP;
        protected int HiB;
        protected final sP Sj;
        private boolean TEQ;
        protected float TKC;
        private boolean Ym;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private boolean f20979aa;
        protected final sU sP;
        private final Context uA;
        private final Handler Jcg = new Handler(Looper.getMainLooper(), this);
        protected int vS = -1;

        public AbstractC0246sP(sP sPVar, sU sUVar, com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc) {
            this.Sj = sPVar;
            this.sP = sUVar;
            this.Dq = tkc;
            this.uA = tkc.getContext();
            this.EjP = Sj(sUVar);
        }

        private void EjP() {
            int i11 = this.vS;
            if (i11 > 0) {
                this.vS = i11 - 1;
            }
            if (this.vS == 0 && this.f20979aa) {
                this.f20979aa = false;
                sP sPVar = this.Sj;
                if (sPVar == null || sPVar.ib() == null) {
                    return;
                }
                vS vSVarIb = this.Sj.ib();
                if (vSVarIb instanceof com.bytedance.sdk.openadsdk.activity.TKC) {
                    ((com.bytedance.sdk.openadsdk.activity.TKC) vSVarIb).uvD();
                }
            }
        }

        private void HiB() {
            if (this.Sj.kF()) {
                this.Dq.showSkipButton();
                this.TEQ = true;
            } else {
                this.Ym = true;
                this.Dq.showCloseButton();
            }
        }

        private void TKC(int i11) {
            if (this.vS > 0 && this.f20979aa && i11 == 3) {
                this.Jcg.removeMessages(i11);
                this.Jcg.sendEmptyMessageDelayed(i11, 1000L);
            }
        }

        protected abstract int Sj(sU sUVar);

        public void Sj() {
            this.Jcg.removeMessages(this.HiB);
        }

        public void Sj(int i11) {
            this.vS = i11;
            if (i11 > 0) {
                this.f20979aa = true;
                if (this.EjP <= 0 || this.TEQ) {
                    TKC(3);
                }
            }
        }

        public void TKC() {
            this.Jcg.removeMessages(this.HiB);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i11 = message.what;
            if (i11 == 1) {
                if (this.EjP > 0) {
                    com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = this.Dq;
                    StringBuilder sb2 = new StringBuilder();
                    int i12 = this.EjP;
                    this.EjP = i12 - 1;
                    sb2.append(i12);
                    sb2.append("s");
                    tkc.setSkipText(sb2.toString());
                    EjP();
                    if (this.EjP >= 0) {
                        this.Jcg.removeMessages(message.what);
                        this.Jcg.sendEmptyMessageDelayed(message.what, 1000L);
                    }
                } else {
                    TKC(3);
                    HiB();
                }
            } else if (i11 == 2) {
                if (this.EjP > 0) {
                    com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc2 = this.Dq;
                    StringBuilder sb3 = new StringBuilder();
                    int i13 = this.EjP;
                    this.EjP = i13 - 1;
                    sb3.append(i13);
                    sb3.append("s");
                    tkc2.setSkipText(sb3.toString());
                    EjP();
                    if (this.EjP >= 0) {
                        this.Jcg.removeMessages(message.what);
                        this.Jcg.sendEmptyMessageDelayed(message.what, 1000L);
                    }
                } else {
                    TKC(3);
                    HiB();
                }
            } else if (i11 == 3 && this.vS > 0) {
                EjP();
                if (this.vS >= 0) {
                    this.Jcg.removeMessages(message.what);
                    this.Jcg.sendEmptyMessageDelayed(message.what, 1000L);
                }
            }
            return true;
        }

        public void sP() {
            sP sPVar = this.Sj;
            if ((sPVar == null || sPVar.ib() == null || this.Sj.ib().zR() == null || !this.Sj.ib().zR().Ym.get()) && this.EjP >= 0 && !this.TEQ && !this.Ym) {
                this.Jcg.removeMessages(this.HiB);
                this.Jcg.sendEmptyMessage(this.HiB);
            }
        }

        public void sP(int i11) {
            if (this.TEQ || this.Ym) {
                return;
            }
            float f11 = i11;
            this.TKC = f11;
            int i12 = this.HiB;
            if (f11 <= this.EjP) {
                this.HiB = 2;
                this.EjP = (int) f11;
            } else if (i12 == 0) {
                this.HiB = 1;
            }
            int i13 = this.HiB;
            if (i12 == i13 && this.Jcg.hasMessages(i13)) {
                return;
            }
            this.Jcg.removeCallbacksAndMessages(null);
            this.Jcg.sendEmptyMessage(this.HiB);
        }
    }

    public sP(Activity activity, sU sUVar) {
        this.Jcg = sUVar;
        this.Fmk = activity;
        this.Yf = new TEQ(activity.getApplicationContext());
        sU();
    }

    private static vS Sj(sP sPVar, sU sUVar, int i11) {
        boolean zTT = sUVar.TT();
        AdSlot adSlotXD = sUVar.xD();
        if (adSlotXD != null) {
            zTT = adSlotXD.getDurationSlotType() == 7;
        }
        return zTT ? new com.bytedance.sdk.openadsdk.activity.HiB(sPVar, sUVar, i11) : new com.bytedance.sdk.openadsdk.activity.EjP(sPVar, sUVar, i11);
    }

    private void Sj(int i11, boolean z10) {
        if (!Sj() || vS() == null) {
            if (z10 || uP.TKC(this.Jcg)) {
                this.HiB.add(new com.bytedance.sdk.openadsdk.activity.TKC(this, this.Jcg, i11));
            } else if (sP()) {
                dx();
            }
        }
    }

    private void Sj(vS vSVar, vS vSVar2, HiB hiB) {
        if (this.Ym) {
            if (Sj()) {
                if (this.kF == null) {
                    if (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.EjP) {
                        this.kF = new Sj(this, this.Jcg, this.f20978ib);
                    } else {
                        this.kF = new EjP(this, this.Jcg, this.f20978ib);
                    }
                }
                int iSj = 0;
                for (int i11 = vSVar2.uA; i11 < this.HiB.size(); i11++) {
                    vS vSVar3 = this.HiB.get(i11);
                    if (vSVar3.kF()) {
                        break;
                    }
                    if (vSVar3 instanceof com.bytedance.sdk.openadsdk.activity.Sj) {
                        b bVarUHs = vSVar3.Dq.UHs();
                        iSj = bVarUHs != null ? (int) (((double) iSj) + bVarUHs.K()) : (int) (((long) iSj) + 10);
                    } else if (vSVar3 instanceof com.bytedance.sdk.openadsdk.activity.TKC) {
                        iSj += vSVar3.Dq.hLo().Sj();
                    }
                }
                this.kF.sP(iSj);
                if (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.TKC) {
                    if (vSVar2.kF()) {
                        TKC(vSVar);
                    } else {
                        this.kF.Sj(vSVar2.Dq.hLo().Sj());
                    }
                }
                Fmk fmk = this.Sj;
                if (fmk != null && vSVar == null) {
                    fmk.Sj(iSj * 1000);
                }
                if (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.Sj) {
                    this.Zq++;
                    Sj(0.0f);
                    this.RiZ.setText(this.Fmk.getString(ib.sP(dNu.Sj(), "tt_multiple_ad_indicator"), Integer.valueOf(Sj(vSVar2) + 1), Integer.valueOf(this.ley)));
                    this.RiZ.setVisibility(0);
                } else {
                    this.RiZ.setVisibility(8);
                }
            } else {
                boolean z10 = vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.Sj;
                if (z10) {
                    this.Zq++;
                    Sj(0.0f);
                    if (this.kF == null) {
                        if (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.EjP) {
                            this.kF = new Sj(this, this.Jcg, this.f20978ib);
                        } else {
                            this.kF = new EjP(this, this.Jcg, this.f20978ib);
                        }
                    }
                    int iK = 0;
                    for (int i12 = vSVar2.uA; i12 < this.HiB.size(); i12++) {
                        vS vSVar4 = this.HiB.get(i12);
                        if (vSVar4 instanceof com.bytedance.sdk.openadsdk.activity.TKC) {
                            break;
                        }
                        b bVarUHs2 = vSVar4.Dq.UHs();
                        iK = bVarUHs2 != null ? (int) (((double) iK) + bVarUHs2.K()) : (int) (((long) iK) + 10);
                    }
                    this.kF.sP(iK);
                    Fmk fmk2 = this.Sj;
                    if (fmk2 != null && vSVar == null) {
                        fmk2.Sj(iK * 1000);
                    }
                } else if (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.TKC) {
                    TKC(vSVar);
                }
                if (z10) {
                    this.RiZ.setText(this.Fmk.getString(ib.sP(dNu.Sj(), "tt_multiple_ad_indicator"), Integer.valueOf(vSVar2.uA + 1), Integer.valueOf(this.ley)));
                } else {
                    this.RiZ.setVisibility(8);
                }
            }
        }
        for (int i13 = vSVar != null ? vSVar.uA : 0; i13 < this.HiB.size(); i13++) {
            this.HiB.get(i13).Sj(vSVar, vSVar2, hiB);
        }
        vSVar2.Sj(this.Fmk, this.f20977dx);
        int i14 = this.sU;
        if (i14 == 2) {
            vSVar2.EjP(this.Fmk);
            return;
        }
        if (i14 == 3) {
            vSVar2.EjP(this.Fmk);
            vSVar2.sP(this.Fmk);
            vSVar2.sP(true);
        } else if (i14 == 4) {
            vSVar2.sP(false);
            vSVar2.HiB(this.Fmk);
        } else {
            if (i14 != 5) {
                return;
            }
            vSVar2.TKC(this.Fmk);
        }
    }

    private void TKC(vS vSVar) {
        com.bytedance.sdk.openadsdk.sef.Ym ym2 = this.zR;
        if (ym2 != null) {
            FPG.Jcg(ym2);
            this.zR = null;
        }
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = this.f20978ib;
        if (tkc != null) {
            FPG.Jcg(tkc);
            FPG.Jcg(this.f20978ib.getITopLayout());
            this.f20978ib = null;
        }
        AbstractC0246sP abstractC0246sP = this.kF;
        if (abstractC0246sP != null) {
            abstractC0246sP.TKC();
        }
        if (vSVar instanceof com.bytedance.sdk.openadsdk.activity.HiB) {
            ((com.bytedance.sdk.openadsdk.activity.HiB) vSVar).ib();
        }
        Fmk fmk = this.Sj;
        if (fmk != null) {
            fmk.TKC();
        }
    }

    private void TKC(vS vSVar, HiB hiB) {
        if (this.Fmk == null) {
            return;
        }
        TKC();
        if (vSVar == null) {
            vS vSVar2 = this.sef;
            int i11 = vSVar2 != null ? vSVar2.uA + 1 : 0;
            if (i11 < this.HiB.size()) {
                vSVar = this.HiB.get(i11);
            }
            if (vSVar == null) {
                sP(this.sef);
                return;
            }
        }
        vS vSVar3 = this.sef;
        if (vSVar3 != null) {
            if (vSVar3 == vSVar) {
                return;
            }
            vSVar3.HiB(this.Fmk);
            this.sef.TKC(this.Fmk);
            View viewSj = this.sef.Sj();
            if (viewSj != null) {
                this.TzV.removeView(viewSj);
            }
            this.sef.Zq();
            this.sef.TEQ = false;
            if (Sj()) {
                vS vSVar4 = this.sef;
                if (vSVar4 instanceof com.bytedance.sdk.openadsdk.activity.Sj) {
                    int i12 = vSVar4.uA + 1;
                    vS vSVar5 = i12 < this.HiB.size() ? this.HiB.get(i12) : null;
                    if ((vSVar5 instanceof com.bytedance.sdk.openadsdk.activity.TKC) && vSVar5 != vSVar) {
                        View viewSj2 = vSVar5.Sj();
                        if (viewSj2 != null && viewSj2.getParent() != null && (viewSj2.getParent() instanceof ViewGroup)) {
                            ((ViewGroup) viewSj2.getParent()).removeView(viewSj2);
                        }
                        vSVar5.Zq();
                    }
                }
            }
        }
        vSVar.TEQ = true;
        vSVar.Sj(this.Fmk, hiB);
        View viewSj3 = vSVar.Sj();
        if (viewSj3 != null) {
            ViewParent parent = viewSj3.getParent();
            if (parent != null) {
                if (parent == this.TzV) {
                    viewSj3.setVisibility(0);
                } else if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(viewSj3);
                }
            }
            if (viewSj3.getParent() == null) {
                this.TzV.addView(viewSj3, new ViewGroup.LayoutParams(-1, -1));
            }
            if (!this.LD) {
                ViewParent parent2 = this.uvD.getParent();
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(this.uvD);
                }
                this.Fmk.setContentView(this.uvD);
                this.LD = true;
            }
        }
        vS vSVar6 = this.sef;
        this.sef = vSVar;
        Sj(vSVar6, vSVar, hiB);
    }

    private void dx() {
        this.Sj = com.bytedance.sdk.openadsdk.utils.Dq.Sj(this.Fmk, new com.bytedance.sdk.openadsdk.utils.Dq.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.sP.2
            @Override // com.bytedance.sdk.openadsdk.utils.Dq.Sj
            public View Sj() {
                if (sP.this.f20978ib != null) {
                    return sP.this.f20978ib.getCloseButton();
                }
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Dq.Sj
            public void sP() {
                if (sP.this.f20978ib != null) {
                    sP.this.f20978ib.setSkipInvisiable();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public vS ib() {
        return this.sef;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean kF() {
        if (this.HiB.isEmpty()) {
            return false;
        }
        List<vS> list = this.HiB;
        return list.get(list.size() - 1) instanceof com.bytedance.sdk.openadsdk.activity.TKC;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0075 A[PHI: r5
  0x0075: PHI (r5v3 int) = (r5v2 int), (r5v2 int), (r5v4 int), (r5v4 int) binds: [B:7:0x0035, B:12:0x003e, B:17:0x0055, B:19:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    private int sP(int i11, boolean z10) {
        com.bytedance.sdk.openadsdk.core.model.Sj sjCBE;
        List<sU> listEjP = ((dx) this.Jcg).CBE().EjP();
        if (listEjP != null) {
            int size = listEjP.size();
            int i12 = 0;
            while (i12 < size) {
                sU sUVar = listEjP.get(i12);
                this.HiB.add(Sj(this, sUVar, i11));
                this.vS.add(Integer.valueOf(i11));
                int i13 = i11 + 1;
                if (Sj()) {
                    boolean z11 = i12 == size + (-1);
                    if (z10) {
                        if (!z11 && Sj(sUVar)) {
                            this.HiB.add(new com.bytedance.sdk.openadsdk.activity.TKC(this, sUVar, i13));
                            i13 = i11 + 2;
                        }
                        if (!z11 || (sjCBE = ((dx) this.Jcg).CBE()) == null) {
                            i11 = i13;
                        } else {
                            dx dxVar = new dx(sjCBE, sUVar);
                            i11 = i13 + 1;
                            com.bytedance.sdk.openadsdk.activity.TKC tkc = new com.bytedance.sdk.openadsdk.activity.TKC(this, dxVar, i13);
                            this.dNu = tkc;
                            this.HiB.add(tkc);
                        }
                    } else {
                        i11 = i13;
                    }
                } else {
                    i11 = i13;
                }
                this.ley++;
                i12++;
            }
        }
        return i11;
    }

    private void sU() {
        boolean zSef = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().sef(String.valueOf(this.Jcg.If()));
        int iSP = zR() ? sP(0, zSef) : 0;
        if (this.HiB.isEmpty() && !uP.TKC(this.Jcg)) {
            this.HiB.add(Sj(this, this.Jcg, iSP));
            iSP++;
        }
        Sj(iSP, zSef);
        if (this.Jcg.TT()) {
            this.sP = new Ym(new Ym.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.sP.1
                @Override // com.bytedance.sdk.openadsdk.component.reward.Ym.Sj
                public void Sj() {
                    if (sP.this.Ym().getBoolean("reward_verify", false) || sP.this.Zq() || sP.this.Ym().getBoolean("user_has_give_up_reward", false)) {
                        return;
                    }
                    for (vS vSVar : sP.this.HiB) {
                        if (vSVar instanceof com.bytedance.sdk.openadsdk.activity.HiB) {
                            ((com.bytedance.sdk.openadsdk.activity.HiB) vSVar).TKC(1);
                            return;
                        } else if (vSVar instanceof com.bytedance.sdk.openadsdk.activity.TKC) {
                            ((com.bytedance.sdk.openadsdk.activity.TKC) vSVar).sP(1);
                            return;
                        }
                    }
                }
            });
        }
    }

    private boolean zR() {
        com.bytedance.sdk.openadsdk.core.model.Sj sjCBE;
        sU sUVar = this.Jcg;
        boolean z10 = false;
        if (!(sUVar instanceof dx) || (sjCBE = ((dx) sUVar).CBE()) == null) {
            return false;
        }
        boolean z11 = sjCBE.aa() && com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eI();
        this.Ym = z11;
        if (z11 && 39 == this.Jcg.dx()) {
            z10 = true;
        }
        this.f20976aa = z10;
        return this.Ym;
    }

    public int Dq() {
        return this.Zq;
    }

    public Activity EjP() {
        return this.Fmk;
    }

    public void EjP(TTAdActivity tTAdActivity) {
        this.sU = 5;
        vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.TKC(tTAdActivity);
        }
    }

    public void Fmk() {
        com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2 = this.uA;
        if (sj2 != null) {
            sj2.sP();
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.sP();
        }
    }

    public void HiB() {
        vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.dNu();
        }
    }

    public void HiB(TTAdActivity tTAdActivity) {
        this.sU = 6;
        int iTKC = TKC();
        for (vS vSVar : this.HiB) {
            if (vSVar.uA >= iTKC) {
                vSVar.Zq();
            }
        }
        vS vSVar2 = this.sef;
        if (vSVar2 != null) {
            vSVar2.LqL();
        }
        vS vSVar3 = this.sef;
        if (vSVar3 != null && !vSVar3.RiZ() && !this.Jcg.ODI()) {
            sef.sP().post(new TKC(this.Jcg));
        }
        AbstractC0246sP abstractC0246sP = this.kF;
        if (abstractC0246sP != null) {
            abstractC0246sP.TKC();
        }
        Fmk fmk = this.Sj;
        if (fmk != null) {
            fmk.TKC();
        }
        this.sef = null;
        this.Fmk = null;
    }

    public com.bytedance.sdk.openadsdk.activity.Sj Jcg() {
        vS vSVar;
        vS vSVar2 = this.sef;
        if (vSVar2 == null) {
            return null;
        }
        int i11 = vSVar2.uA;
        do {
            i11++;
            if (i11 >= this.HiB.size()) {
                return null;
            }
            vSVar = this.HiB.get(i11);
        } while (!(vSVar instanceof com.bytedance.sdk.openadsdk.activity.Sj));
        return (com.bytedance.sdk.openadsdk.activity.Sj) vSVar;
    }

    public TEQ RiZ() {
        return this.Yf;
    }

    public int Sj(vS vSVar) {
        int iIndexOf;
        if (vSVar != null && (iIndexOf = this.vS.indexOf(Integer.valueOf(vSVar.uA))) >= 0) {
            return Math.min(iIndexOf, this.ley - 1);
        }
        return 0;
    }

    public void Sj(float f11) {
        com.bytedance.sdk.openadsdk.sef.Ym ym2 = this.zR;
        if (ym2 == null) {
            return;
        }
        ym2.setProgress(f11);
        if (f11 == 0.0f && this.zR.getVisibility() == 0) {
            this.zR.setVisibility(4);
        } else {
            if (f11 <= 0.0f || this.zR.getVisibility() == 0) {
                return;
            }
            this.zR.setVisibility(0);
        }
    }

    public void Sj(int i11) {
        AbstractC0246sP abstractC0246sP = this.kF;
        if (abstractC0246sP == null) {
            return;
        }
        if (i11 == 2) {
            abstractC0246sP.Sj();
            Fmk fmk = this.Sj;
            if (fmk != null) {
                fmk.sP();
                return;
            }
            return;
        }
        if (i11 == 1) {
            abstractC0246sP.sP();
            Fmk fmk2 = this.Sj;
            if (fmk2 != null) {
                fmk2.Sj();
            }
        }
    }

    public void Sj(Activity activity) {
        vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.Sj(activity);
        }
    }

    public void Sj(View view) {
        if (view.getParent() != null) {
            return;
        }
        view.setVisibility(4);
        this.TzV.addView(view, 0);
    }

    public void Sj(View view, boolean z10) {
        if (view.getParent() == null && this.TzV != null) {
            view.setVisibility(4);
            int childCount = this.TzV.getChildCount();
            if (z10) {
                this.TzV.addView(view, 0);
            } else {
                this.TzV.addView(view, childCount - 1);
            }
        }
    }

    public void Sj(TTAdActivity tTAdActivity) {
        this.sU = 2;
        vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.EjP(tTAdActivity);
        }
    }

    public void Sj(TTAdActivity tTAdActivity, Bundle bundle) {
        com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2 = this.uA;
        if (sj2 != null) {
            TKC = sj2;
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar = this.TEQ;
        if (sPVar != null) {
            EjP = sPVar;
        }
    }

    public void Sj(TTAdActivity tTAdActivity, Bundle bundle, com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2, com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar) {
        this.f20977dx = bundle;
        this.sU = 1;
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(tTAdActivity);
        this.uvD = tkc;
        if (Build.VERSION.SDK_INT >= 35) {
            tkc.setFitsSystemWindows(true);
        }
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(tTAdActivity);
        this.TzV = tkc2;
        this.uvD.addView(tkc2, new FrameLayout.LayoutParams(-1, -1));
        if (this.Ym) {
            this.zR = new com.bytedance.sdk.openadsdk.sef.Ym(tTAdActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, FPG.sP(tTAdActivity, 2.0f));
            layoutParams.gravity = 80;
            this.uvD.addView(this.zR, layoutParams);
            Dq dq2 = new Dq(tTAdActivity);
            this.RiZ = dq2;
            dq2.setTextColor(-1);
            this.RiZ.setTextSize(15.0f);
            this.RiZ.setShadowLayer(1.0f, 0.0f, 1.0f, ViewCompat.MEASURED_STATE_MASK);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.topMargin = FPG.sP(tTAdActivity, 60.0f);
            layoutParams2.rightMargin = FPG.sP(tTAdActivity, 16.0f);
            layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
            this.uvD.addView(this.RiZ, layoutParams2);
            com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc3 = new com.bytedance.sdk.openadsdk.component.reward.top.TKC(tTAdActivity);
            this.f20978ib = tkc3;
            this.uvD.addView(tkc3, new FrameLayout.LayoutParams(-1, -2));
            this.f20978ib.Sj(this.Jcg);
            this.f20978ib.setShowDislike(true);
        }
        this.uA = sj2;
        this.TEQ = sPVar;
        if (sj2 == null && bundle != null) {
            this.uA = TKC;
            TKC = null;
        }
        if (sPVar == null && bundle != null) {
            this.TEQ = EjP;
            EjP = null;
        }
        TKC(null, new HiB(1, null));
    }

    public void Sj(vS vSVar, HiB hiB) {
        vS vSVar2 = this.sef;
        if (vSVar2 == null || vSVar2 == vSVar) {
            TKC(null, hiB);
        }
    }

    public void Sj(final vS vSVar, final boolean z10, final int i11, final String str, final int i12, final String str2) {
        Activity activity;
        if (!this.uP) {
            this.LqL = new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.sP.4
                @Override // java.lang.Runnable
                public void run() {
                    sP.this.Sj(vSVar, z10, i11, str, i12, str2);
                }
            };
            return;
        }
        if (Zq()) {
            return;
        }
        uvD();
        if (this.uA == null || (activity = this.Fmk) == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.sP.5
            @Override // java.lang.Runnable
            public void run() {
                sP.this.uA.Sj(z10, i11, str, i12, str2);
            }
        });
        if (sP()) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), vSVar.Dq, vSVar.b_(), z10 ? "reward_success" : "reward_fail");
        }
    }

    public void Sj(vS vSVar, boolean z10, boolean z11, boolean z12, int i11) {
        com.bytedance.sdk.openadsdk.activity.TKC tkcVS;
        vS vSVar2 = this.sef;
        if ((vSVar2 == null || vSVar2 == vSVar) && (tkcVS = vS()) != null) {
            HiB hiB = new HiB(i11, vSVar != null ? vSVar.zR() : null);
            hiB.Sj.putBoolean("isSkip", z10);
            hiB.Sj.putBoolean("force", z11);
            hiB.Sj.putBoolean("isFromLandingPage", z12);
            TKC(tkcVS, hiB);
        }
    }

    public void Sj(boolean z10) {
        vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.sP(z10);
        }
    }

    public boolean Sj() {
        return this.f20976aa;
    }

    public boolean Sj(sU sUVar) {
        return (sUVar == null || sUVar.hLo() == null || sUVar.hLo().Sj() <= 0) ? false : true;
    }

    @Nullable
    public vS TEQ() {
        int i11;
        vS vSVar = this.sef;
        if (vSVar != null && (i11 = vSVar.uA - 1) >= 0 && i11 < this.HiB.size()) {
            return this.HiB.get(i11);
        }
        return null;
    }

    public int TKC() {
        vS vSVar = this.sef;
        if (vSVar != null) {
            return vSVar.uA;
        }
        return -1;
    }

    public void TKC(TTAdActivity tTAdActivity) {
        this.sU = 4;
        vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.HiB(tTAdActivity);
        }
        AbstractC0246sP abstractC0246sP = this.kF;
        if (abstractC0246sP != null) {
            abstractC0246sP.Sj();
        }
        Fmk fmk = this.Sj;
        if (fmk != null) {
            fmk.sP();
        }
        Ym ym2 = this.sP;
        if (ym2 != null) {
            ym2.Sj();
        }
    }

    public void TzV() {
        this.uP = true;
    }

    public Bundle Ym() {
        return this.Dq;
    }

    public boolean Zq() {
        return this.wE;
    }

    public void aa() {
        com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2 = this.uA;
        if (sj2 != null) {
            sj2.onAdClicked();
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.onAdClicked();
        }
    }

    public boolean dNu() {
        return this.uP;
    }

    public void sP(TTAdActivity tTAdActivity) {
        this.sU = 3;
        vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.sP(tTAdActivity);
        }
        AbstractC0246sP abstractC0246sP = this.kF;
        if (abstractC0246sP != null) {
            abstractC0246sP.sP();
        }
        Fmk fmk = this.Sj;
        if (fmk != null) {
            fmk.Sj();
        }
        Ym ym2 = this.sP;
        if (ym2 != null) {
            ym2.sP();
        }
    }

    public void sP(vS vSVar) {
        Activity activity = this.Fmk;
        if (activity != null) {
            activity.finish();
        }
    }

    public void sP(vS vSVar, HiB hiB) {
        vS vSVar2 = this.sef;
        if (vSVar2 == null || vSVar2 == vSVar) {
            if (vSVar2 != null && (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.Sj)) {
                final long jDq = (vSVar2.zR() == null || this.sef.zR().f20992ib == null) ? 0L : this.sef.zR().f20992ib.Dq();
                final int iSj = (Sj() ? Sj(this.sef) : this.sef.uA) + 1;
                long jCurrentTimeMillis = System.currentTimeMillis();
                vS vSVar3 = this.sef;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(jCurrentTimeMillis, vSVar3.Dq, vSVar3.b_(), "dislike_skip", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.sP.3
                    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                    public JSONObject Sj() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("duration", jDq);
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(iSj, jSONObject);
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                        return jSONObject;
                    }
                });
            }
            TKC(Jcg(), hiB);
        }
    }

    public boolean sP() {
        return this.Ym;
    }

    public boolean sP(int i11) {
        return i11 == this.HiB.size() - 1 && this.HiB.get(i11) != null && (this.HiB.get(i11) instanceof com.bytedance.sdk.openadsdk.activity.TKC);
    }

    public void sef() {
        if (dNu()) {
            return;
        }
        TzV();
        com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2 = this.uA;
        if (sj2 != null) {
            sj2.Sj();
        } else {
            com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar = this.TEQ;
            if (sPVar != null) {
                sPVar.Sj();
            }
        }
        Runnable runnable = this.LqL;
        if (runnable != null) {
            runnable.run();
            this.LqL = null;
        }
    }

    public com.bytedance.sdk.openadsdk.component.reward.top.TKC uA() {
        return this.f20978ib;
    }

    public void uvD() {
        this.wE = true;
        Ym ym2 = this.sP;
        if (ym2 != null) {
            ym2.TKC();
        }
    }

    public com.bytedance.sdk.openadsdk.activity.TKC vS() {
        com.bytedance.sdk.openadsdk.activity.TKC tkc = this.dNu;
        if (tkc != null) {
            return tkc;
        }
        vS vSVar = this.sef;
        int i11 = vSVar != null ? vSVar.uA : -1;
        for (int size = this.HiB.size() - 1; size > i11; size--) {
            vS vSVar2 = this.HiB.get(size);
            if (vSVar2 instanceof com.bytedance.sdk.openadsdk.activity.TKC) {
                this.dNu = (com.bytedance.sdk.openadsdk.activity.TKC) vSVar2;
                break;
            }
        }
        return this.dNu;
    }
}
