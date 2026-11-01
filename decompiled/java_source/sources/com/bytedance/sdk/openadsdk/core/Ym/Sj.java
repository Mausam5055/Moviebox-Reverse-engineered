package com.bytedance.sdk.openadsdk.core.Ym;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private double Dq;
    private String EjP;
    private String HiB;
    private String Jcg;
    private int TEQ;
    TKC TKC;
    private String Ym;
    private String Zq;
    sP sP;
    private int uA;
    private String vS;
    EjP Sj = new EjP(this);

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final Set<TEQ> f21041aa = new HashSet();
    private String Fmk = "VAST_ACTION_BUTTON";
    private boolean sef = false;

    public static Sj Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Sj sj2 = new Sj();
        sj2.Sj.Sj(jSONObject.optJSONObject("videoTrackers"));
        sj2.sP = sP.Sj(jSONObject.optJSONObject("vastIcon"));
        sj2.TKC = TKC.sP(jSONObject.optJSONObject("endCard"));
        sj2.EjP = jSONObject.optString(CampaignEx.JSON_KEY_TITLE);
        sj2.HiB = jSONObject.optString(TrackingKey.DESCRIPTION);
        sj2.vS = jSONObject.optString("clickThroughUrl");
        sj2.Jcg = jSONObject.optString("videoUrl");
        sj2.Dq = jSONObject.optDouble("videDuration");
        sj2.Ym = jSONObject.optString("tag");
        sj2.uA = jSONObject.optInt("videoWidth");
        sj2.uA = jSONObject.optInt("videoHeight");
        sj2.f21041aa.addAll(TEQ.Sj(jSONObject.optJSONArray("viewabilityVendor")));
        return sj2;
    }

    private JSONArray uvD() {
        JSONArray jSONArray = new JSONArray();
        for (TEQ teq : this.f21041aa) {
            if (teq != null) {
                jSONArray.put(teq.EjP());
            }
        }
        return jSONArray;
    }

    public double Dq() {
        return this.Dq;
    }

    public String EjP() {
        return this.EjP;
    }

    public void EjP(String str) {
        this.Jcg = str;
    }

    public int Fmk() {
        return this.TEQ;
    }

    public String HiB() {
        return this.HiB;
    }

    public void HiB(String str) {
        this.Fmk = str;
    }

    public String Jcg() {
        return this.Jcg;
    }

    public void Jcg(String str) {
        this.Zq = str;
    }

    public EjP Sj() {
        return this.Sj;
    }

    public void Sj(double d11) {
        this.Dq = d11;
    }

    public void Sj(int i11) {
        this.uA = i11;
    }

    public void Sj(TKC tkc) {
        if (tkc != null) {
            tkc.Sj(this.Jcg);
        }
        this.TKC = tkc;
    }

    public void Sj(sP sPVar) {
        if (sPVar != null) {
            sPVar.Sj(this.Jcg);
        }
        this.sP = sPVar;
    }

    public void Sj(sU sUVar) {
        this.Sj.Sj(sUVar);
        sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.Sj(sUVar);
        }
        TKC tkc = this.TKC;
        if (tkc != null) {
            tkc.Sj(sUVar);
        }
    }

    public void Sj(String str) {
        this.EjP = str;
    }

    public void Sj(Set<TEQ> set) {
        if (set == null || set.size() <= 0) {
            return;
        }
        this.f21041aa.addAll(set);
    }

    public JSONObject TEQ() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("videoTrackers", this.Sj.Sj());
        sP sPVar = this.sP;
        if (sPVar != null) {
            jSONObject.put("vastIcon", sPVar.Sj());
        }
        TKC tkc = this.TKC;
        if (tkc != null) {
            jSONObject.put("endCard", tkc.Sj());
        }
        jSONObject.put(CampaignEx.JSON_KEY_TITLE, this.EjP);
        jSONObject.put(TrackingKey.DESCRIPTION, this.HiB);
        jSONObject.put("clickThroughUrl", this.vS);
        jSONObject.put("videoUrl", this.Jcg);
        jSONObject.put("videDuration", this.Dq);
        jSONObject.put("tag", this.Ym);
        jSONObject.put("videoWidth", this.uA);
        jSONObject.put("videoHeight", this.TEQ);
        jSONObject.put("viewabilityVendor", uvD());
        return jSONObject;
    }

    public TKC TKC() {
        return this.TKC;
    }

    public void TKC(String str) {
        this.vS = str;
    }

    public String Ym() {
        return this.Ym;
    }

    public void Zq() {
        this.sef = true;
    }

    public int aa() {
        return this.uA;
    }

    public sP sP() {
        return this.sP;
    }

    public void sP(int i11) {
        this.TEQ = i11;
    }

    public void sP(String str) {
        this.HiB = str;
    }

    public Set<TEQ> sef() {
        return this.f21041aa;
    }

    public String uA() {
        TKC tkc;
        String str = this.vS;
        if (!TextUtils.isEmpty(this.Zq)) {
            String str2 = this.Zq;
            this.Zq = null;
            return str2;
        }
        String str3 = this.Fmk;
        str3.hashCode();
        if (str3.equals("VAST_ICON")) {
            sP sPVar = this.sP;
            if (sPVar != null && !TextUtils.isEmpty(sPVar.Dq)) {
                str = this.sP.Dq;
            }
        } else if (str3.equals("VAST_END_CARD") && (tkc = this.TKC) != null && !TextUtils.isEmpty(tkc.Dq)) {
            str = this.TKC.Dq;
        }
        this.Fmk = "VAST_ACTION_BUTTON";
        return str;
    }

    public String vS() {
        return this.vS;
    }

    public void vS(String str) {
        this.Ym = str;
        this.Sj.Sj(str);
    }
}
