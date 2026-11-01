package com.iab.omid.library.bytedance2.walking;

import com.iab.omid.library.bytedance2.walking.async.d;
import com.iab.omid.library.bytedance2.walking.async.e;
import com.iab.omid.library.bytedance2.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b implements com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0458b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f33529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.walking.async.c f33530b;

    public b(com.iab.omid.library.bytedance2.walking.async.c cVar) {
        this.f33530b = cVar;
    }

    @Override // com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0458b
    public JSONObject a() {
        return this.f33529a;
    }

    @Override // com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0458b
    public void a(JSONObject jSONObject) {
        this.f33529a = jSONObject;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j11) {
        this.f33530b.b(new e(this, hashSet, jSONObject, j11));
    }

    public void b() {
        this.f33530b.b(new d(this));
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j11) {
        this.f33530b.b(new f(this, hashSet, jSONObject, j11));
    }
}
