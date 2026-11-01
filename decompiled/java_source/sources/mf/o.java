package mf;

import com.tencent.tinker.android.dex.v;

/* JADX INFO: loaded from: classes5.dex */
public class o extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69551e;

    public o(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69550d = null;
        this.f69551e = null;
        if (jVar2 != null) {
            v.a aVar2 = jVar2.h().f40672s;
            this.f69550d = aVar2;
            this.f69551e = jVar2.m(aVar2);
        }
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40672s;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.n0(i12);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i12 != i14) {
            cVar.X(i12, i14);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.l a(of.a aVar, com.tencent.tinker.android.dex.l lVar) {
        return aVar.j(lVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.l g(ff.a aVar) {
        return aVar.t();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int k(com.tencent.tinker.android.dex.l lVar) {
        this.f69550d.f40682c++;
        return this.f69551e.Z(lVar);
    }
}
