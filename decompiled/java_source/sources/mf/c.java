package mf;

import com.tencent.tinker.android.dex.v;

/* JADX INFO: loaded from: classes5.dex */
public class c extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69524e;

    public c(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69523d = null;
        this.f69524e = null;
        if (jVar2 != null) {
            v.a aVar2 = jVar2.h().f40666m;
            this.f69523d = aVar2;
            this.f69524e = jVar2.m(aVar2);
        }
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40666m;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.c0(i12);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i12 != i14) {
            cVar.M(i12, i14);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.b a(of.a aVar, com.tencent.tinker.android.dex.b bVar) {
        return aVar.b(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.b g(ff.a aVar) {
        return aVar.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int k(com.tencent.tinker.android.dex.b bVar) {
        this.f69523d.f40682c++;
        return this.f69524e.P(bVar);
    }
}
