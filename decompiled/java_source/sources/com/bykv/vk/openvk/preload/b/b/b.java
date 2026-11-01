package com.bykv.vk.openvk.preload.b.b;

import com.bykv.vk.openvk.preload.b.d;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<a> f20536a;

    public b(a... aVarArr) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f20536a = copyOnWriteArrayList;
        copyOnWriteArrayList.addAll(Arrays.asList(aVarArr));
    }

    public final void a(a aVar) {
        if (aVar == null) {
            return;
        }
        this.f20536a.add(aVar);
    }

    @Override // com.bykv.vk.openvk.preload.b.b.a
    public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f20536a) {
            if (aVar != null) {
                aVar.a(bVar, dVar);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b.a
    public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
        for (a aVar : this.f20536a) {
            if (aVar != null) {
                aVar.a(bVar, dVar, th2);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b.a
    public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f20536a) {
            if (aVar != null) {
                aVar.b(bVar, dVar);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b.a
    public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
        for (a aVar : this.f20536a) {
            if (aVar != null) {
                aVar.b(bVar, dVar, th2);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b.a
    public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f20536a) {
            if (aVar != null) {
                aVar.c(bVar, dVar);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b.a
    public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
        for (a aVar : this.f20536a) {
            if (aVar != null) {
                aVar.c(bVar, dVar, th2);
            }
        }
    }
}
