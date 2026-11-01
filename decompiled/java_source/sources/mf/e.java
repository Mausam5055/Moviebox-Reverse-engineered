package mf;

import com.tencent.tinker.android.dex.v;

/* JADX INFO: loaded from: classes5.dex */
public class e extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f69527d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.tencent.tinker.android.dex.j.h f69528e;

    public e(nf.a aVar, com.tencent.tinker.android.dex.j jVar, com.tencent.tinker.android.dex.j jVar2, of.c cVar) {
        super(aVar, jVar, cVar);
        this.f69527d = null;
        this.f69528e = null;
        v.a aVar2 = jVar2.h().f40661h;
        this.f69527d = aVar2;
        this.f69528e = jVar2.m(aVar2);
    }

    @Override // mf.j
    protected v.a e(com.tencent.tinker.android.dex.j jVar) {
        return jVar.h().f40661h;
    }

    @Override // mf.j
    protected void f(of.c cVar, int i11, int i12) {
        cVar.f0(i11);
    }

    @Override // mf.j
    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
        if (i11 != i13) {
            cVar.P(i11, i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.e a(of.a aVar, com.tencent.tinker.android.dex.e eVar) {
        return aVar.e(eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.dex.e g(ff.a aVar) {
        return aVar.m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mf.j
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int k(com.tencent.tinker.android.dex.e eVar) {
        this.f69527d.f40682c++;
        return this.f69528e.S(eVar);
    }
}
