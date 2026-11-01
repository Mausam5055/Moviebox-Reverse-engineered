package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements s, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f20426a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f20427b = -1.0d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f20428c = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f20429d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<com.bykv.vk.openvk.preload.geckox.a.a.c> f20430e = Collections.emptyList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<com.bykv.vk.openvk.preload.geckox.a.a.c> f20431f = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c clone() {
        try {
            return (c) super.clone();
        } catch (CloneNotSupportedException e11) {
            throw new AssertionError(e11);
        }
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.c cVar) {
        return cVar == null || cVar.a() <= this.f20427b;
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.c cVar, com.bykv.vk.openvk.preload.a.a.d dVar) {
        return a(cVar) && a(dVar);
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.d dVar) {
        return dVar == null || dVar.a() > this.f20427b;
    }

    private boolean a(Class<?> cls) {
        if (this.f20427b == -1.0d || a((com.bykv.vk.openvk.preload.a.a.c) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class), (com.bykv.vk.openvk.preload.a.a.d) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class))) {
            return (!this.f20429d && c(cls)) || b(cls);
        }
        return true;
    }

    private boolean a(boolean z10) {
        Iterator<com.bykv.vk.openvk.preload.geckox.a.a.c> it = (z10 ? this.f20430e : this.f20431f).iterator();
        while (it.hasNext()) {
            if (it.next().c()) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(Class<?> cls) {
        if (Enum.class.isAssignableFrom(cls)) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    private static boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private static boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(final com.bykv.vk.openvk.preload.a.d dVar, final com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        boolean zA = a(aVar.a());
        final boolean z10 = zA || a(true);
        final boolean z11 = zA || a(false);
        if (z10 || z11) {
            return new r<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private r<T> f20432a;

                private r<T> b() {
                    r<T> rVar = this.f20432a;
                    if (rVar != null) {
                        return rVar;
                    }
                    r<T> rVarA = dVar.a(c.this, aVar);
                    this.f20432a = rVarA;
                    return rVarA;
                }

                @Override // com.bykv.vk.openvk.preload.a.r
                public final T a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                    if (!z11) {
                        return b().a(aVar2);
                    }
                    aVar2.n();
                    return null;
                }

                @Override // com.bykv.vk.openvk.preload.a.r
                public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t11) throws IOException {
                    if (z10) {
                        cVar.h();
                    } else {
                        b().a(cVar, t11);
                    }
                }
            };
        }
        return null;
    }

    public final boolean a(Class<?> cls, boolean z10) {
        return a(cls) || a(z10);
    }

    public final boolean a(Field field, boolean z10) {
        if ((this.f20428c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f20427b != -1.0d && !a((com.bykv.vk.openvk.preload.a.a.c) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class), (com.bykv.vk.openvk.preload.a.a.d) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class))) || field.isSynthetic()) {
            return true;
        }
        if ((!this.f20429d && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<com.bykv.vk.openvk.preload.geckox.a.a.c> list = z10 ? this.f20430e : this.f20431f;
        if (list.isEmpty()) {
            return false;
        }
        new com.bykv.vk.openvk.preload.geckox.a.c(field);
        Iterator<com.bykv.vk.openvk.preload.geckox.a.a.c> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().b()) {
                return true;
            }
        }
        return false;
    }
}
