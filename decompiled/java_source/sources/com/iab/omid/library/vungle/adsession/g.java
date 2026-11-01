package com.iab.omid.library.vungle.adsession;

import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final URL f33787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f33788c;

    private g(String str, URL url, String str2) {
        this.f33786a = str;
        this.f33787b = url;
        this.f33788c = str2;
    }

    public static g a(String str, URL url, String str2) {
        ue.g.f(str, "VendorKey is null or empty");
        ue.g.d(url, "ResourceURL is null");
        ue.g.f(str2, "VerificationParameters is null or empty");
        return new g(str, url, str2);
    }

    public URL b() {
        return this.f33787b;
    }

    public String c() {
        return this.f33786a;
    }

    public String d() {
        return this.f33788c;
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        ue.c.i(jSONObject, "vendorKey", this.f33786a);
        ue.c.i(jSONObject, "resourceUrl", this.f33787b.toString());
        ue.c.i(jSONObject, "verificationParameters", this.f33788c);
        return jSONObject;
    }
}
