package com.iab.omid.library.vungle.adsession;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f33769a;

    private a(h hVar) {
        this.f33769a = hVar;
    }

    public static a a(b bVar) {
        h hVar = (h) bVar;
        ue.g.d(bVar, "AdSession is null");
        ue.g.j(hVar);
        ue.g.g(hVar);
        a aVar = new a(hVar);
        hVar.k().d(aVar);
        return aVar;
    }

    public void b() {
        ue.g.g(this.f33769a);
        ue.g.i(this.f33769a);
        if (!this.f33769a.o()) {
            try {
                this.f33769a.d();
            } catch (Exception unused) {
            }
        }
        if (this.f33769a.o()) {
            this.f33769a.s();
        }
    }

    public void c() {
        ue.g.c(this.f33769a);
        ue.g.i(this.f33769a);
        this.f33769a.t();
    }
}
