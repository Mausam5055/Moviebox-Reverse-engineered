package com.google.android.datatransport.runtime;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class t implements s {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile u f24431e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c9.a f24432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c9.a f24433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y8.e f24434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z8.o f24435d;

    t(c9.a aVar, c9.a aVar2, y8.e eVar, z8.o oVar, z8.s sVar) {
        this.f24432a = aVar;
        this.f24433b = aVar2;
        this.f24434c = eVar;
        this.f24435d = oVar;
        sVar.c();
    }

    private i b(n nVar) {
        i.a aVarG = i.a().i(this.f24432a.getTime()).o(this.f24433b.getTime()).n(nVar.g()).h(new h(nVar.b(), nVar.d())).g(nVar.c().a());
        if (nVar.c().e() != null && nVar.c().e().a() != null) {
            aVarG.l(nVar.c().e().a());
        }
        if (nVar.c().b() != null) {
            r8.e eVarB = nVar.c().b();
            if (eVarB.c() != null) {
                aVarG.m(eVarB.c());
            }
            if (eVarB.a() != null) {
                aVarG.j(eVarB.a());
            }
            if (eVarB.b() != null) {
                aVarG.k(eVarB.b());
            }
        }
        return aVarG.d();
    }

    public static t c() {
        u uVar = f24431e;
        if (uVar != null) {
            return uVar.h();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set d(f fVar) {
        return fVar instanceof g ? Collections.unmodifiableSet(((g) fVar).a()) : Collections.singleton(r8.c.b("proto"));
    }

    public static void f(Context context) {
        if (f24431e == null) {
            synchronized (t.class) {
                try {
                    if (f24431e == null) {
                        f24431e = e.a().a(context).build();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.s
    public void a(n nVar, r8.j jVar) {
        this.f24434c.a(nVar.f().f(nVar.c().d()), b(nVar), jVar);
    }

    public z8.o e() {
        return this.f24435d;
    }

    public r8.i g(f fVar) {
        return new p(d(fVar), o.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }

    public r8.i h(String str) {
        return new p(d(null), o.a().b(str).a(), this);
    }
}
