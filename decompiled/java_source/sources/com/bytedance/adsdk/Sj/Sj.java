package com.bytedance.adsdk.Sj;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements vS {
    @Override // com.bytedance.adsdk.Sj.vS
    public Object Sj(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length != 2) {
            return null;
        }
        String strValueOf = String.valueOf(objArr[0]);
        JSONArray jSONArray = new JSONArray();
        try {
            JSONArray jSONArray2 = new JSONArray(strValueOf);
            int i11 = Integer.parseInt(String.valueOf(objArr[1]));
            for (int i12 = 0; i12 < jSONArray2.length(); i12 += i11) {
                JSONObject jSONObject2 = new JSONObject();
                JSONArray jSONArray3 = new JSONArray();
                for (int i13 = 0; i13 < i11; i13++) {
                    int i14 = i12 + i13;
                    if (i14 >= jSONArray2.length()) {
                        break;
                    }
                    jSONArray3.put(jSONArray2.optJSONObject(i14));
                }
                jSONObject2.put("$chunk", jSONArray3);
                jSONArray.put(jSONObject2);
            }
        } catch (Throwable unused) {
        }
        return jSONArray;
    }
}
