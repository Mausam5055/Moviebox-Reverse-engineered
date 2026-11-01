package com.iab.omid.library.vungle.walking;

import java.util.HashSet;
import org.json.JSONObject;
import ve.d;
import ve.e;
import ve.f;

/* JADX INFO: loaded from: classes4.dex */
public class b implements ve.b.InterfaceC0947b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f33871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ve.c f33872b;

    public b(ve.c cVar) {
        this.f33872b = cVar;
    }

    @Override // ve.b.InterfaceC0947b
    public JSONObject a() {
        return this.f33871a;
    }

    @Override // ve.b.InterfaceC0947b
    public void a(JSONObject jSONObject) {
        this.f33871a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet hashSet, long j11) {
        this.f33872b.c(new e(this, hashSet, jSONObject, j11));
    }

    public void c() {
        this.f33872b.c(new d(this));
    }

    public void d(JSONObject jSONObject, HashSet hashSet, long j11) {
        this.f33872b.c(new f(this, hashSet, jSONObject, j11));
    }
}
