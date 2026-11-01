package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f20334a;

    final class a<K, V> extends r<Map<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r<K> f20335a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final r<V> f20336b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.h<? extends Map<K, V>> f20337c;

        public a(f fVar, com.bykv.vk.openvk.preload.a.d dVar, Type type, r<K> rVar, Type type2, r<V> rVar2, com.bykv.vk.openvk.preload.a.b.h<? extends Map<K, V>> hVar) {
            this.f20335a = new l(dVar, rVar, type);
            this.f20336b = new l(dVar, rVar2, type2);
            this.f20337c = hVar;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
            if (bVarF == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> mapA = this.f20337c.a();
            if (bVarF == com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K kA = this.f20335a.a(aVar);
                    if (mapA.put(kA, this.f20336b.a(aVar)) != null) {
                        throw new p("duplicate key: ".concat(String.valueOf(kA)));
                    }
                    aVar.b();
                }
                aVar.b();
            } else {
                aVar.c();
                while (aVar.e()) {
                    com.bykv.vk.openvk.preload.a.b.e.f20439a.a(aVar);
                    K kA2 = this.f20335a.a(aVar);
                    if (mapA.put(kA2, this.f20336b.a(aVar)) != null) {
                        throw new p("duplicate key: ".concat(String.valueOf(kA2)));
                    }
                }
                aVar.d();
            }
            return mapA;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map == null) {
                cVar.h();
                return;
            }
            cVar.f();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                cVar.a(String.valueOf(entry.getKey()));
                this.f20336b.a(cVar, entry.getValue());
            }
            cVar.g();
        }
    }

    public f(com.bykv.vk.openvk.preload.a.b.b bVar) {
        this.f20334a = bVar;
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Type typeB = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] typeArrB = com.bykv.vk.openvk.preload.a.b.a.b(typeB, com.bykv.vk.openvk.preload.a.b.a.b(typeB));
        Type type = typeArrB[0];
        return new a(this, dVar, typeArrB[0], (type == Boolean.TYPE || type == Boolean.class) ? m.f20371c : dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type)), typeArrB[1], dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(typeArrB[1])), this.f20334a.a(aVar));
    }
}
