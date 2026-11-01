package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes3.dex */
final class r implements r8.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f24416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r8.c f24418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r8.g f24419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s f24420e;

    r(o oVar, String str, r8.c cVar, r8.g gVar, s sVar) {
        this.f24416a = oVar;
        this.f24417b = str;
        this.f24418c = cVar;
        this.f24419d = gVar;
        this.f24420e = sVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Exception exc) {
    }

    @Override // r8.h
    public void a(r8.d dVar, r8.j jVar) {
        this.f24420e.a(n.a().e(this.f24416a).c(dVar).f(this.f24417b).d(this.f24419d).b(this.f24418c).a(), jVar);
    }

    @Override // r8.h
    public void b(r8.d dVar) {
        a(dVar, new r8.j() { // from class: com.google.android.datatransport.runtime.q
            @Override // r8.j
            public final void a(Exception exc) {
                r.e(exc);
            }
        });
    }

    o d() {
        return this.f24416a;
    }
}
