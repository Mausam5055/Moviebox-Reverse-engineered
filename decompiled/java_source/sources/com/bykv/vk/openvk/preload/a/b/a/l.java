package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.r;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes2.dex */
final class l<T> extends r<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.d f20366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r<T> f20367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f20368c;

    l(com.bykv.vk.openvk.preload.a.d dVar, r<T> rVar, Type type) {
        this.f20366a = dVar;
        this.f20367b = rVar;
        this.f20368c = type;
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        return this.f20367b.a(aVar);
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t11) throws IOException {
        r<T> rVarA = this.f20367b;
        Type type = this.f20368c;
        if (t11 != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t11.getClass();
        }
        if (type != this.f20368c) {
            rVarA = this.f20366a.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type));
            if (rVarA instanceof h.a) {
                r<T> rVar = this.f20367b;
                if (!(rVar instanceof h.a)) {
                    rVarA = rVar;
                }
            }
        }
        rVarA.a(cVar, t11);
    }
}
