package com.bytedance.sdk.component.adexpress.dynamic.EjP;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    public String EjP;
    public List<Sj> Sj;
    public String TKC;
    public String sP;

    public static class Sj {
        public int Sj;
        public JSONObject sP;
    }

    public static EjP Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        EjP ejP = new EjP();
        String strOptString = jSONObject.optString("custom_components");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(strOptString);
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                if (jSONObjectOptJSONObject != null) {
                    Sj sj2 = new Sj();
                    sj2.Sj = jSONObjectOptJSONObject.optInt("id");
                    sj2.sP = new JSONObject(jSONObjectOptJSONObject.optString("componentLayout"));
                    arrayList.add(sj2);
                }
            }
        } catch (JSONException unused) {
        }
        ejP.Sj = arrayList;
        ejP.sP = jSONObject.optString("diff_data");
        ejP.TKC = jSONObject.optString("style_diff");
        ejP.EjP = jSONObject.optString("tag_diff");
        return ejP;
    }
}
