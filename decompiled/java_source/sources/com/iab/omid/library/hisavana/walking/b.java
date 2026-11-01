package com.iab.omid.library.hisavana.walking;

import java.util.HashSet;
import je.d;
import je.e;
import je.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b implements je.b.InterfaceC0800b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f33643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final je.c f33644b;

    public b(je.c cVar) {
        this.f33644b = cVar;
    }

    @Override // je.b.InterfaceC0800b
    public JSONObject a() {
        return this.f33643a;
    }

    @Override // je.b.InterfaceC0800b
    public void a(JSONObject jSONObject) {
        this.f33643a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet hashSet, long j11) {
        this.f33644b.c(new e(this, hashSet, jSONObject, j11));
    }

    public void c() {
        this.f33644b.c(new d(this));
    }

    public void d(JSONObject jSONObject, HashSet hashSet, long j11) {
        this.f33644b.c(new f(this, hashSet, jSONObject, j11));
    }
}
