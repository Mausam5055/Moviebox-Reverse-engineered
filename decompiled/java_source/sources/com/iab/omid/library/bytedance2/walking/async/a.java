package com.iab.omid.library.bytedance2.walking.async;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final HashSet<String> f33520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f33521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f33522e;

    public a(b.InterfaceC0458b interfaceC0458b, HashSet<String> hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0458b);
        this.f33520c = new HashSet<>(hashSet);
        this.f33521d = jSONObject;
        this.f33522e = j11;
    }
}
