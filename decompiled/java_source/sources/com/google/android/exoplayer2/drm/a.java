package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
abstract class a {
    public static byte[] a(byte[] bArr) {
        return p0.f27626a >= 27 ? bArr : p0.n0(c(p0.D(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (p0.f27626a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(p0.D(bArr));
            StringBuilder sb2 = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                if (i11 != 0) {
                    sb2.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i11);
                sb2.append("{\"k\":\"");
                sb2.append(d(jSONObject2.getString(CampaignEx.JSON_KEY_AD_K)));
                sb2.append("\",\"kid\":\"");
                sb2.append(d(jSONObject2.getString("kid")));
                sb2.append("\",\"kty\":\"");
                sb2.append(jSONObject2.getString("kty"));
                sb2.append("\"}");
            }
            sb2.append("]}");
            return p0.n0(sb2.toString());
        } catch (JSONException e11) {
            com.google.android.exoplayer2.util.s.d("ClearKeyUtil", "Failed to adjust response data: " + p0.D(bArr), e11);
            return bArr;
        }
    }

    private static String c(String str) {
        return str.replace('+', '-').replace('/', '_');
    }

    private static String d(String str) {
        return str.replace('-', '+').replace('_', '/');
    }
}
