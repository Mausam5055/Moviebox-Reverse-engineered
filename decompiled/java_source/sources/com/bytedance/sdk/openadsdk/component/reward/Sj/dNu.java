package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.app.Activity;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.io.File;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;
import u5.b;
import z5.a;

/* JADX INFO: loaded from: classes3.dex */
public class dNu {
    private final sU Dq;
    final boolean EjP;
    private final Activity Jcg;
    private com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj RiZ;
    private final String TEQ;
    boolean TKC;
    private boolean TzV;
    private long Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private long f21005aa;
    private final Sj dNu;
    private com.bytedance.sdk.openadsdk.EjP.Jcg sU;
    private String sef;
    private FrameLayout uA;
    private boolean uvD;
    b vS;
    protected boolean Sj = false;
    boolean sP = false;
    protected boolean HiB = false;
    private int Fmk = -1;
    private HashSet<String> Zq = new HashSet<>();

    public dNu(Sj sj2) {
        this.dNu = sj2;
        this.Jcg = sj2.Fm;
        this.Dq = sj2.sP;
        this.EjP = sj2.EjP;
        this.TEQ = sj2.HiB;
    }

    private void Mts() {
        b bVar = this.vS;
        if (bVar == null || bVar.aa() == null) {
            return;
        }
        this.Ym = this.vS.HiB();
        if (this.vS.aa().TKC() || !this.vS.aa().sP()) {
            this.vS.Sj();
            this.vS.TKC();
            this.Sj = true;
        }
    }

    private boolean Sj(long j11, boolean z10) {
        if (this.vS == null || this.Dq.UHs() == null) {
            return false;
        }
        String strSj = CacheDirFactory.getICacheDir(this.Dq.Gn()).Sj();
        File file = new File(strSj, this.Dq.UHs().G());
        if (file.exists() && file.length() > 0) {
            this.sP = true;
        }
        com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(strSj, this.Dq);
        sPVarSj.sP(this.Dq.aZ());
        sPVarSj.Sj(this.uA.getWidth());
        sPVarSj.sP(this.uA.getHeight());
        sPVarSj.TKC(this.Dq.mZN());
        sPVarSj.Sj(j11);
        sPVarSj.Sj(z10);
        if (this.dNu.sP.EjP() && !this.dNu.wE.Dq() && sU.HiB(this.Dq)) {
            sPVarSj.EjP = 1;
        }
        return this.vS.Sj(sPVarSj);
    }

