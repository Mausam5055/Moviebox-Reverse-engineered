package com.bytedance.sdk.openadsdk.core.model;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import com.cloud.config.utils.CommonUtils;
import j6.a;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import y5.b;

/* JADX INFO: loaded from: classes3.dex */
public abstract class sU {
    protected boolean Sj;
    protected long TEQ;
    protected int uA;
    public static final String TKC = a.a("_", new CharSequence[]{"is", Mts.kF()});
    public static final String EjP = a.a("_", new CharSequence[]{"is", Mts.kF(), "sample"});
    public static final String HiB = a.a("_", new CharSequence[]{Mts.kF(), "strategy"});

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected static int f21074aa = 330;
    private long Fmk = 0;
    protected boolean sP = false;
    protected boolean vS = com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj;
    protected int Jcg = com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP;
    protected String Dq = com.bytedance.sdk.openadsdk.kF.Sj.TKC.TKC;
    protected int Ym = 0;

    public static class Sj {
        private List<Integer> Dq;
        private String EjP;
        private String Fmk;
        private String HiB;
        private String Jcg;
        private String Sj;
        private String TEQ;
        private String TKC;
        private String Ym;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private String f21075aa;
        private String sP;
        private String sef;
        private String uA;
        private String vS;

        @NonNull
        public static com.bytedance.sdk.component.adexpress.Sj.TKC.EjP Sj(Sj sj2, String str) {
            return com.bytedance.sdk.component.adexpress.Sj.TKC.EjP.Sj().Sj(sj2.vS()).sP(sj2.Jcg()).TKC(sj2.Dq()).EjP(sj2.uA()).HiB(sj2.HiB()).vS(str);
        }

        @NonNull
        public static com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sP(Sj sj2, String str) {
            return new com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj().Sj(sj2.vS()).sP(sj2.uvD()).TKC(sj2.Zq()).EjP(sj2.dNu()).HiB(str);
        }

        public String Dq() {
            return this.TKC;
        }

        public void Dq(String str) {
            this.Jcg = str;
        }

        public String EjP() {
            return this.uA;
        }

        public void EjP(String str) {
            this.sP = str;
        }

        public String Fmk() {
            return this.TEQ;
        }

        public void Fmk(String str) {
            this.sef = str;
        }

        public String HiB() {
            return this.vS;
        }

        public void HiB(String str) {
            this.TKC = str;
        }

        public String Jcg() {
            return this.sP;
        }

        public void Jcg(String str) {
            this.HiB = str;
        }

        public void Sj(String str) {
            this.uA = str;
        }

        public void Sj(List<Integer> list) {
            this.Dq = list;
        }

        public String TEQ() {
            return this.HiB;
        }

        public void TEQ(String str) {
            this.TEQ = str;
        }

        public List<Integer> TKC() {
            return this.Dq;
        }

        public void TKC(String str) {
            this.Sj = str;
        }

        public String Ym() {
            return this.Jcg;
        }

        public void Ym(String str) {
            this.f21075aa = str;
        }

        public String Zq() {
            return this.f21075aa;
        }

        public String aa() {
            return this.Ym;
        }

        public void aa(String str) {
            this.Fmk = str;
        }

        public String dNu() {
            return this.sef;
        }

        public void sP(String str) {
            this.vS = str;
        }

        public boolean sef() {
            return !TextUtils.isEmpty(this.TEQ) && this.TEQ.equals("v3");
        }

        public String uA() {
            return this.EjP;
        }

        public void uA(String str) {
            this.Ym = str;
        }

        public String uvD() {
            return this.Fmk;
        }

        public String vS() {
            return this.Sj;
        }

        public void vS(String str) {
            this.EjP = str;
        }
    }

    public sU() {
        this.Sj = false;
        this.Sj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("is_new_playable", false);
    }

    private static double Dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    public static int EjP(String str) {
        return Sj(TKC(str));
    }

    public static boolean EjP(sU sUVar) {
        return (sUVar == null || sUVar.UHs() == null || sUVar.UHs().m() != 1) ? false : true;
    }

    public static boolean HiB(sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        int iHcZ = sUVar.HcZ();
        return sUVar.Ph() || iHcZ == 5 || iHcZ == 15 || iHcZ == 50;
    }

