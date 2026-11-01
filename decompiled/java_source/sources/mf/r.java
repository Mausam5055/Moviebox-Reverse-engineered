package mf;

import com.tencent.tinker.android.dex.v;
import com.tencent.tinker.android.dex.w;

/* JADX INFO: loaded from: classes5.dex */
public class r extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69559e;

    public r(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69558d = null;
        this.f69559e = null;
        if (jVar2 != null) {
            v.a aVar2 = jVar2.h().f40664k;
            this.f69558d = aVar2;
            this.f69559e = jVar2.m(aVar2);
        }
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40664k;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.q0(i12);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i12 != i14) {
            cVar.a0(i12, i14);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public w a(of.a aVar, w wVar) {
        return aVar.o(wVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public w g(ff.a aVar) {
        return aVar.G();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int k(w wVar) {
        this.f69558d.f40682c++;
        return this.f69559e.l0(wVar);
    }
}
