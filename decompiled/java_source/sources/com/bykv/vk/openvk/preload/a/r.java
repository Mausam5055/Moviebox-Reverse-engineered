package com.bykv.vk.openvk.preload.a;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r<T> {
    public final r<T> a() {
        return new r<T>() { // from class: com.bykv.vk.openvk.preload.a.r.1
            @Override // com.bykv.vk.openvk.preload.a.r
            public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return (T) r.this.a(aVar);
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t11) throws IOException {
                if (t11 == null) {
                    cVar.h();
                } else {
                    r.this.a(cVar, t11);
                }
            }
        };
    }

    public abstract T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException;

    public abstract void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t11) throws IOException;
}
