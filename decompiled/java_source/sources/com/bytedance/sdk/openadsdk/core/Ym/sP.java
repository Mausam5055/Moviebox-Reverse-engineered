package com.bytedance.sdk.openadsdk.core.Ym;

import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends TKC {
    private long TEQ;
    private long Ym;

    public sP(int i11, int i12, long j11, long j12, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0267Sj enumC0267Sj, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar, String str, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list2, String str2) {
        super(i11, i12, enumC0267Sj, sPVar, str, list, list2, str2);
        this.TEQ = j11;
        this.Ym = j12;
        this.uA = "icon_click";
    }

    public static sP Sj(JSONObject jSONObject) {
        TKC tkcSP = TKC.sP(jSONObject);
        if (tkcSP == null) {
            return null;
        }
        return new sP(tkcSP.Sj, tkcSP.sP, jSONObject.optLong("offset", -1L), jSONObject.optLong("duration", -1L), tkcSP.TKC, tkcSP.EjP, tkcSP.HiB, tkcSP.vS, tkcSP.Jcg, tkcSP.Dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ym.TKC
    public JSONObject Sj() throws JSONException {
        JSONObject jSONObjectSj = super.Sj();
        if (jSONObjectSj != null) {
            jSONObjectSj.put("offset", this.TEQ);
            jSONObjectSj.put("duration", this.Ym);
        }
        return jSONObjectSj;
    }
}
