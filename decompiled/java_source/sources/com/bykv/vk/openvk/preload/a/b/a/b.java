package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f20327a;

    static final class a<E> extends r<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r<E> f20328a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.h<? extends Collection<E>> f20329b;

        public a(com.bykv.vk.openvk.preload.a.d dVar, Type type, r<E> rVar, com.bykv.vk.openvk.preload.a.b.h<? extends Collection<E>> hVar) {
            this.f20328a = new l(dVar, rVar, type);
            this.f20329b = hVar;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> collectionA = this.f20329b.a();
            aVar.a();
            while (aVar.e()) {
                collectionA.add(this.f20328a.a(aVar));
            }
            aVar.b();
            return collectionA;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                cVar.h();
                return;
            }
            cVar.d();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f20328a.a(cVar, it.next());
            }
            cVar.e();
        }
    }

    public b(com.bykv.vk.openvk.preload.a.b.b bVar) {
        this.f20327a = bVar;
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        if (!Collection.class.isAssignableFrom(clsA)) {
            return null;
        }
        Type typeA = com.bykv.vk.openvk.preload.a.b.a.a(typeB, (Class<?>) clsA);
        return new a(dVar, typeA, dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(typeA)), this.f20327a.a(aVar));
    }
}
