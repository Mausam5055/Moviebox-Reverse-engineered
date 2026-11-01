package mf;

import com.tencent.tinker.android.dex.s;
import com.tencent.tinker.android.dex.v;

/* JADX INFO: loaded from: classes5.dex */
public class n extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69549e;

    public n(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69548d = null;
        this.f69549e = null;
        if (jVar2 != null) {
            v.a aVar2 = jVar2.h().f40657d;
            this.f69548d = aVar2;
            this.f69549e = jVar2.m(aVar2);
        }
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40657d;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.m0(i11);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i11 != i13) {
            cVar.W(i11, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public s a(of.a aVar, s sVar) {
        return aVar.n(sVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public s g(ff.a aVar) {
        return aVar.A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int k(s sVar) {
        this.f69548d.f40682c++;
        return this.f69549e.g0(sVar);
    }
}
