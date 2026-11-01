package mf;

import com.tencent.tinker.android.dex.v;

/* JADX INFO: loaded from: classes5.dex */
public class k extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69543e;

    public k(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69542d = null;
        this.f69543e = null;
        if (jVar2 != null) {
            v.a aVar2 = jVar2.h().f40658e;
            this.f69542d = aVar2;
            this.f69543e = jVar2.m(aVar2);
        }
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40658e;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.j0(i11);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i11 != i13) {
            cVar.T(i11, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.o a(of.a aVar, com.tencent.tinker.android.dex.o oVar) {
        return aVar.k(oVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.o g(ff.a aVar) {
        return aVar.u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int k(com.tencent.tinker.android.dex.o oVar) {
        this.f69542d.f40682c++;
        return this.f69543e.a0(oVar);
    }
}
