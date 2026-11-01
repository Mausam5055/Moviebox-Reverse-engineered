package com.iab.omid.library.hisavana.adsession;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f33535a;

    private a(h hVar) {
        this.f33535a = hVar;
    }

    public static a a(b bVar) {
        h hVar = (h) bVar;
        ie.g.d(bVar, "AdSession is null");
        ie.g.j(hVar);
        ie.g.g(hVar);
        a aVar = new a(hVar);
        hVar.l().d(aVar);
        return aVar;
    }

    public void b() {
        ie.g.g(this.f33535a);
        ie.g.i(this.f33535a);
        if (!this.f33535a.p()) {
            try {
                this.f33535a.e();
            } catch (Exception unused) {
            }
        }
        if (this.f33535a.p()) {
            this.f33535a.t();
        }
    }

    public void c() {
        ie.g.c(this.f33535a);
        ie.g.i(this.f33535a);
        this.f33535a.u();
    }
}
