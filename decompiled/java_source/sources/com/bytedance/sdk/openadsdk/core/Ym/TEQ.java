package com.bytedance.sdk.openadsdk.core.Ym;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TEQ {
    private final String EjP;
    private final String Sj;
    private final String TKC;
    private final URL sP;

    private TEQ(String str, String str2, String str3, String str4) throws MalformedURLException {
        this.Sj = str2;
        this.sP = new URL(str);
        this.TKC = str3;
        this.EjP = str4;
    }

    public static TEQ Sj(String str, String str2, String str3, String str4, String str5) {
        if (CampaignEx.KEY_OMID.equalsIgnoreCase(str) && !TextUtils.isEmpty(str2)) {
            try {
                return new TEQ(str2, str3, str4, str5);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static TEQ Sj(JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("apiFramework");
            String strOptString2 = jSONObject.optString("javascriptResourceUrl");
            if (CampaignEx.KEY_OMID.equalsIgnoreCase(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                return new TEQ(strOptString2, jSONObject.optString("vendorKey"), jSONObject.optString("verificationParameters"), jSONObject.optString("verificationNotExecuted"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static Set<TEQ> Sj(JSONArray jSONArray) {
        HashSet hashSet = new HashSet();
        if (jSONArray == null) {
            return hashSet;
        }
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            try {
                hashSet.add(Sj(jSONArray.getJSONObject(i11)));
            } catch (Throwable unused) {
            }
        }
        return hashSet;
    }

    private boolean Sj(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public JSONObject EjP() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apiFramework", CampaignEx.KEY_OMID);
            jSONObject.put("javascriptResourceUrl", this.sP.toString());
            if (!TextUtils.isEmpty(this.Sj)) {
                jSONObject.put("vendorKey", this.Sj);
            }
            if (!TextUtils.isEmpty(this.TKC)) {
                jSONObject.put("verificationParameters", this.TKC);
            }
            if (!TextUtils.isEmpty(this.EjP)) {
                jSONObject.put("verificationNotExecuted", this.EjP);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String Sj() {
        return this.Sj;
    }

    public URL TKC() {
        return this.sP;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TEQ)) {
            return false;
        }
        TEQ teq = (TEQ) obj;
        if (Sj(this.Sj, teq.Sj) && Sj(this.sP, teq.sP) && Sj(this.TKC, teq.TKC)) {
            return Sj(this.EjP, teq.EjP);
        }
        return false;
    }

    public int hashCode() {
        String str = this.Sj;
        int iHashCode = (((str != null ? str.hashCode() : 0) * 31) + this.sP.hashCode()) * 31;
        String str2 = this.TKC;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.EjP;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String sP() {
        return this.TKC;
    }
}
