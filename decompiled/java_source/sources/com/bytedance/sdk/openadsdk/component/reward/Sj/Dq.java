package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.webkit.DownloadListener;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    public static int Sj = 0;
    public static int TKC = 2;
    public static int sP = 1;
    private final boolean EjP;

    @Nullable
    private TEQ HiB;

    @Nullable
    private uA vS;

    public Dq(Sj sj2, sU sUVar) {
        boolean zPR = sUVar.pR();
        this.EjP = zPR;
        if (zPR) {
            this.HiB = uP.vS(sUVar) ? new Jcg(sj2) : new TEQ(sj2);
        } else {
            this.vS = new uA(sj2);
        }
    }

    public void Dq() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.sP();
        }
    }

    public boolean Dq(int i11) {
        if (this.EjP && i11 == sP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                return teq.TEQ();
            }
            return false;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.Dq();
        }
        return false;
    }

    public com.bytedance.sdk.openadsdk.sU.Dq EjP() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.TzV();
        }
        return null;
    }

    public void EjP(boolean z10) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.EjP(z10);
        }
    }

    public boolean EjP(int i11) {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                return teq.uA();
            }
        } else {
            uA uAVar = this.vS;
            if (uAVar != null && uAVar.uA() - this.vS.TEQ() >= i11) {
                return true;
            }
        }
        return false;
    }

    public void Fmk() {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.EjP();
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Ym();
        }
    }

    public void HiB() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.vS();
        }
    }

    public void HiB(int i11) {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.Sj(i11);
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(i11);
        }
    }

    public void HiB(boolean z10) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.HiB(z10);
        }
    }

    public void Jcg(int i11) {
        TEQ teq;
        if (this.EjP && i11 != TKC && (teq = this.HiB) != null) {
            teq.vS();
            return;
        }
        uA uAVar = this.vS;
        if (uAVar == null || i11 == sP) {
            return;
        }
        uAVar.TKC();
    }

    public boolean Jcg() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.Zq();
        }
        return false;
    }

    public void Sj(int i11) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(i11);
        }
    }

    public void Sj(int i11, sU sUVar, boolean z10) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(i11, sUVar, z10);
        }
    }

    public void Sj(int i11, String str, String str2) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(i11, str, str2);
        }
    }

    public void Sj(DownloadListener downloadListener) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(downloadListener);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.aa.vS vSVar, boolean z10) {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.sP(z10);
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(vSVar, z10);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.HiB hiB) {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.Sj(hiB);
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(hiB);
        }
    }

    public void Sj(String str) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.TKC(str);
        }
    }

    public void Sj(JSONObject jSONObject) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(jSONObject);
        }
    }

    public void Sj(boolean z10) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.sP(z10);
        }
    }

    public void Sj(boolean z10, String str, int i11) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(z10, str, i11);
        }
    }

    public boolean Sj() {
        uA uAVar = this.vS;
        return uAVar != null && uAVar.dNu();
    }

    public void TEQ() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.HiB();
        }
    }

    public void TKC(int i11) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.sP(i11);
        }
    }

    public void TKC(String str) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(str);
        }
    }

    public void TKC(boolean z10) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj(z10);
        }
    }

    public boolean TKC() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.uvD();
        }
        return true;
    }

    public void TzV() {
        TEQ teq = this.HiB;
        if (teq != null) {
            teq.TKC();
        }
    }

    public com.bytedance.sdk.openadsdk.aa.HiB Ym() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.sef();
        }
        return null;
    }

    public void Zq() {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.Sj();
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Sj();
        }
    }

    public void aa() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.EjP();
        }
    }

    public void dNu() {
        TEQ teq = this.HiB;
        if (teq != null) {
            teq.Ym();
        }
    }

    public float sP() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.TEQ();
        }
        return 0.0f;
    }

    public int sP(int i11) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.TKC(i11);
        }
        return 0;
    }

    public void sP(String str) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.sP(str);
        }
    }

    public void sP(boolean z10) {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.vS(z10);
        }
    }

    public void sef() {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.Dq();
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Fmk();
        }
    }

    public long uA() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            return uAVar.uA();
        }
        return 0L;
    }

    public void uvD() {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.HiB();
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.aa();
        }
    }

    public void vS() {
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.Jcg();
        }
    }

    public void vS(int i11) {
        if (this.EjP) {
            TEQ teq = this.HiB;
            if (teq != null) {
                teq.Sj(i11);
                return;
            }
            return;
        }
        uA uAVar = this.vS;
        if (uAVar != null) {
            uAVar.HiB(i11);
        }
    }

    public void vS(boolean z10) {
        TEQ teq = this.HiB;
        if (teq != null) {
            teq.TKC(z10);
        }
    }
}
