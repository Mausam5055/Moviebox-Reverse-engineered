package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Purchase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f19034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f19035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JSONObject f19036c;

    public Purchase(String str, String str2) {
        this.f19034a = str;
        this.f19035b = str2;
        this.f19036c = new JSONObject(str);
    }

    private final ArrayList i() {
        ArrayList arrayList = new ArrayList();
        if (this.f19036c.has("productIds")) {
            JSONArray jSONArrayOptJSONArray = this.f19036c.optJSONArray("productIds");
            if (jSONArrayOptJSONArray != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i11));
                }
            }
        } else if (this.f19036c.has("productId")) {
            arrayList.add(this.f19036c.optString("productId"));
        }
        return arrayList;
    }

    public a a() {
        JSONObject jSONObject = this.f19036c;
        String strOptString = jSONObject.optString("obfuscatedAccountId");
        String strOptString2 = jSONObject.optString("obfuscatedProfileId");
        if (strOptString == null && strOptString2 == null) {
            return null;
        }
        return new a(strOptString, strOptString2);
    }

    public String b() {
        String strOptString = this.f19036c.optString("orderId");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public String c() {
        return this.f19034a;
    }

    public List d() {
        return i();
    }

    public int e() {
        return this.f19036c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f19034a, purchase.c()) && TextUtils.equals(this.f19035b, purchase.h());
    }

    public long f() {
        return this.f19036c.optLong("purchaseTime");
    }

    public String g() {
        JSONObject jSONObject = this.f19036c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public String h() {
        return this.f19035b;
    }

    public int hashCode() {
        return this.f19034a.hashCode();
    }

    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f19034a));
    }
}
