package com.mbridge.msdk.setting;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f37211g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37205a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37206b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37207c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37208d = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37212h = 0;

    public static a a(String str) {
        Exception e11;
        a aVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar = new a();
            try {
                aVar.b(jSONObject.optString("http_domain", com.mbridge.msdk.foundation.same.net.utils.d.h().f35475h));
                aVar.c(jSONObject.optString("tcp_domain", com.mbridge.msdk.foundation.same.net.utils.d.h().f35479l));
                aVar.e(jSONObject.optInt("tcp_port", com.mbridge.msdk.foundation.same.net.utils.d.h().f35483p));
                aVar.f(jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 0));
                aVar.a(jSONObject.optInt("batch_size", 1));
                aVar.c(jSONObject.optInt("duration", 0));
                aVar.b(jSONObject.optInt("disable", 0));
                aVar.d(jSONObject.optInt("e_t_l", 0));
            } catch (Exception e12) {
                e11 = e12;
                e11.printStackTrace();
            }
        } catch (Exception e13) {
            e11 = e13;
            aVar = null;
        }
        return aVar;
    }

    public int a() {
        return this.f37205a;
    }

    public void a(int i11) {
        if (i11 < 1) {
            i11 = 1;
        }
        this.f37205a = i11;
    }

    public int b() {
        return this.f37206b;
    }

    public void b(int i11) {
        this.f37206b = i11;
    }

    public void b(String str) {
        this.f37209e = str;
    }

    public int c() {
        return this.f37207c;
    }

    public void c(int i11) {
        this.f37207c = i11;
    }

    public void c(String str) {
        this.f37210f = str;
    }

    public int d() {
        return this.f37208d;
    }

    public void d(int i11) {
        this.f37208d = i11;
    }

    public String e() {
        return this.f37209e;
    }

    public void e(int i11) {
        this.f37211g = i11;
    }

    public String f() {
        return this.f37210f;
    }

    public void f(int i11) {
        this.f37212h = i11;
    }

    public int g() {
        return this.f37211g;
    }

    public int h() {
        return this.f37212h;
    }
}
