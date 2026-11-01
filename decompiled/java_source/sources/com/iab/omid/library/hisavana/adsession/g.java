package com.iab.omid.library.hisavana.adsession;

import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f33552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final URL f33553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f33554c;

    private g(String str, URL url, String str2) {
        this.f33552a = str;
        this.f33553b = url;
        this.f33554c = str2;
    }

    public static g a(String str, URL url, String str2) {
        ie.g.f(str, "VendorKey is null or empty");
        ie.g.d(url, "ResourceURL is null");
        ie.g.f(str2, "VerificationParameters is null or empty");
        return new g(str, url, str2);
    }

    public static g b(URL url) {
        ie.g.d(url, "ResourceURL is null");
        return new g(null, url, null);
    }

    public URL c() {
        return this.f33553b;
    }

    public String d() {
        return this.f33552a;
    }

    public String e() {
        return this.f33554c;
    }

    public JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        ie.c.i(jSONObject, "vendorKey", this.f33552a);
        ie.c.i(jSONObject, "resourceUrl", this.f33553b.toString());
        ie.c.i(jSONObject, "verificationParameters", this.f33554c);
        return jSONObject;
    }
}
