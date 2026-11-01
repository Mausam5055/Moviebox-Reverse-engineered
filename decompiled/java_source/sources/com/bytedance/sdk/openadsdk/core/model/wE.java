package com.bytedance.sdk.openadsdk.core.model;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y5.b;

/* JADX INFO: loaded from: classes3.dex */
public class wE extends sU {
    private RiZ Aw;
    private boolean Bml;
    private boolean Chv;
    private HiB DKa;
    private boolean DKj;
    private Zq DPc;
    private String DhB;
    private b EZ;
    private String Ei;
    private int FPG;
    private Ym Fm;
    private int GJs;
    private int GMp;
    private String HpB;
    private int Hs;
    private int IOh;
    private int IPx;
    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj If;
    private String Ir;
    private String JcM;
    private kF Jw;
    private String LD;
    private LqL Lip;
    private boolean MGU;
    private boolean Ms;
    private String Mts;
    private int MuB;
    private String NPW;
    private uP Ov;
    private int Ph;
    private int RrR;
    private String SP;
    private boolean Snq;
    private String Ss;
    private int TT;
    private int Uc;
    private String WMZ;
    private String WxP;
    private PAGBannerSize XgY;
    private zR Za;
    private boolean aNB;
    private JSONObject aZ;

    /* JADX INFO: renamed from: at, reason: collision with root package name */
    private String f21078at;
    private JSONObject cKW;
    private int cX;
    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj cra;
    private String dLt;
    private JSONObject dU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private int f21080dx;
    private String eEJ;
    private String eI;
    private int eMB;
    private String ewz;
    private String fF;
    private sU.Sj gR;
    private b gY;

    /* JADX INFO: renamed from: gq, reason: collision with root package name */
    private int f21081gq;
    private volatile boolean hif;
    private int hzV;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private int f21082ib;
    private String jU;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private int f21083jb;
    private Fmk jjS;
    private uvD kF;

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    private boolean f21084kb;
    private String ley;

    /* JADX INFO: renamed from: mj, reason: collision with root package name */
    private String f21085mj;
    private AdSlot nru;
    private boolean oDQ;
    private b pfr;
    private int rN;

    /* JADX INFO: renamed from: rd, reason: collision with root package name */
    private dNu f21086rd;
    private int ron;
    private int roy;
    private long sdp;
    public long sef;
    private com.bytedance.sdk.openadsdk.core.Ym.Sj tPD;
    private int tX;
    private JSONObject tY;
    private uvD uP;
    private String vll;
    private String wE;
    private EjP xD;
    private String xhi;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    private Map<String, Object> f21089xu;
    private int xzt;
    private vS yfI;

    /* JADX INFO: renamed from: yr, reason: collision with root package name */
    private boolean f21090yr;
    private int zR;
    private aa zwV;
    private final List<uvD> dNu = new ArrayList();
    private final List<String> TzV = new ArrayList();
    private final List<FilterWord> RiZ = new ArrayList();
    private final WMZ sU = WMZ.TKC();
    public boolean Fmk = false;
    private List<String> LqL = new ArrayList();
    private List<String> Yf = new ArrayList();
    private String Wjd = "0";

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    private String f21079db = "";
    private int ndK = 0;
    private int qRN = 2;
    private int UHs = -1;
    private int dwU = 0;
    private int HS = 0;

    /* JADX INFO: renamed from: tz, reason: collision with root package name */
    private int f21087tz = 1;
    private uA TFd = new uA();
    private int mZN = -200;
    private int HcZ = 0;
    private int TO = 1;
    private int QZ = 0;
    private int nP = 0;
    private int liH = 0;
    private int AVc = 1;
    private int Xqg = 1;
    private float oWa = 100.0f;
    private int TX = 2;

    /* JADX INFO: renamed from: vb, reason: collision with root package name */
    private int f21088vb = 1;
    private int Grp = 0;
    private int Gn = -1;
    private long nou = -1;
    private int rB = 0;
    private boolean Fqk = false;
    private int AE = 0;
    private int UmR = 50;
    private int SPg = -1;
    private final sP cF = new sP();
    private boolean efv = false;
    private com.bytedance.sdk.openadsdk.kF.Sj.sP nbp = null;
    protected int Zq = -1;
    protected int uvD = -1;