    private static long Jcg(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optLong(CommonUtils.PARAM_UID, 0L);
        }
        return 0L;
    }

    public static int Sj(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("ut", 0);
        }
        return 0;
    }

    public static long Sj(String str) {
        return Jcg(TKC(str));
    }

    public static com.bytedance.sdk.openadsdk.core.aa.Sj.sP Sj(String str, sU sUVar) {
        sUVar.Fm(0);
        int iDKa = sUVar.DKa();
        int i11 = 3;
        if (iDKa == 3) {
            i11 = 4;
        } else if (iDKa == 7) {
            i11 = 1;
        } else if (iDKa == 8) {
            i11 = 2;
        }
        return new com.bytedance.sdk.openadsdk.core.aa.Sj.sP(str, sUVar.vll(), sUVar.GJs(), sUVar.Gn(), sUVar.nou(), i11);
    }

    public static String Sj(Context context, sU sUVar) {
        if (context == null || sUVar == null || !((sUVar.DKa() == 8 || sUVar.DKa() == 7) && sUVar.Ei())) {
            return null;
        }
        String strSP = sP(context, sUVar);
        if (TextUtils.isEmpty(strSP) || com.bytedance.sdk.openadsdk.core.act.Sj.Sj() != 1) {
            return null;
        }
        return strSP;
    }

    public static boolean Sj(sU sUVar) {
        return (sUVar == null || sUVar.UHs() == null || sUVar.UHs().c() != 1) ? false : true;
    }

    public static boolean Sj(sU sUVar, boolean z10, boolean z11, boolean z12, boolean z13) {
        if (Sj(sUVar) || z13 || sUVar == null || sUVar.UHs() == null || TextUtils.isEmpty(sUVar.UHs().z())) {
            return false;
        }
        if (TKC(sUVar)) {
            return z12;
        }
        return (sUVar.UHs() == null || sUVar.UHs().m() != 1) ? z10 : z11;
    }

    public static JSONObject TKC(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONObject(str);
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.sU.sP("MaterialMeta", e11.getMessage());
            }
        }
        return null;
    }

    public static boolean TKC(sU sUVar) {
        return (sUVar == null || sUVar.UHs() == null || sUVar.UHs().c() != 7 || uP.Jcg(sUVar)) ? false : true;
    }

    public static double sP(String str) {
        return Dq(TKC(str));
    }

    public static String sP(Context context, sU sUVar) {
        return null;
    }

    public static boolean sP(sU sUVar) {
        return (Sj(sUVar) || TKC(sUVar)) ? false : true;
    }

    public static sU vS() {
        return new wE();
    }

    public static boolean vS(sU sUVar) {
        Object obj;
        if (sUVar == null) {
            return false;
        }
        try {
            Map<String, Object> mapQZ = sUVar.QZ();
            return (mapQZ == null || (obj = mapQZ.get(TTAdConstant.SDK_BIDDING_TYPE)) == null || 2 != Integer.parseInt(obj.toString())) ? false : true;
        } catch (Throwable th2) {
            th2.getMessage();
            return false;
        }
    }

    public abstract int AE();

    public abstract void AL();

    public abstract boolean AVc();

    public abstract boolean Aw();

    public abstract List<uvD> Bml();

    public abstract String Chv();

    public abstract String Ci();

    public abstract int DKa();

    public abstract int DKj();

    public abstract Fmk DPc();

    public abstract int DSn();

    public abstract JSONObject DhB();

    public abstract void Dq(int i11);

    public abstract void Dq(String str);

    public abstract void Dq(boolean z10);

    public abstract boolean Dq();

    public abstract uvD EZ();

    public abstract void Ei(int i11);

    public abstract boolean Ei();

    public abstract void EjP(int i11);

    public abstract void EjP(long j11);

    public abstract void EjP(JSONObject jSONObject);

    public abstract void EjP(boolean z10);

    public boolean EjP() {
        int iDx = dx();
        return (ley() != 2 || iDx == 5 || iDx == 6 || iDx == 19 || iDx == 12) ? false : true;
    }

    public abstract int Ewp();

    public abstract int FPG();

    public abstract void FPG(int i11);

    public abstract boolean FcE();

    public abstract int Fm();

    public abstract void Fm(int i11);

    public abstract RiZ Fmk();

    public abstract void Fmk(int i11);

    public abstract void Fmk(String str);

    public abstract boolean Fqk();

    public abstract b GJs();

    public abstract com.bytedance.sdk.openadsdk.core.Ym.Sj GMp();

    public abstract int Gn();

    public abstract JSONObject Grp();

    public abstract String HS();

    public abstract int HcZ();

    public long HiB() {
        return this.Fmk;
    }

    public abstract void HiB(int i11);

    public abstract void HiB(String str);

    public abstract void HiB(JSONObject jSONObject);

    public abstract void HiB(boolean z10);

    public abstract int HpB();

    public abstract void HpB(int i11);

    public abstract boolean Hs();

    public abstract boolean IOh();

    public abstract String IPx();

    public abstract int If();

    public abstract String Ir();

    public abstract int JcM();

    public abstract void JcM(int i11);

    public abstract int Jcg();

    public abstract void Jcg(int i11);

    public abstract void Jcg(String str);

    public abstract void Jcg(boolean z10);

    public abstract void Jw();

    public abstract boolean KTL();

    public abstract int LD();

    public abstract void LD(int i11);

    @Nullable
    public abstract String Lip();

    public abstract int LqL();

    public abstract void LqL(int i11);

    public abstract void LqL(String str);

    public abstract boolean MGU();

    public abstract boolean Ms();

    public abstract int Mts();

    public abstract void Mts(int i11);

    public abstract boolean MuB();

    public abstract long NPW();

    public abstract boolean ODI();

    public abstract String Os();

    public abstract void Ov();

    public abstract PAGBannerSize Ovo();

    public abstract boolean Ph();

    public abstract Map<String, Object> QZ();

    public abstract long RiZ();

    public abstract void RiZ(int i11);

    public abstract void RiZ(String str);

    public abstract int RqK();

    public abstract boolean RrR();

    public abstract JSONObject SP();

    public abstract long SPg();

    public abstract int Sj();

    public abstract void Sj(double d11);

    public abstract void Sj(float f11);

    public abstract void Sj(int i11);

    public abstract void Sj(int i11, int i12);

    public void Sj(long j11) {
        this.Fmk = j11;
    }

    public abstract void Sj(AdSlot adSlot);

    public abstract void Sj(FilterWord filterWord);

    public abstract void Sj(PAGBannerSize pAGBannerSize);

    public abstract void Sj(com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2);

    public abstract void Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj sj2);

    public abstract void Sj(EjP ejP);

    public abstract void Sj(Fmk fmk);

    public abstract void Sj(HiB hiB);

    public abstract void Sj(LqL lqL);

    public abstract void Sj(RiZ riZ);

    public abstract void Sj(Ym ym2);

    public abstract void Sj(Zq zq2);

    public abstract void Sj(aa aaVar);

    public abstract void Sj(dNu dnu);

    public abstract void Sj(kF kFVar);

    public abstract void Sj(Sj sj2);

    public abstract void Sj(uA uAVar);

    public abstract void Sj(uP uPVar);

    public abstract void Sj(uvD uvd);

    public abstract void Sj(vS vSVar);

    public abstract void Sj(zR zRVar);

    public abstract void Sj(com.bytedance.sdk.openadsdk.kF.Sj.sP sPVar);

    public abstract void Sj(Map<String, Object> map);

    public abstract void Sj(b bVar);

    public abstract void Sj(boolean z10);

    public abstract boolean Snq();

    public abstract boolean Ss();

    public abstract String TEQ();

    public abstract void TEQ(int i11);

    public abstract void TEQ(String str);

    public abstract void TEQ(boolean z10);

    public abstract Ym TFd();

    public int TKC() {
        HiB hiBUvD = uvD();
        if (hiBUvD != null) {
            return hiBUvD.Sj();
        }
        return -1;
    }

    public abstract void TKC(int i11);

    public abstract void TKC(long j11);

    public abstract void TKC(uvD uvd);

    public abstract void TKC(JSONObject jSONObject);

    public abstract void TKC(b bVar);

    public abstract void TKC(boolean z10);

    public abstract long TO();

    public abstract boolean TT();

    public abstract String TX();

    public abstract int TzV();

    public abstract void TzV(int i11);

    public abstract void TzV(String str);

    public abstract b UHs();

    public abstract void UHs(int i11);

    public abstract List<String> Uc();

    public abstract boolean UmR();

    public abstract boolean Vd();

    public abstract boolean VnJ();

    public abstract boolean WM();

    public abstract String WMZ();

    public abstract void WMZ(int i11);

    public abstract boolean WO();

    public abstract uA Wjd();

    public abstract void Wjd(int i11);

    public abstract int WxP();

    public abstract String XgY();

    public abstract boolean Xqg();

    public abstract com.bytedance.sdk.openadsdk.kF.Sj.sP YLl();

    public abstract void Yf(int i11);

    public abstract void Yf(String str);

    public abstract boolean Yf();

    public abstract String Ym();

    public abstract void Ym(int i11);

    public abstract void Ym(String str);

    public abstract void Ym(boolean z10);

    public abstract boolean Za();

    public abstract vS Zq();

    public abstract void Zq(int i11);

    public abstract void Zq(String str);

    public abstract String aNB();

    public abstract String aZ();

    public abstract void aa(int i11);

    public abstract void aa(String str);

    public abstract void aa(boolean z10);

    public boolean aa() {
        return (TextUtils.isEmpty(TEQ()) || TextUtils.isEmpty(Ym())) ? false : true;
    }

    public abstract WMZ at();

    public abstract com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj cF();

    public abstract String cKW();

    public abstract List<String> cX();

    public abstract void caU();

    public abstract double cra();

    public abstract JSONObject dLt();

    public abstract int dNu();

    public abstract void dNu(int i11);

    public abstract void dNu(String str);

    public abstract int dU();

    public abstract void db(int i11);

    public abstract boolean db();

    public abstract String dwU();

    public abstract void dwU(int i11);

    public abstract int dx();

    public abstract void dx(int i11);

    public abstract void dx(String str);

    public abstract boolean eEJ();

    public abstract boolean eI();

    public abstract int eJi();

    public abstract String eMB();

    public abstract kF eNi();

    public abstract com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj efv();

    public abstract boolean ewz();

    public abstract sP fAj();

    public abstract int fF();

    public abstract void fF(int i11);

    public abstract String gR();

    public abstract uvD gY();

    public abstract int gq();

    public abstract zR hLo();

    public abstract com.bytedance.sdk.component.uA.sP.Sj hif();

    public abstract boolean hzV();

    public abstract int ib();

    public abstract void ib(int i11);

    public abstract void ib(String str);

    public abstract void jU();

    public abstract String jb();

    public abstract void jb(int i11);

    public abstract int jjS();

    public abstract int kF();

    public abstract void kF(int i11);

    public abstract void kF(String str);

    public abstract List<String> kb();

    public abstract int ley();

    public abstract void ley(int i11);

    public abstract void ley(String str);

    public abstract int liH();

    public abstract String mZN();

    public abstract int mj();

    public abstract JSONObject nP();

    public abstract int nbp();

    public abstract LqL ndK();

    public abstract void ndK(int i11);

    public abstract int nou();

    public abstract List<FilterWord> nru();

    public abstract int nw();

    public abstract boolean oDQ();

    public abstract int oWa();

    public abstract boolean pR();

    public abstract int pfr();

    public abstract int qRN();

    public abstract void qRN(int i11);

    public abstract boolean rB();

    public abstract boolean rN();

    public abstract int rd();

    public abstract String ron();

    public abstract String roy();

    public abstract int sP();

    public abstract void sP(double d11);

    public abstract void sP(int i11);

    public abstract void sP(long j11);

    public abstract void sP(com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2);

    public abstract void sP(uvD uvd);

    public abstract void sP(JSONObject jSONObject);

    public abstract void sP(b bVar);

    public abstract void sP(boolean z10);

    public abstract uP sU();

    public abstract void sU(int i11);

    public abstract void sU(String str);

    public abstract int sdp();

    public abstract dNu sef();

    public abstract void sef(int i11);

    public abstract void sef(String str);

    public abstract boolean tPD();

    public abstract boolean tR();

    public abstract Zq tX();

    public abstract float tY();

    public abstract String tc();

    public abstract EjP tz();

    public abstract void uA(int i11);

    public abstract void uA(String str);

    public abstract void uA(boolean z10);

    public abstract boolean uA();

    public abstract String uP();

    public abstract String uP(String str);

    public abstract void uP(int i11);

    public abstract int uWH();

    public abstract HiB uvD();

    public abstract void uvD(int i11);

    public abstract void uvD(String str);

    public abstract long vP();

    public abstract void vS(int i11);

    public abstract void vS(String str);

    public abstract void vS(JSONObject jSONObject);

    public abstract void vS(boolean z10);

    public abstract int vb();

    public abstract b vll();

    public abstract int wE();

    public abstract void wE(int i11);

    public abstract void wE(String str);

    public abstract AdSlot xD();

    public abstract void xD(int i11);

    public abstract boolean xH();

    public abstract Sj xhi();

    public abstract void xhi(int i11);

    public abstract String xu();

    public abstract int xzt();

    public abstract boolean yfI();

    public abstract boolean yr();

    public abstract int zR();

    public abstract void zR(int i11);

    public abstract void zR(String str);

    public abstract int zwV();
}
