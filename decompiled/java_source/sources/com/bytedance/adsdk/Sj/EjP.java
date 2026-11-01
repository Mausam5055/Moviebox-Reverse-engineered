package com.bytedance.adsdk.Sj;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements vS {
    @Override // com.bytedance.adsdk.Sj.vS
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public String Sj(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length != 3) {
            return null;
        }
        String strValueOf = String.valueOf(objArr[0]);
        if (TextUtils.isEmpty(strValueOf)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(strValueOf);
            String strValueOf2 = String.valueOf(objArr[1]);
            if (TextUtils.isEmpty(strValueOf2)) {
                return null;
            }
            Object objSj = com.bytedance.adsdk.Sj.sP.Sj.Sj(strValueOf2).Sj(jSONObject2);
            return TextUtils.isEmpty(String.valueOf(objSj)) ? String.valueOf(objArr[2]) : String.valueOf(objSj);
        } catch (JSONException unused) {
            return null;
        }
    }
}