    private void sP(long j11, long j12) {
        int iAbs = (int) Math.abs(((long) this.Fmk) - j11);
        int i11 = this.Fmk;
        if (i11 < 0 || iAbs > 500 || i11 > j12 || iAbs >= 500 || this.Zq.contains(this.sef)) {
            return;
        }
        if (this.Fmk > j11) {
            com.bytedance.sdk.openadsdk.core.sef.TKC().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.dNu.1
                @Override // java.lang.Runnable
                public void run() {
                    dNu.this.ley();
                    dNu.this.dNu.wE.Sj(dNu.this.Fmk, dNu.this.sef);
                }
            }, iAbs);
        } else {
            ley();
            this.dNu.wE.Sj(this.Fmk, this.sef);
        }
        this.Zq.add(this.sef);
    }

    public long Dq() {
        return this.f21005aa;
    }

    public boolean EjP() {
        b bVar = this.vS;
        return (bVar == null || bVar.aa() == null || !this.vS.aa().Jcg()) ? false : true;
    }

    public void Fmk() {
        b bVar = this.vS;
        if (bVar == null) {
            return;
        }
        bVar.TKC();
        this.vS = null;
    }

    public boolean HiB() {
        b bVar = this.vS;
        return bVar != null && bVar.uvD();
    }

    public void JcM() {
        b bVar = this.vS;
        if (bVar instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) {
            ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) bVar).FPG();
        }
    }

    public long Jcg() {
        b bVar = this.vS;
        return bVar != null ? bVar.HiB() : this.Ym;
    }

    public void LD() {
        b bVar = this.vS;
        if (bVar instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) {
            ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) bVar).JcM();
        }
    }

    public boolean LqL() {
        b bVar = this.vS;
        if (bVar == null || bVar.aa() == null) {
            return false;
        }
        return this.vS.aa().Sj();
    }

    public int RiZ() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar.Jcg();
        }
        return 0;
    }

    public com.bytedance.sdk.openadsdk.EjP.Jcg Sj() {
        return this.sU;
    }

    public void Sj(int i11, int i12) {
        if (this.vS != null) {
            com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj();
            sj2.sP(Ym());
            sj2.TKC(sU());
            sj2.Sj(Jcg());
            sj2.Sj(i11);
            sj2.sP(i12);
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.EjP(this.vS.Fmk(), sj2);
        }
    }

    public void Sj(int i11, String str) {
        this.Fmk = i11;
        this.sef = str;
    }

    public void Sj(long j11) {
        this.Ym = j11;
    }

    public void Sj(long j11, long j12) {
        this.f21005aa = j11;
        sP(j11, j12);
    }

    public void Sj(FrameLayout frameLayout, com.bytedance.sdk.openadsdk.EjP.Jcg jcg) {
        if (this.uvD) {
            return;
        }
        this.uvD = true;
        this.uA = frameLayout;
        this.sU = jcg;
        if (sU.HiB(this.Dq)) {
            this.vS = new com.bytedance.sdk.openadsdk.core.aa.EjP.Sj(this.Jcg, this.uA, this.Dq, jcg);
            TKC(this.TzV);
            com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj interfaceC0272Sj = this.RiZ;
            if (interfaceC0272Sj != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) this.vS).Sj(interfaceC0272Sj);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.TKC tkc = new com.bytedance.sdk.openadsdk.component.reward.TKC(this.Dq, jcg);
        this.vS = tkc;
        com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj interfaceC0272Sj2 = this.RiZ;
        if (interfaceC0272Sj2 != null) {
            tkc.Sj(interfaceC0272Sj2);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.EjP.Jcg jcg) {
        this.sU = jcg;
    }

    public void Sj(com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        if (this.dNu.TEQ.get()) {
            return;
        }
        Sj sj2 = this.dNu;
        if (!sj2.qRN || uP.TKC(sj2.sP)) {
            return;
        }
        if ((!sU.HiB(this.dNu.sP) && com.bytedance.sdk.openadsdk.core.dNu.EjP().Fmk(String.valueOf(this.dNu.vS)) == 1 && this.dNu.wE.EjP()) || com.bytedance.sdk.openadsdk.core.model.TzV.EjP(this.dNu.sP) || com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.dNu.sP) || this.HiB || !sPVar.vS()) {
            return;
        }
        this.dNu.HpB.removeMessages(300);
        Message messageObtain = Message.obtain();
        messageObtain.what = 300;
        this.dNu.HpB.sendMessageDelayed(messageObtain, 5000L);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj interfaceC0272Sj) {
        this.RiZ = interfaceC0272Sj;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar) {
        try {
            this.HiB = false;
            if (vS()) {
                Mts();
                sP(sPVar);
            } else if (EjP()) {
                Zq();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.RFVideoPlayerMag", "onContinue throw Exception :" + th2.getMessage());
        }
    }

    public void Sj(String str, boolean z10) {
        if (this.vS != null) {
            long jJcg = Jcg();
            if (this.Dq.WM()) {
                jJcg = this.dNu.TKC();
            }
            long j11 = jJcg;
            JSONObject jSONObjectSj = Mts.Sj(this.Dq, this.vS.vS(), this.vS.aa());
            try {
                jSONObjectSj.put("auto_click", z10);
            } catch (Exception unused) {
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.Dq, this.TEQ, str, j11, TzV(), jSONObjectSj, this.sU);
            sU();
            TzV();
        }
        JcM();
    }

    public void Sj(b.InterfaceC0935b interfaceC0935b) {
        b bVar = this.vS;
        if (bVar != null) {
            bVar.Sj(interfaceC0935b);
        }
    }

    public void Sj(boolean z10) {
        this.Sj = z10;
    }

    public void Sj(boolean z10, com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar, boolean z11) {
        if (!z11 || z10 || this.HiB) {
            return;
        }
        if (EjP()) {
            Zq();
        } else {
            Mts();
            sP(sPVar);
        }
    }

    public void Sj(boolean z10, String str) {
        b bVar = this.vS;
        if (bVar != null) {
            bVar.Sj(z10, str);
        }
    }

    public boolean Sj(long j11, boolean z10, Map<String, Object> map, com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        boolean zSj = false;
        if (!ib()) {
            return false;
        }
        if (com.bytedance.sdk.openadsdk.core.model.TzV.EjP(this.dNu.sP) || com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.dNu.sP)) {
            return true;
        }
        if (!z10 || !kF()) {
            Sj(sPVar);
        }
        try {
            zSj = Sj(j11, this.dNu.ndK);
        } catch (Exception e11) {
            Log.e("TTAD.RFVideoPlayerMag", "playVideo: ", e11);
        }
        if (zSj && !z10) {
            this.dNu.LqL.Sj(map);
        }
        return zSj;
    }

    public void TEQ() {
        try {
            if (sP()) {
                this.vS.Sj();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("RewardFullVideoPlayerManager onPause throw Exception :" + th2.getMessage(), new Object[0]);
        }
    }

    public a TKC() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar instanceof com.bytedance.sdk.openadsdk.component.reward.TKC ? ((com.bytedance.sdk.openadsdk.component.reward.TKC) bVar).TzV() : bVar.Fmk();
        }
        return null;
    }

    public void TKC(boolean z10) {
        this.TzV = z10;
        if (this.vS instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) {
            if (z10) {
                ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) this.vS).sP(this.Dq.UHs().N());
            } else {
                this.Dq.UHs().s(1);
                ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) this.vS).sP(1);
            }
        }
    }

    public int TzV() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar.TEQ();
        }
        return 0;
    }

    public void WMZ() {
        b bVar = this.vS;
        if (bVar instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) {
            ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) bVar).Wjd();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0041  */
    public double Yf() {
        double dK;
        long jEjP;
        com.bytedance.sdk.openadsdk.component.reward.Ym ym2;
        com.bytedance.sdk.openadsdk.core.model.RiZ riZFmk = this.Dq.Fmk();
        if (!com.bytedance.sdk.openadsdk.core.model.TzV.EjP(this.Dq) || riZFmk == null) {
            if (!com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.Dq) || riZFmk == null) {
                y5.b bVarUHs = this.Dq.UHs();
                dK = bVarUHs != null ? bVarUHs.K() * ((double) bVarUHs.N()) : 0.0d;
            } else {
                jEjP = riZFmk.EjP();
            }
            ym2 = this.dNu.f20995tz;
            if (ym2 != null) {
                ym2.Sj((long) dK);
            }
            return dK;
        }
        jEjP = riZFmk.sP();
        dK = jEjP;
        ym2 = this.dNu.f20995tz;
        if (ym2 != null) {
            ym2.Sj((long) dK);
        }
        return dK;
    }

    public long Ym() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar.vS();
        }
        return 0L;
    }

    public void Zq() {
        b bVar = this.vS;
        if (bVar != null) {
            bVar.sP();
        }
    }

    public t5.a aa() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar.aa();
        }
        return null;
    }

    public long dNu() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar.Dq();
        }
        return 0L;
    }

    public long dx() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar.Dq();
        }
        return 0L;
    }

    public View fF() {
        b bVar = this.vS;
        if (bVar instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) {
            return (View) ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) bVar).Mts();
        }
        return null;
    }

    public boolean ib() {
        return this.vS != null;
    }

    public boolean kF() {
        b bVar = this.vS;
        return bVar != null && bVar.aa() == null;
    }

    public void ley() {
        try {
            if (sP()) {
                this.HiB = true;
                uvD();
            }
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.RFVideoPlayerMag", "onPause throw Exception :" + e11.getMessage());
        }
    }

    protected void sP(com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar) {
        if (!zR() || sPVar == null) {
            return;
        }
        sPVar.Sj(uA(), true);
    }

    public void sP(boolean z10) {
        this.TKC = z10;
    }

    public boolean sP() {
        b bVar = this.vS;
        return (bVar == null || bVar.aa() == null || !this.vS.aa().vS()) ? false : true;
    }

    public long sU() {
        b bVar = this.vS;
        if (bVar != null) {
            return bVar.Dq() + this.vS.vS();
        }
        return 0L;
    }

    public void sef() {
        b bVar = this.vS;
        if (bVar != null) {
            bVar.EjP();
        }
    }

    public long uA() {
        return this.Ym;
    }

    public boolean uP() {
        return this.TKC;
    }

    public void uvD() {
        b bVar = this.vS;
        if (bVar != null) {
            bVar.Sj();
        }
    }

    public boolean vS() {
        return this.Sj;
    }

    public void wE() {
        Fmk();
    }

    public boolean zR() {
        b bVar = this.vS;
        if (bVar != null) {
            if (bVar.aa() != null) {
                t5.a aVarAa = this.vS.aa();
                if (aVarAa.Jcg() || aVarAa.Dq()) {
                    b bVar2 = this.vS;
                    if (bVar2 instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) {
                        ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) bVar2).WMZ();
                    }
                    return true;
                }
            } else if (vS()) {
                Sj(false);
                b bVar3 = this.vS;
                if (bVar3 instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) {
                    ((com.bytedance.sdk.openadsdk.core.aa.EjP.Sj) bVar3).WMZ();
                }
                return true;
            }
        }
        return false;
    }
}