    private static double Jcg(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    public static boolean Jcg(sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        int iHcZ = sUVar.HcZ();
        return sUVar.Ph() || iHcZ == 5 || iHcZ == 15 || iHcZ == 50;
    }

    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj Ngd() {
        LqL lqLNdK = ndK();
        if (lqLNdK == null) {
            return null;
        }
        return new com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj().Sj(lqLNdK.Sj()).sP(lqLNdK.sP()).TKC(lqLNdK.TKC()).EjP(lqLNdK.EjP()).HiB(If() + "_v3");
    }

    private void Sj(uvD uvd, int i11) {
        if (uvd != null) {
            try {
                if (TextUtils.isEmpty(uvd.Sj())) {
                    return;
                }
                if (uvd.sP() == 0 && uvd.TKC() == 0) {
                    uvd.Sj(i11);
                    uvd.sP(i11);
                    return;
                }
                if (uvd.sP() == 0) {
                    if (uvd.TKC() <= i11) {
                        uvd.Sj(uvd.TKC());
                        return;
                    } else {
                        uvd.sP(i11);
                        uvd.Sj(i11);
                        return;
                    }
                }
                if (uvd.TKC() == 0) {
                    if (uvd.sP() <= i11) {
                        uvd.sP(uvd.sP());
                        return;
                    } else {
                        uvd.sP(i11);
                        uvd.Sj(i11);
                        return;
                    }
                }
                if (uvd.sP() > uvd.TKC()) {
                    if (uvd.sP() > i11) {
                        uvd.sP((int) (i11 / (uvd.sP() / uvd.TKC())));
                        uvd.Sj(i11);
                        return;
                    }
                    return;
                }
                if (uvd.TKC() > i11) {
                    uvd.Sj((int) (i11 * (uvd.sP() / uvd.TKC())));
                    uvd.sP(i11);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private String fF(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return com.bytedance.sdk.component.utils.uvD.Sj(str);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("MaterialMeta", "generate icon key error", th2.getMessage());
            return null;
        }
    }

    private com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj oI() {
        sU.Sj sjXhi = xhi();
        if (sjXhi == null) {
            return null;
        }
        return sU.Sj.sP(sjXhi, String.valueOf(If()));
    }

    private JSONObject sP(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (filterWord.isValid()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", filterWord.getId());
                jSONObject.put("name", filterWord.getName());
                jSONObject.put("is_selected", filterWord.getIsSelected());
                if (filterWord.hasSecondOptions()) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<FilterWord> it = filterWord.getOptions().iterator();
                    while (it.hasNext()) {
                        jSONArray.put(sP(it.next()));
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("options", jSONArray);
                    }
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int AE() {
        return this.rB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void AL() {
        this.Ms = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean AVc() {
        if (this.dNu.isEmpty()) {
            return false;
        }
        if (this.f21083jb == 4 && this.dNu.size() < 3) {
            return false;
        }
        Iterator<uvD> it = this.dNu.iterator();
        while (it.hasNext()) {
            if (!it.next().HiB()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Aw() {
        return this.xzt == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public List<uvD> Bml() {
        return this.dNu;
    }

    public int CBE() {
        return this.QZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String Chv() {
        return this.wE;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String Ci() {
        JSONObject jSONObjectDhB;
        if (this.f21078at == null && (jSONObjectDhB = DhB()) != null) {
            this.f21078at = jSONObjectDhB.optString(BidResponsedEx.KEY_CID, "");
        }
        return this.f21078at;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int DKa() {
        if (this.Gn < 0) {
            JSONObject jSONObjectDhB = DhB();
            if (jSONObjectDhB != null) {
                this.Gn = jSONObjectDhB.optInt("ad_slot_type", 0);
            } else {
                this.Gn = 0;
            }
        }
        return this.Gn;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int DKj() {
        return this.Gn;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public Fmk DPc() {
        return this.jjS;
    }

    public JSONObject DSA() {
        return this.cKW;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int DSn() {
        Map<String, Object> map = this.f21089xu;
        if (map == null) {
            return 0;
        }
        try {
            Object obj = map.get(TTAdConstant.SDK_BIDDING_TYPE);
            if (obj != null) {
                return Integer.parseInt(obj.toString());
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public JSONObject DhB() {
        if (this.aZ == null) {
            try {
                if (!TextUtils.isEmpty(this.xhi)) {
                    this.aZ = new JSONObject(this.xhi);
                }
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.sU.sP("MaterialMeta", e11.getMessage());
            }
        }
        return this.aZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Dq(int i11) {
        this.UHs = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Dq(String str) {
        this.f21085mj = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Dq(boolean z10) {
        this.Snq = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Dq() {
        return this.Chv;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public uvD EZ() {
        return this.kF;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Ei(int i11) {
        this.FPG = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Ei() {
        return rZ() == 100 || this.zR == 20;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void EjP(int i11) {
        Sj(i11, -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void EjP(long j11) {
        this.TEQ = j11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void EjP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f21080dx = 4;
        this.Wjd = jSONObject.optString("id");
        this.Ei = jSONObject.optString(EventConstants.KEY_SOURCE);
        EjP ejP = new EjP();
        this.xD = ejP;
        ejP.TKC(jSONObject.optString("pkg_name"));
        this.xD.sP(jSONObject.optString("name"));
        this.xD.Sj(jSONObject.optString("download_url"));
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void EjP(boolean z10) {
        this.f21084kb = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int Ewp() {
        return this.Jcg;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int FPG() {
        if (Ph()) {
            return 5;
        }
        if (tY() != 100.0f || ley() == 2) {
            return 0;
        }
        return this.HcZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void FPG(int i11) {
        this.GJs = Math.max(0, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean FcE() {
        dNu dnu;
        AdSlot adSlot = this.nru;
        if (adSlot == null || (dnu = this.f21086rd) == null) {
            return false;
        }
        return dnu.Sj(!TextUtils.isEmpty(adSlot.getBidAdm()));
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int Fm() {
        return this.mZN;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Fm(int i11) {
        this.Grp = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public RiZ Fmk() {
        return this.Aw;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Fmk(int i11) {
        this.nP = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Fmk(String str) {
        this.wE = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Fqk() {
        return xD() != null && xD().getDurationSlotType() == 8 && hzV();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public b GJs() {
        return this.EZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public com.bytedance.sdk.openadsdk.core.Ym.Sj GMp() {
        return this.tPD;
    }

    public int GhY() {
        return this.eMB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int Gn() {
        return this.Grp;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public JSONObject Grp() {
        return this.dU;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String HS() {
        return this.HpB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int HcZ() {
        return this.f21083jb;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void HiB(int i11) {
        this.zR = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void HiB(String str) {
        this.eEJ = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void HiB(JSONObject jSONObject) {
        this.dU = jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void HiB(boolean z10) {
        this.Fqk = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int HpB() {
        return this.Uc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void HpB(int i11) {
        this.rB = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Hs() {
        return this.DKj;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean IOh() {
        return this.IPx == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String IPx() {
        return this.NPW;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int If() {
        JSONObject jSONObjectDhB = DhB();
        if (jSONObjectDhB != null) {
            return jSONObjectDhB.optInt("rit", 0);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String Ir() {
        if (!TextUtils.isEmpty(this.JcM)) {
            return this.JcM;
        }
        Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        int iSdp = sdp();
        if (iSdp != 2 && iSdp != 3) {
            if (iSdp == 4) {
                return contextSj != null ? com.bytedance.sdk.component.utils.ib.Sj(contextSj, "tt_video_download_apk") : this.JcM;
            }
            if (iSdp != 8) {
                return this.JcM;
            }
        }
        return contextSj != null ? com.bytedance.sdk.component.utils.ib.Sj(contextSj, "tt_video_mobile_go_detail") : this.JcM;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int JcM() {
        return this.f21087tz;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void JcM(int i11) {
        this.GMp = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int Jcg() {
        return this.Ym;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Jcg(int i11) {
        this.qRN = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Jcg(String str) {
        this.f21079db = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Jcg(boolean z10) {
        this.DKj = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Jw() {
        b bVar = this.pfr;
        if (bVar == null || TextUtils.isEmpty(bVar.z())) {
            return;
        }
        try {
            if (!this.pfr.z().contains("style_id")) {
                this.MGU = false;
            } else {
                this.MGU = true;
                this.ewz = Uri.parse(this.pfr.z()).getQueryParameters("style_id").get(0);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean KTL() {
        return this.oDQ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int LD() {
        return this.liH;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void LD(int i11) {
        this.f21081gq = i11;
    }

    public void LD(String str) {
        this.vll = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    @Nullable
    public String Lip() {
        EjP ejPTz = tz();
        if (ejPTz == null || TextUtils.isEmpty(ejPTz.Sj())) {
            return null;
        }
        return ejPTz.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int LqL() {
        return this.UHs;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void LqL(int i11) {
        this.Xqg = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void LqL(String str) {
        this.jU = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean MGU() {
        return DKa() == 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Ms() {
        int i11 = this.zR;
        return (i11 == 2 || i11 == 1) && 3 == this.f21080dx;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int Mts() {
        return this.nP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Mts(int i11) {
        this.xzt = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean MuB() {
        return this.Hs == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public long NPW() {
        if (this.nou < 0) {
            JSONObject jSONObjectDhB = DhB();
            if (jSONObjectDhB != null) {
                this.nou = jSONObjectDhB.optLong("ad_id", 0L);
            } else {
                this.nou = 0L;
            }
        }
        return this.nou;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean ODI() {
        return this.efv;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String Os() {
        return this.Dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Ov() {
        this.hif = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public PAGBannerSize Ovo() {
        return this.XgY;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Ph() {
        int i11 = this.rB;
        return (i11 == 1 || i11 == 3) && GMp() != null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public Map<String, Object> QZ() {
        return this.f21089xu;
    }

    public String Qne() {
        return this.f21085mj;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public long RiZ() {
        HiB hiB = this.DKa;
        if (hiB == null) {
            return 0L;
        }
        return hiB.TKC();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void RiZ(int i11) {
        this.RrR = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void RiZ(String str) {
        this.HpB = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int RqK() {
        if (this.SPg < 0) {
            try {
                JSONObject jSONObjectDhB = DhB();
                if (jSONObjectDhB != null) {
                    this.SPg = jSONObjectDhB.optInt("is_drop_to_retargeting_sample", 0);
                } else {
                    this.SPg = 0;
                }
            } catch (Throwable unused) {
                this.SPg = 0;
            }
        }
        return this.SPg;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean RrR() {
        return !Ph() && aF() == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public JSONObject SP() {
        Object objTKC;
        Object objTEQ;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interaction_type", sdp());
            jSONObject.put("iv_skip_time", Sj());
            jSONObject.put("rv_skip_time", sP());
            jSONObject.put(sU.EjP, gFR());
            jSONObject.put("interaction_method", zR());
            jSONObject.put("lp_click_type", nw());
            jSONObject.put("lp_click_interval", vP());
            jSONObject.put("proportion_watching", LqL());
            jSONObject.put(sU.TKC, nc());
            jSONObject.put(sU.HiB, pfr());
            jSONObject.put("target_url", Chv());
            jSONObject.put("app_log_url", HS());
            jSONObject.put("gecko_id", eMB());
            jSONObject.put("extension", Grp());
            jSONObject.put("ad_id", aZ());
            jSONObject.put(EventConstants.KEY_SOURCE, dwU());
            jSONObject.put("app_name", uE());
            jSONObject.put("screenshot", eI());
            jSONObject.put("dislike_control", aF());
            jSONObject.put("play_bar_show_time", Fm());
            jSONObject.put("play_bar_style", FPG());
            jSONObject.put("if_block_lp", CBE());
            jSONObject.put("cache_sort", YZ());
            jSONObject.put("if_sp_cache", nD());
            jSONObject.put("render_control", ley());
            jSONObject.put("mrc_report", this.xzt);
            jSONObject.put("isMrcReportFinish", this.hif);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("cta", kF());
            jSONObject2.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, ib());
            jSONObject.put("set_click_type", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_NAME, uP());
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, wE());
            jSONObject.put("reward_data", jSONObject3);
            if (!TextUtils.isEmpty(TEQ()) && !TextUtils.isEmpty(Ym())) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("adchoices_icon", TEQ());
                jSONObject4.put("adchoices_url", Ym());
                jSONObject.put("dsp_adchoices", jSONObject4);
            }
            uvD uvdEZ = EZ();
            if (uvdEZ != null && !TextUtils.isEmpty(uvdEZ.Sj())) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("url", uvdEZ.Sj());
                jSONObject5.put("height", uvdEZ.TKC());
                jSONObject5.put("width", uvdEZ.sP());
                jSONObject.put(RewardPlus.ICON, jSONObject5);
            }
            uvD uvdGY = gY();
            if (uvdGY != null && !TextUtils.isEmpty(uvdGY.Sj())) {
                JSONObject jSONObject6 = new JSONObject();
                jSONObject6.put("url", uvdGY.Sj());
                jSONObject6.put("height", uvdGY.TKC());
                jSONObject6.put("width", uvdGY.sP());
                jSONObject.put("cover_image", jSONObject6);
            }
            Object objNP = nP();
            if (objNP != null) {
                jSONObject.put("session_params", objNP);
            }
            uA uAVarWjd = Wjd();
            if (uAVarWjd != null) {
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("click_upper_content_area", uAVarWjd.Sj);
                jSONObject7.put("click_upper_non_content_area", uAVarWjd.sP);
                jSONObject7.put("click_lower_content_area", uAVarWjd.TKC);
                jSONObject7.put("click_lower_non_content_area", uAVarWjd.EjP);
                jSONObject7.put("click_button_area", uAVarWjd.HiB);
                jSONObject7.put("click_video_area", uAVarWjd.vS);
                jSONObject.put("click_area", jSONObject7);
            }
            vS vSVarZq = Zq();
            if (vSVarZq != null) {
                jSONObject.put("arbitrage_interceptor_params", vSVarZq.Jcg());
            }
            AdSlot adSlotXD = xD();
            if (adSlotXD != null) {
                jSONObject.put("adslot", adSlotXD.toJsonObj());
            }
            List<uvD> listBml = Bml();
            if (listBml != null) {
                JSONArray jSONArray = new JSONArray();
                for (uvD uvd : listBml) {
                    JSONObject jSONObject8 = new JSONObject();
                    jSONObject8.put("url", uvd.Sj());
                    jSONObject8.put("height", uvd.TKC());
                    jSONObject8.put("width", uvd.sP());
                    jSONObject8.put("image_preview", uvd.vS());
                    jSONObject8.put("image_key", uvd.Jcg());
                    jSONArray.put(jSONObject8);
                }
                jSONObject.put("image", jSONArray);
            }
            List<String> listCX = cX();
            if (listCX != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it = listCX.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next());
                }
                jSONObject.put("show_url", jSONArray2);
            }
            List<String> listKb = kb();
            if (listKb != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator<String> it2 = listKb.iterator();
                while (it2.hasNext()) {
                    jSONArray3.put(it2.next());
                }
                jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, jSONArray3);
            }
            List<String> listUc = Uc();
            if (listUc != null) {
                JSONArray jSONArray4 = new JSONArray();
                Iterator<String> it3 = listUc.iterator();
                while (it3.hasNext()) {
                    jSONArray4.put(it3.next());
                }
                jSONObject.put("play_start", jSONArray4);
            }
            jSONObject.put("phone_num", aNB());
            jSONObject.put(CampaignEx.JSON_KEY_TITLE, xu());
            jSONObject.put(TrackingKey.DESCRIPTION, gR());
            jSONObject.put("ext", mZN());
            jSONObject.put("image_mode", HcZ());
            jSONObject.put("cover_click_area", rZ());
            jSONObject.put("intercept_flag", GhY());
            jSONObject.put("button_text", Ir());
            jSONObject.put("ad_logo", iUm());
            jSONObject.put("video_adaptation", Mts());
            jSONObject.put("feed_video_opentype", LD());
            jSONObject.put("orientation", liH());
            jSONObject.put("aspect_ratio", tY());
            EjP ejPTz = tz();
            if (ejPTz != null) {
                JSONObject jSONObject9 = new JSONObject();
                jSONObject9.put("app_name", ejPTz.sP());
                jSONObject9.put("package_name", ejPTz.TKC());
                jSONObject9.put("download_url", ejPTz.Sj());
                jSONObject9.put("score", ejPTz.EjP());
                jSONObject9.put("comment_num", ejPTz.HiB());
                jSONObject9.put(CampaignEx.JSON_KEY_APP_SIZE, ejPTz.vS());
                jSONObject9.put("app_category", ejPTz.Jcg());
                jSONObject.put("app", jSONObject9);
            }
            Ym ymTFd = TFd();
            if (ymTFd != null) {
                JSONObject jSONObject10 = new JSONObject();
                jSONObject10.put("deeplink_url", ymTFd.Sj());
                jSONObject10.put("fallback_url", ymTFd.sP());
                jSONObject10.put("fallback_type", ymTFd.TKC());
                jSONObject.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, jSONObject10);
            }
            jSONObject.put("is_web_jump_ip", this.Ym);
            kF kFVarENi = eNi();
            if (kFVarENi != null && (objTEQ = kFVarENi.TEQ()) != null) {
                jSONObject.put("oem", objTEQ);
            }
            zR zRVarHLo = hLo();
            if (zRVarHLo != null && (objTKC = zRVarHLo.TKC()) != null) {
                jSONObject.put("multi_ad_scene", objTKC);
            }
            List<FilterWord> listNru = nru();
            if (listNru != null) {
                JSONArray jSONArray5 = new JSONArray();
                Iterator<FilterWord> it4 = listNru.iterator();
                while (it4.hasNext()) {
                    JSONObject jSONObjectSP = sP(it4.next());
                    if (jSONObjectSP != null) {
                        jSONArray5.put(jSONObjectSP);
                    }
                }
                jSONObject.put("filter_words", jSONArray5);
            }
            sU().Sj(jSONObject);
            jSONObject.put("count_down", iO());
            jSONObject.put("expiration_time", TO());
            b bVarVll = vll();
            if (bVarVll != null) {
                jSONObject.put("video", bVarVll.w());
            }
            b bVarGJs = GJs();
            if (bVarGJs != null) {
                jSONObject.put("h265_video", bVarGJs.w());
            }
            jSONObject.put("video_encode_type", nou());
            JSONObject jSONObject11 = new JSONObject();
            jSONObject11.put("if_send_click", qRN());
            jSONObject.put("download_conf", jSONObject11);
            if (QZ() != null) {
                JSONObject jSONObject12 = new JSONObject();
                Set<Map.Entry<String, Object>> setEntrySet = QZ().entrySet();
                if (!setEntrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : setEntrySet) {
                        jSONObject12.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("media_ext", jSONObject12);
            }
            sU.Sj sjXhi = xhi();
            if (sjXhi != null) {
                JSONObject jSONObject13 = new JSONObject();
                jSONObject13.put("id", sjXhi.vS());
                jSONObject13.put("md5", sjXhi.Jcg());
                jSONObject13.put("url", sjXhi.Dq());
                jSONObject13.put("data", sjXhi.uA());
                jSONObject13.put("diff_data", sjXhi.TEQ());
                jSONObject13.put("version", sjXhi.HiB());
                jSONObject13.put("dynamic_creative", sjXhi.Ym());
                jSONObject13.put("engine_version", sjXhi.Fmk());
                jSONObject13.put("ugen_data", sjXhi.dNu());
                jSONObject13.put("ugen_md5", sjXhi.uvD());
                jSONObject13.put("ugen_url", sjXhi.Zq());
                jSONObject.put("tpl_info", jSONObject13);
            }
            LqL lqL = this.Lip;
            if (lqL != null) {
                jSONObject.put("tpl_info_v3", lqL.vS());
            }
            jSONObject.put("dynamic_creative", DSA());
            jSONObject.put("creative_extra", jb());
            jSONObject.put("market_url", fgU());
            jSONObject.put("auction_price", WMZ());
            jSONObject.put("ad_info", Qne());
            jSONObject.put("is_package_open", zwV());
            jSONObject.put("playable_duration_time", oWa());
            jSONObject.put("playable_endcard_close_time", mj());
            jSONObject.put("endcard_close_time", gq());
            JSONObject jSONObject14 = new JSONObject();
            jSONObject14.put("render_sequence", fF());
            jSONObject14.put("backup_render_control", JcM());
            jSONObject14.put("reserve_time", WxP());
            jSONObject14.put("render_thread", dU());
            jSONObject.put(EventConstants.ADDRESS_RENDER, jSONObject14);
            if (this.Aw == null) {
                RiZ riZ = new RiZ();
                this.Aw = riZ;
                riZ.Sj("");
                this.Aw.Sj(10L);
                this.Aw.sP(20L);
                this.Aw.TKC(10L);
                this.Aw.EjP(20L);
            }
            JSONObject jSONObject15 = new JSONObject();
            jSONObject15.put("onlylp_loading_maxtime", this.Aw.Sj());
            jSONObject15.put("straight_lp_showtime", this.Aw.sP());
            jSONObject15.put("onlyagg_loading_maxtime", this.Aw.TKC());
            jSONObject15.put("straight_agg_showtime", this.Aw.EjP());
            jSONObject15.put("loading_text", this.Aw.HiB());
            dNu dnu = this.f21086rd;
            if (dnu != null) {
                jSONObject15 = dnu.Sj(jSONObject15);
            }
            jSONObject.put("interaction_method_params", jSONObject15);
            JSONObject jSONObject16 = new JSONObject();
            jSONObject16.put("splash_clickarea", dNu());
            jSONObject16.put("splash_layout_id", TzV());
            jSONObject16.put("load_wait_time", RiZ());
            HiB hiB = this.DKa;
            jSONObject16.put("skip_time", hiB != null ? hiB.Sj() : 0);
            jSONObject.put("splash_control", jSONObject16);
            if (hzV()) {
                jSONObject.put("dsp_html", this.WxP);
            }
            if (Ph()) {
                jSONObject.put("vast_json", this.tPD.TEQ());
            }
            jSONObject.put("dsp_material_type", AE());
            jSONObject.put("deep_link_appname", this.WMZ);
            jSONObject.put("landing_page_download_clicktype", this.FPG);
            Fmk fmk = this.jjS;
            if (fmk != null) {
                jSONObject.put("dsp_style", fmk.HiB());
            }
            jSONObject.put("jump_probability", this.TT);
            jSONObject.put("identificationOverlayContent", this.Ss);
            if (this.If != null) {
                JSONObject jSONObject17 = new JSONObject();
                jSONObject17.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, this.If.Sj(this.cra));
                jSONObject.put("ugen", jSONObject17);
            }
            jSONObject.put("preload_h5_type", rd());
            jSONObject.put("hasReportShow", this.Snq);
            jSONObject.put("endcard_creative", this.jU);
            jSONObject.put("image_stay", this.rN);
            jSONObject.put("ad_label", this.cF.vS());
            JSONObject jSONObject18 = new JSONObject();
            jSONObject18.put(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, this.vS);
            jSONObject18.put("wait_time", this.Jcg);
            jSONObject18.put("label", this.Dq);
            jSONObject.put("ev", jSONObject18);
            jSONObject.put("ad_label", this.cF.vS());
            if (this.XgY != null) {
                JSONObject jSONObject19 = new JSONObject();
                jSONObject19.put("width", this.XgY.getWidth());
                jSONObject19.put("height", this.XgY.getHeight());
                jSONObject.put("banner", jSONObject19);
            }
            if (!TextUtils.isEmpty(this.NPW)) {
                jSONObject.put("gdid_encrypted", this.NPW);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public long SPg() {
        return this.sef;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int Sj() {
        return this.Zq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(double d11) {
        if (d11 == 2.0d || d11 == 1.0d) {
            this.f21088vb = (int) d11;
        } else {
            this.f21088vb = 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(float f11) {
        this.oWa = f11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(int i11) {
        this.Zq = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(int i11, int i12) {
        this.f21082ib = i11;
        this.zR = i11;
        if (this.nru == null) {
            this.zR = 0;
            return;
        }
        if (i12 <= 0) {
            i12 = DKa();
        }
        if (this.nru.getNativeAdType() == 3 || this.nru.getDurationSlotType() == 3 || i12 == 3) {
            this.zR = 14;
            return;
        }
        if (this.nru.getNativeAdType() != 7 && this.nru.getNativeAdType() != 8 && this.nru.getDurationSlotType() != 7 && this.nru.getDurationSlotType() != 8 && i12 != 7 && i12 != 8) {
            if (uP.sP(this)) {
                this.zR = 4;
                return;
            }
            if (this.f21082ib == 4 && !uP.sP(this)) {
                this.zR = 0;
            }
            if (i11 >= 5) {
                this.zR = 0;
                return;
            }
            if (this.f21082ib == 2 && sdp() != 3) {
                this.zR = 0;
                return;
            } else {
                if (i11 == 0 || (i11 == 1 && sdp() != 3)) {
                    this.zR = 0;
                    return;
                }
                return;
            }
        }
        if (uP.TKC(this)) {
            this.zR = 12;
            return;
        }
        if (uP.sP(this)) {
            this.zR = 9;
            return;
        }
        if (this.f21082ib == 5 && !TzV.EjP(this)) {
            this.zR = 7;
        }
        if (this.f21082ib == 6 && !TzV.sP(this)) {
            this.zR = 7;
        }
        if (this.f21082ib == 8 && rZ() != 100) {
            this.zR = 7;
        }
        if (this.f21082ib == 19 && TextUtils.isEmpty(this.wE)) {
            this.zR = 7;
        }
        if (this.f21082ib == 20 && TextUtils.isEmpty(this.wE)) {
            this.zR = 7;
        }
        if (this.f21082ib == 38 && !TzV.TKC(this)) {
            this.zR = 7;
        }
        if (i11 < 5) {
            this.zR = 7;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(AdSlot adSlot) {
        this.nru = adSlot;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(FilterWord filterWord) {
        this.RiZ.add(filterWord);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(PAGBannerSize pAGBannerSize) {
        this.XgY = pAGBannerSize;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2) {
        this.If = sj2;
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(sj2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj sj2) {
        this.tPD = sj2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(EjP ejP) {
        this.xD = ejP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(Fmk fmk) {
        this.jjS = fmk;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(HiB hiB) {
        this.DKa = hiB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(LqL lqL) {
        this.Lip = lqL;
        if (lqL == null || TextUtils.isEmpty(lqL.TKC())) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(Ngd(), "adv3");
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(RiZ riZ) {
        this.Aw = riZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(Ym ym2) {
        this.Fm = ym2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(Zq zq2) {
        this.DPc = zq2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(aa aaVar) {
        this.zwV = aaVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(dNu dnu) {
        this.f21086rd = dnu;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(kF kFVar) {
        this.Jw = kFVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(sU.Sj sj2) {
        this.gR = sj2;
        com.bytedance.sdk.component.adexpress.Sj.TKC.EjP ejPUK = UK();
        if (ejPUK != null && !db()) {
            com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(ejPUK);
        }
        if (sj2 == null || TextUtils.isEmpty(sj2.Zq())) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(oI(), CommonLogUtil.TAG_AD);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(uA uAVar) {
        this.TFd = uAVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(uP uPVar) {
        this.Ov = uPVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(uvD uvd) {
        Sj(uvd, sU.f21074aa);
        String strFF = fF(uvd.Sj());
        if (!TextUtils.isEmpty(strFF)) {
            uvd.sP(strFF);
        }
        this.kF = uvd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(vS vSVar) {
        this.yfI = vSVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(zR zRVar) {
        this.Za = zRVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(com.bytedance.sdk.openadsdk.kF.Sj.sP sPVar) {
        this.nbp = sPVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(Map<String, Object> map) {
        this.f21089xu = map;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(b bVar) {
        this.pfr = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Sj(boolean z10) {
        this.Chv = z10;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a  */
    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Snq() {
        int iSP;
        if (!UmR()) {
            int iNextInt = new Random().nextInt(100);
            if (Ph()) {
                Fmk fmk = this.jjS;
                if (fmk != null) {
                    iSP = fmk.sP();
                } else {
                    iSP = 0;
                }
            } else if (uP.sP(this)) {
                iSP = 0;
            } else {
                iSP = this.TT;
            }
            if (iNextInt < iSP) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Ss() {
        return DKa() == 8;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String TEQ() {
        return this.eEJ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TEQ(int i11) {
        this.liH = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TEQ(String str) {
        this.Ir = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TEQ(boolean z10) {
        this.sP = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public Ym TFd() {
        return this.Fm;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TKC(int i11) {
        this.Ym = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TKC(long j11) {
        this.sef = j11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TKC(uvD uvd) {
        this.dNu.add(uvd);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TKC(JSONObject jSONObject) {
        this.tY = jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TKC(b bVar) {
        this.EZ = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TKC(boolean z10) {
        this.aNB = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public long TO() {
        return this.sdp;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean TT() {
        return DKa() == 7;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String TX() {
        return this.WxP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int TzV() {
        if (yfI()) {
            return 5;
        }
        return hzV() ? 4 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TzV(int i11) {
        this.AVc = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void TzV(String str) {
        this.Wjd = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public b UHs() {
        return this.pfr;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void UHs(int i11) {
        this.uA = i11;
    }

    public com.bytedance.sdk.component.adexpress.Sj.TKC.EjP UK() {
        sU.Sj sjXhi = xhi();
        if (sjXhi == null) {
            return null;
        }
        return sU.Sj.Sj(sjXhi, String.valueOf(If()));
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public List<String> Uc() {
        return this.TzV;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean UmR() {
        return this.sU.Sj > 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Vd() {
        return this.Ms;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean VnJ() {
        return this.vS;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean WM() {
        if (this.Gn <= 0) {
            this.Gn = DKa();
        }
        int i11 = this.Gn;
        return (i11 == 7 || i11 == 8) && !Jcg(this) && zR() != 21 && this.rN == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String WMZ() {
        return this.SP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void WMZ(int i11) {
        this.hzV = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean WO() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public uA Wjd() {
        return this.TFd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Wjd(int i11) {
        this.ron = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int WxP() {
        return this.GJs;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String XgY() {
        return this.ewz;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Xqg() {
        return this.Fqk;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public com.bytedance.sdk.openadsdk.kF.Sj.sP YLl() {
        return this.nbp;
    }

    public int YZ() {
        return this.AVc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Yf(int i11) {
        this.dwU = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Yf(String str) {
        if (TextUtils.isEmpty(str)) {
            this.Dq = com.bytedance.sdk.openadsdk.kF.Sj.TKC.TKC;
        } else {
            this.Dq = str;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Yf() {
        return this.QZ == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String Ym() {
        return this.DhB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Ym(int i11) {
        this.HS = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Ym(String str) {
        this.Ei = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Ym(boolean z10) {
        this.efv = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean Za() {
        return this.MGU;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public vS Zq() {
        return this.yfI;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Zq(int i11) {
        this.HcZ = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void Zq(String str) {
        this.LD = str;
    }

    public int aF() {
        return this.dwU;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String aNB() {
        return this.ley;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String aZ() {
        return this.Wjd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void aa(int i11) {
        this.f21087tz = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void aa(String str) {
        this.Mts = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void aa(boolean z10) {
        this.vS = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean aa() {
        return (TextUtils.isEmpty(TEQ()) || TextUtils.isEmpty(Ym())) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public WMZ at() {
        return this.sU;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj cF() {
        return this.If;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String cKW() {
        JSONObject jSONObjectDhB;
        String strOptString = this.vll;
        if (TextUtils.isEmpty(strOptString) && (jSONObjectDhB = DhB()) != null) {
            strOptString = jSONObjectDhB.optString("req_id", "");
            LD(strOptString);
        }
        return strOptString == null ? "" : strOptString;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public List<String> cX() {
        return this.LqL;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void caU() {
        this.oDQ = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public double cra() {
        return Jcg(DhB());
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public JSONObject dLt() {
        JSONObject jSONObjectSP = SP();
        JSONObject jSONObjectTzV = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().TzV(String.valueOf(If()));
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObjectSP);
            jSONObject.put("creatives", jSONArray);
            jSONObject.put("did", 1);
            jSONObject.put("processing_time_ms", 100);
            jSONObject.put(TrackingKey.REQUEST_ID, "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa");
            jSONObject.put("s_receive_ts", 1);
            jSONObject.put("s_send_ts", 1);
            jSONObject.put("status_code", 20000);
            jSONObject.put("core_settings", jSONObjectTzV);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.sP("MaterialMeta", "toJsonObjPlus", e11.getMessage());
        }
        return jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int dNu() {
        HiB hiB = this.DKa;
        if (hiB == null) {
            return 2;
        }
        return hiB.sP();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void dNu(int i11) {
        this.mZN = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void dNu(String str) {
        this.JcM = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int dU() {
        return this.ron;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void db(int i11) {
        this.AE = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean db() {
        sU.Sj sj2 = this.gR;
        if (sj2 != null) {
            return !TextUtils.isEmpty(sj2.Fmk());
        }
        int i11 = this.HS;
        return i11 == 9 || i11 == 10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String dwU() {
        return this.Ei;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void dwU(int i11) {
        if (i11 < 0 || i11 > 30) {
            i11 = 6;
        }
        this.Jcg = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int dx() {
        return this.zR;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void dx(int i11) {
        this.Uc = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void dx(String str) {
        this.dLt = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean eEJ() {
        b bVar = this.pfr;
        return bVar == null || bVar.l() != 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean eI() {
        return this.f21084kb;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int eJi() {
        return this.UmR;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String eMB() {
        return this.dLt;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public kF eNi() {
        return this.Jw;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj efv() {
        return this.cra;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            sU sUVar = (sU) obj;
            if (this.Wjd.equals(sUVar.aZ()) && this.xhi.equals(sUVar.mZN())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean ewz() {
        return DKa() == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public sP fAj() {
        return this.cF;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int fF() {
        return this.HS;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void fF(int i11) {
        this.Ph = i11;
    }

    public String fgU() {
        return this.eI;
    }

    public int gFR() {
        return this.Hs;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String gR() {
        return this.fF;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public uvD gY() {
        return this.uP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int gq() {
        return this.hzV;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public zR hLo() {
        return this.Za;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public com.bytedance.sdk.component.uA.sP.Sj hif() {
        com.bytedance.sdk.component.uA.sP.Sj sj2 = new com.bytedance.sdk.component.uA.sP.Sj();
        sj2.Sj(this.Uc);
        sj2.sP(this.Wjd);
        sj2.Sj(mZN());
        return sj2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean hzV() {
        return this.rB == 2;
    }

    public int iO() {
        return this.MuB;
    }

    public int iUm() {
        return this.TO;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int ib() {
        return this.f21088vb;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void ib(int i11) {
        this.f21080dx = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void ib(String str) {
        this.WxP = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void jU() {
        this.sU.HiB();
        Jcg(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String jb() {
        return this.Ir;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void jb(int i11) {
        this.tX = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int jjS() {
        return this.FPG;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int kF() {
        return this.TX;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void kF(int i11) {
        this.IPx = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void kF(String str) {
        this.WMZ = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public List<String> kb() {
        return this.Yf;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int ley() {
        int i11 = this.zR;
        if (i11 == 5 || i11 == 6 || i11 == 33) {
            return 1;
        }
        if (Fqk()) {
            return 2;
        }
        return this.qRN;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void ley(int i11) {
        this.MuB = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void ley(String str) {
        this.Ss = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int liH() {
        if (this.Xqg != 2) {
            this.Xqg = 1;
        }
        return this.Xqg;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String mZN() {
        return this.xhi;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int mj() {
        return this.GMp;
    }

    public int nD() {
        return this.RrR;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public JSONObject nP() {
        return this.tY;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int nbp() {
        try {
            JSONObject jSONObjectDhB = DhB();
            if (jSONObjectDhB != null) {
                return jSONObjectDhB.optInt("rec_clk", 0);
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public int nc() {
        return this.IPx;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public LqL ndK() {
        return this.Lip;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void ndK(int i11) {
        this.UmR = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int nou() {
        return this.tX;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public List<FilterWord> nru() {
        return this.RiZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int nw() {
        return this.uA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean oDQ() {
        Fmk fmk;
        return Ph() && !UmR() && (fmk = this.jjS) != null && fmk.Sj() == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int oWa() {
        int i11 = this.Ph;
        if (i11 > 0) {
            return i11;
        }
        return 20;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean pR() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int pfr() {
        return this.roy;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int qRN() {
        aa aaVar = this.zwV;
        if (aaVar == null) {
            return 0;
        }
        return aaVar.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void qRN(int i11) {
        this.rN = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean rB() {
        return DKa() == 3 || DKa() == 4;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean rN() {
        return this.Fmk;
    }

    public int rZ() {
        return this.IOh;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int rd() {
        return this.AE;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String ron() {
        return this.WMZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String roy() {
        return this.Ss;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int sP() {
        return this.uvD;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(double d11) {
        if (d11 == 2.0d || d11 == 1.0d) {
            this.TX = (int) d11;
        } else {
            this.TX = 2;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(int i11) {
        this.uvD = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(long j11) {
        this.sdp = j11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2) {
        this.cra = sj2;
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(sj2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(uvD uvd) {
        this.uP = uvd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(JSONObject jSONObject) {
        this.cKW = jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(b bVar) {
        this.gY = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sP(boolean z10) {
        this.Bml = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public uP sU() {
        return this.Ov;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sU(int i11) {
        this.IOh = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sU(String str) {
        this.xhi = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int sdp() {
        return this.f21080dx;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public dNu sef() {
        return this.f21086rd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sef(int i11) {
        this.TO = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void sef(String str) {
        this.ley = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean tPD() {
        return this.hif;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean tR() {
        return this.f21090yr;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public Zq tX() {
        return this.DPc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public float tY() {
        if (this.oWa <= 0.0f) {
            this.oWa = 100.0f;
        }
        return (this.oWa * 1000.0f) / 1000.0f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String tc() {
        return this.jU;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public EjP tz() {
        return this.xD;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void uA(int i11) {
        this.QZ = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void uA(String str) {
        this.SP = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void uA(boolean z10) {
        this.f21090yr = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean uA() {
        return this.Bml;
    }

    public String uE() {
        return this.Mts;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String uP() {
        return this.f21079db;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String uP(String str) {
        JSONObject jSONObjectDhB = DhB();
        return jSONObjectDhB != null ? jSONObjectDhB.optString("rit", str) : str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void uP(int i11) {
        this.roy = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int uWH() {
        String strValueOf;
        if (hLo() != null && hLo().sP() >= 0) {
            return hLo().sP();
        }
        if (xD() != null) {
            strValueOf = xD().getCodeId();
        } else {
            int iIf = If();
            strValueOf = iIf != 0 ? String.valueOf(iIf) : null;
        }
        if (strValueOf != null) {
            return com.bytedance.sdk.openadsdk.core.dNu.EjP().Ym(strValueOf);
        }
        return 30;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public HiB uvD() {
        return this.DKa;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void uvD(int i11) {
        this.eMB = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void uvD(String str) {
        this.fF = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public long vP() {
        return this.TEQ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void vS(int i11) {
        this.ndK = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void vS(String str) {
        this.DhB = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void vS(JSONObject jSONObject) {
        this.cF.Sj(jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void vS(boolean z10) {
        this.Fmk = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int vb() {
        JSONObject jSONObject = this.dU;
        if (jSONObject != null) {
            return jSONObject.optInt("easy_playable_skip_duration", 0);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public b vll() {
        return this.gY;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int wE() {
        return this.ndK;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void wE(int i11) {
        this.f21083jb = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void wE(String str) {
        this.NPW = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public AdSlot xD() {
        return this.nru;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void xD(int i11) {
        this.cX = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean xH() {
        return this.Snq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public sU.Sj xhi() {
        return this.gR;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void xhi(int i11) {
        this.TT = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public String xu() {
        return this.LD;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int xzt() {
        return this.cX;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean yfI() {
        List<Integer> listTKC;
        return (xhi() == null || (listTKC = xhi().TKC()) == null || !listTKC.contains(57)) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public boolean yr() {
        if (Ph() && !UmR()) {
            int iNextInt = new Random().nextInt(100);
            Fmk fmk = this.jjS;
            if (fmk != null && iNextInt < fmk.TKC()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int zR() {
        return this.f21082ib;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void zR(int i11) {
        this.Hs = i11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public void zR(String str) {
        this.eI = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.sU
    public int zwV() {
        return this.f21081gq;
    }
}
