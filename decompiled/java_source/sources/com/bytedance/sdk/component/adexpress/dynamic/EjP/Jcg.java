package com.bytedance.sdk.component.adexpress.dynamic.EjP;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {
    private vS EjP;
    private HiB HiB;
    public int Sj;
    public JSONObject TKC;
    public String sP;
    private String vS;

    public Jcg(HiB hiB) {
        this.HiB = hiB;
        this.Sj = hiB.Sj();
        this.sP = hiB.TKC();
        this.TKC = hiB.HiB().Uc();
        this.vS = hiB.EjP();
        if (com.bytedance.sdk.component.adexpress.EjP.TKC() == 1) {
            this.EjP = hiB.Jcg();
        } else {
            this.EjP = hiB.HiB();
        }
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            this.EjP = hiB.HiB();
        }
    }

    private boolean HcZ() {
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.sP) && this.sP.contains("adx:")) || Ym.sP();
    }

    public static int Sj(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (str.equals(TmcStartParams.KEY_TRANSPARENT)) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (str.startsWith("rgba") && (strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",")) != null) {
            try {
                if (strArrSplit.length == 4) {
                    return (((int) ((Float.parseFloat(strArrSplit[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(strArrSplit[0])) << 16) | (((int) Float.parseFloat(strArrSplit[1])) << 8) | ((int) Float.parseFloat(strArrSplit[2]));
                }
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return ViewCompat.MEASURED_STATE_MASK;
    }

    private boolean mZN() {
        return (com.bytedance.sdk.component.adexpress.EjP.sP() && (this.HiB.sP().contains("logo-union") || this.HiB.sP().contains("logounion") || this.HiB.sP().contains("logoad"))) || "logo-union".equals(this.HiB.sP()) || "logounion".equals(this.HiB.sP()) || "logoad".equals(this.HiB.sP());
    }

    public static float[] sP(String str) {
        String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        return (strArrSplit == null || strArrSplit.length != 4) ? new float[]{0.0f, 0.0f, 0.0f, 0.0f} : new float[]{Float.parseFloat(strArrSplit[0]), Float.parseFloat(strArrSplit[1]), Float.parseFloat(strArrSplit[2]), Float.parseFloat(strArrSplit[3])};
    }

    public int Bml() {
        return this.EjP.WMZ();
    }

    public int Chv() {
        return this.EjP.JcM();
    }

    public int Dq() {
        String strDx = this.EjP.dx();
        if (TtmlNode.LEFT.equals(strDx)) {
            return 17;
        }
        if (TtmlNode.CENTER.equals(strDx)) {
            return 4;
        }
        return TtmlNode.RIGHT.equals(strDx) ? 3 : 2;
    }

    public boolean EZ() {
        return this.EjP.fF();
    }

    public String Ei() {
        return this.EjP.Wjd();
    }

    public int EjP() {
        return (int) this.EjP.uvD();
    }

    public String FPG() {
        return this.EjP.TEQ();
    }

    public int Fm() {
        return this.EjP.aZ();
    }

    public double Fmk() {
        if (this.Sj == 11) {
            try {
                double d11 = Double.parseDouble(this.sP);
                return !com.bytedance.sdk.component.adexpress.EjP.sP() ? (int) d11 : d11;
            } catch (NumberFormatException unused) {
            }
        }
        return -1.0d;
    }

    public int HS() {
        return this.EjP.nP();
    }

    public float HiB() {
        return this.EjP.TzV();
    }

    public boolean HpB() {
        return this.EjP.AVc();
    }

    public String IOh() {
        return this.EjP.tX();
    }

    public int Ir() {
        return this.EjP.tY();
    }

    public int JcM() {
        return this.EjP.HiB();
    }

    public int Jcg() {
        return Sj(this.EjP.zR());
    }

    public int LD() {
        return this.EjP.TKC();
    }

    public int LqL() {
        return Sj(this.EjP.ib());
    }

    public int Mts() {
        return this.EjP.uA();
    }

    public String MuB() {
        return this.EjP.dLt();
    }

    public int RiZ() {
        return this.EjP.hzV();
    }

    public int Sj() {
        return (int) this.EjP.sef();
    }

    public void Sj(float f11) {
        this.EjP.Sj(f11);
    }

    public boolean Sj(int i11) {
        HiB hiB = this.HiB;
        if (hiB == null) {
            return false;
        }
        if (i11 == 1) {
            this.EjP = hiB.Jcg();
        } else {
            this.EjP = hiB.HiB();
        }
        return this.EjP != null;
    }

    public String TEQ() {
        int i11 = this.Sj;
        return (i11 == 2 || i11 == 13) ? this.sP : "";
    }

    public String TFd() {
        return this.EjP.uP();
    }

    public int TKC() {
        return (int) this.EjP.Zq();
    }

    public int TzV() {
        return this.EjP.Ph();
    }

    public int UHs() {
        return this.EjP.TO();
    }

    public String Uc() {
        return this.EjP.tPD();
    }

    public int WMZ() {
        return this.EjP.EjP();
    }

    public String Wjd() {
        return this.EjP.Fm();
    }

    public double Yf() {
        return this.EjP.Dq();
    }

    public String Ym() {
        return this.Sj == 1 ? this.sP : "";
    }

    public float Zq() {
        return this.EjP.Ym();
    }

    public double aNB() {
        return this.EjP.Mts();
    }

    public int aZ() {
        return this.EjP.liH();
    }

    public String aa() {
        return this.vS;
    }

    public double cX() {
        return this.EjP.FPG();
    }

    public float dNu() {
        return this.EjP.aa();
    }

    public int db() {
        return this.EjP.gq();
    }

    public boolean dwU() {
        return this.EjP.SP();
    }

    public String dx() {
        return this.EjP.kF();
    }

    public int fF() {
        return this.EjP.sP();
    }

    public boolean gR() {
        return this.EjP.QZ();
    }

    public String gY() {
        return this.EjP.LD();
    }

    public int ib() {
        return this.EjP.xhi();
    }

    public int jb() {
        return this.EjP.Ir();
    }

    public String kF() {
        return this.EjP.xD();
    }

    public int kb() {
        return this.EjP.zwV();
    }

    public int ley() {
        String strXD = this.EjP.xD();
        if ("skip-with-time-skip-btn".equals(this.HiB.sP()) || "skip".equals(this.HiB.sP()) || TextUtils.equals("skip-with-countdowns-skip-btn", this.HiB.sP())) {
            return 6;
        }
        if (!"skip-with-time-countdown".equals(this.HiB.sP()) && !"skip-with-time".equals(this.HiB.sP())) {
            if (this.Sj == 10 && TextUtils.equals(this.EjP.Fm(), "click")) {
                return 5;
            }
            if (mZN() && HcZ()) {
                return 0;
            }
            if (mZN()) {
                return 7;
            }
            if ("feedback-dislike".equals(this.HiB.sP())) {
                return 3;
            }
            if (!TextUtils.isEmpty(strXD) && !strXD.equals("none")) {
                if (strXD.equals("video") || (this.HiB.Sj() == 7 && TextUtils.equals(strXD, "normal"))) {
                    return (com.bytedance.sdk.component.adexpress.EjP.sP() && this.HiB.HiB() != null && this.HiB.HiB().vb()) ? 11 : 4;
                }
                if (strXD.equals("normal")) {
                    return 1;
                }
                return (strXD.equals("creative") || "slide".equals(this.EjP.Fm())) ? 2 : 0;
            }
        }
        return 0;
    }

    public int ndK() {
        return this.EjP.Grp();
    }

    public boolean pfr() {
        return this.EjP.Fmk();
    }

    public int qRN() {
        return this.EjP.RrR();
    }

    public int sP() {
        return (int) this.EjP.dNu();
    }

    public boolean sU() {
        return this.EjP.GMp();
    }

    public String sdp() {
        return this.EjP.Yf();
    }

    public double sef() {
        return this.EjP.RiZ();
    }

    public boolean tz() {
        return this.EjP.SP();
    }

    public int uA() {
        int iDq = Dq();
        if (iDq == 4) {
            return 17;
        }
        return iDq == 3 ? GravityCompat.END : GravityCompat.START;
    }

    public String uP() {
        return this.EjP.DPc();
    }

    public int uvD() {
        return Sj(this.EjP.wE());
    }

    public String vS() {
        if (this.Sj == 0) {
            return !TextUtils.isEmpty(this.sP) ? this.sP : this.TKC.optString(com.bytedance.sdk.component.adexpress.EjP.Jcg.TKC(com.bytedance.sdk.component.adexpress.EjP.Sj()));
        }
        return "";
    }

    public long wE() {
        return this.EjP.xzt();
    }

    public boolean xD() {
        return this.EjP.gR();
    }

    public int xhi() {
        return this.EjP.Jcg();
    }

    public String xu() {
        return this.EjP.eI();
    }

    public boolean zR() {
        return this.EjP.HpB();
    }
}
