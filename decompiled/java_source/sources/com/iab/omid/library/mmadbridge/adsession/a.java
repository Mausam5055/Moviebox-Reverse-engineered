package com.iab.omid.library.mmadbridge.adsession;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f33649a;

    private a(h hVar) {
        this.f33649a = hVar;
    }

    public static a a(b bVar) {
        h hVar = (h) bVar;
        oe.g.d(bVar, "AdSession is null");
        oe.g.l(hVar);
        oe.g.g(hVar);
        a aVar = new a(hVar);
        hVar.t().d(aVar);
        return aVar;
    }

    public void b() {
        oe.g.g(this.f33649a);
        oe.g.j(this.f33649a);
        if (!this.f33649a.q()) {
            try {
                this.f33649a.g();
            } catch (Exception unused) {
            }
        }
        if (this.f33649a.q()) {
            this.f33649a.x();
        }
    }

    public void c() {
        oe.g.c(this.f33649a);
        oe.g.j(this.f33649a);
        this.f33649a.y();
    }

    public void d(com.iab.omid.library.mmadbridge.adsession.media.b bVar) {
        oe.g.d(bVar, "VastProperties is null");
        oe.g.c(this.f33649a);
        oe.g.j(this.f33649a);
        this.f33649a.k(bVar.a());
    }
}
