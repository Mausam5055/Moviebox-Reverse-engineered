package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.o;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class k<T> extends r<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o<T> f20360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.h<T> f20361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.a.d f20362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.c.a<T> f20363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s f20364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r<T> f20365f;

    final class a {
        /* synthetic */ a() {
            this((byte) 0);
        }

        private a(byte b11) {
        }
    }

    public k(o<T> oVar, com.bykv.vk.openvk.preload.a.h<T> hVar, com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar, s sVar) {
        new a();
        this.f20360a = oVar;
        this.f20361b = hVar;
        this.f20362c = dVar;
        this.f20363d = aVar;
        this.f20364e = sVar;
    }

    private r<T> b() {
        r<T> rVar = this.f20365f;
        if (rVar != null) {
            return rVar;
        }
        r<T> rVarA = this.f20362c.a(this.f20364e, this.f20363d);
        this.f20365f = rVarA;
        return rVarA;
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (this.f20361b == null) {
            return b().a(aVar);
        }
        if (com.bykv.vk.openvk.preload.geckox.h.a.a(aVar) instanceof com.bykv.vk.openvk.preload.a.k) {
            return null;
        }
        com.bykv.vk.openvk.preload.a.h<T> hVar = this.f20361b;
        this.f20363d.b();
        return hVar.a();
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t11) throws IOException {
        o<T> oVar = this.f20360a;
        if (oVar == null) {
            b().a(cVar, t11);
        } else if (t11 == null) {
            cVar.h();
        } else {
            this.f20363d.b();
            com.bykv.vk.openvk.preload.geckox.h.a.a(oVar.a(), cVar);
        }
    }
}
