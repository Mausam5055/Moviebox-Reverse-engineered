package com.iab.omid.library.mmadbridge.walking;

import java.util.HashSet;
import org.json.JSONObject;
import pe.d;
import pe.e;
import pe.f;

/* JADX INFO: loaded from: classes4.dex */
public class b implements pe.b.InterfaceC0883b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f33763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final pe.c f33764b;

    public b(pe.c cVar) {
        this.f33764b = cVar;
    }

    @Override // pe.b.InterfaceC0883b
    public JSONObject a() {
        return this.f33763a;
    }

    @Override // pe.b.InterfaceC0883b
    public void a(JSONObject jSONObject) {
        this.f33763a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet hashSet, long j11) {
        this.f33764b.c(new e(this, hashSet, jSONObject, j11));
    }

    public void c() {
        this.f33764b.c(new d(this));
    }

    public void d(JSONObject jSONObject, HashSet hashSet, long j11) {
        this.f33764b.c(new f(this, hashSet, jSONObject, j11));
    }
}
