package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes3.dex */
public final class v implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f24436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f24437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f24438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final uz.a f24439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final uz.a f24440e;

    public v(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5) {
        this.f24436a = aVar;
        this.f24437b = aVar2;
        this.f24438c = aVar3;
        this.f24439d = aVar4;
        this.f24440e = aVar5;
    }

    public static v a(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4, uz.a aVar5) {
        return new v(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static t c(c9.a aVar, c9.a aVar2, y8.e eVar, z8.o oVar, z8.s sVar) {
        return new t(aVar, aVar2, eVar, oVar, sVar);
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public t get() {
        return c((c9.a) this.f24436a.get(), (c9.a) this.f24437b.get(), (y8.e) this.f24438c.get(), (z8.o) this.f24439d.get(), (z8.s) this.f24440e.get());
    }
}
