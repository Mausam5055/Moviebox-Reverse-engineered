package com.mbridge.msdk.setting;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37309f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f37310g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37311h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37304a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37305b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37306c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37307d = 30;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37308e = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f37312i = 0;

    public static d a(String str) {
        Exception e11;
        d dVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            dVar = new d();
            try {
                dVar.b(jSONObject.optString("h_d", com.mbridge.msdk.foundation.same.net.utils.d.h().f35472f));
                dVar.c(jSONObject.optString("t_d", com.mbridge.msdk.foundation.same.net.utils.d.h().f35478k));
                dVar.c(jSONObject.optInt("t_p", com.mbridge.msdk.foundation.same.net.utils.d.h().f35482o));
                dVar.d(jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1));
                dVar.b(jSONObject.optInt("d_t", 30));
                dVar.a(jSONObject.optInt("d_a", 0));
            } catch (Exception e12) {
                e11 = e12;
                e11.printStackTrace();
            }
        } catch (Exception e13) {
            e11 = e13;
            dVar = null;
        }
        return dVar;
    }

    public int a() {
        return this.f37306c;
    }

    public void a(int i11) {
        this.f37306c = i11;
    }

    public int b() {
        return this.f37307d;
    }

    public void b(int i11) {
        this.f37307d = i11;
    }

    public void b(String str) {
        this.f37309f = str;
    }

    public String c() {
        return this.f37309f;
    }

    public void c(int i11) {
        this.f37311h = i11;
    }

    public void c(String str) {
        this.f37310g = str;
    }

    public String d() {
        return this.f37310g;
    }

    public void d(int i11) {
        this.f37312i = i11;
    }

    public int e() {
        return this.f37311h;
    }
}
