package mf;

import com.tencent.tinker.android.dex.u;
import com.tencent.tinker.android.dex.v;

/* JADX INFO: loaded from: classes5.dex */
public class p extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v.a f69553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69554f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69555g;

    public p(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69552d = null;
        this.f69553e = null;
        this.f69554f = null;
        this.f69555g = null;
        if (jVar2 != null) {
            this.f69552d = jVar2.h().f40669p;
            this.f69553e = jVar2.h().f40655b;
            this.f69554f = jVar2.m(this.f69552d);
            this.f69555g = jVar2.m(this.f69553e);
        }
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40669p;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.o0(i11);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i11 != i13) {
            cVar.Y(i11, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public u g(ff.a aVar) {
        return aVar.E();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public int k(u uVar) {
        int iJ0 = this.f69554f.j0(uVar);
        this.f69555g.c0(iJ0);
        this.f69552d.f40682c++;
        this.f69553e.f40682c++;
        return iJ0;
    }
}
