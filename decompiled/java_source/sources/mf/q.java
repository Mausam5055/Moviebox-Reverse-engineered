package mf;

import com.tencent.tinker.android.dex.v;

/* JADX INFO: loaded from: classes5.dex */
public class q extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69557e;

    public q(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69556d = null;
        this.f69557e = null;
        if (jVar2 != null) {
            v.a aVar2 = jVar2.h().f40656c;
            this.f69556d = aVar2;
            this.f69557e = jVar2.m(aVar2);
        }
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40656c;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.p0(i11);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i11 != i13) {
            cVar.Z(i11, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public Integer a(of.a aVar, Integer num) {
        return Integer.valueOf(aVar.I(num.intValue()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Integer g(ff.a aVar) {
        return Integer.valueOf(aVar.w());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int k(Integer num) {
        int iF = this.f69557e.f();
        this.f69557e.c0(num.intValue());
        this.f69556d.f40682c++;
        return iF;
    }
}
