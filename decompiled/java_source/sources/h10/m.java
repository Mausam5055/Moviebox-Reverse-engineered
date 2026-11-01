package h10;

import com.alibaba.sdk.android.oss.common.RequestParameters;

/* JADX INFO: loaded from: classes7.dex */
final class m extends l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f64130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f64131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f64132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f64133f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64134g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64135h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b f64136i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b f64137j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b f64138k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f64139l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private c f64140m;

    m(x xVar, int i11, String str, String str2, String str3, Object obj) {
        super(458752);
        this.f64130c = xVar;
        this.f64131d = i11;
        this.f64132e = xVar.D(str);
        this.f64133f = xVar.D(str2);
        if (str3 != null) {
            this.f64134g = xVar.D(str3);
        }
        if (obj != null) {
            this.f64135h = xVar.d(obj).f64230a;
        }
    }

    @Override // h10.l
    public a a(String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f64130c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64130c, dVar, this.f64136i);
            this.f64136i = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64130c, dVar, this.f64137j);
        this.f64137j = bVar2;
        return bVar2;
    }

    @Override // h10.l
    public void b(c cVar) {
        cVar.f64064c = this.f64140m;
        this.f64140m = cVar;
    }

    @Override // h10.l
    public void c() {
    }

    @Override // h10.l
    public a d(int i11, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i11, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f64130c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64130c, dVar, this.f64138k);
            this.f64138k = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64130c, dVar, this.f64139l);
        this.f64139l = bVar2;
        return bVar2;
    }

    final void e(c.a aVar) {
        aVar.b(this.f64140m);
    }

    int f() {
        int iF;
        if (this.f64135h != 0) {
            this.f64130c.D("ConstantValue");
            iF = 16;
        } else {
            iF = 8;
        }
        if ((this.f64131d & 4096) != 0 && this.f64130c.R() < 49) {
            this.f64130c.D("Synthetic");
            iF += 6;
        }
        if (this.f64134g != 0) {
            this.f64130c.D(RequestParameters.SIGNATURE);
            iF += 8;
        }
        if ((this.f64131d & 131072) != 0) {
            this.f64130c.D("Deprecated");
            iF += 6;
        }
        b bVar = this.f64136i;
        if (bVar != null) {
            iF += bVar.f("RuntimeVisibleAnnotations");
        }
        b bVar2 = this.f64137j;
        if (bVar2 != null) {
            iF += bVar2.f("RuntimeInvisibleAnnotations");
        }
        b bVar3 = this.f64138k;
        if (bVar3 != null) {
            iF += bVar3.f("RuntimeVisibleTypeAnnotations");
        }
        b bVar4 = this.f64139l;
        if (bVar4 != null) {
            iF += bVar4.f("RuntimeInvisibleTypeAnnotations");
        }
        c cVar = this.f64140m;
        return cVar != null ? iF + cVar.a(this.f64130c) : iF;
    }

    void g(d dVar) {
        boolean z10 = this.f64130c.R() < 49;
        dVar.k((~(z10 ? 4096 : 0)) & this.f64131d).k(this.f64132e).k(this.f64133f);
        int iC = this.f64135h == 0 ? 0 : 1;
        int i11 = this.f64131d;
        if ((i11 & 4096) != 0 && z10) {
            iC++;
        }
        if (this.f64134g != 0) {
            iC++;
        }
        if ((i11 & 131072) != 0) {
            iC++;
        }
        if (this.f64136i != null) {
            iC++;
        }
        if (this.f64137j != null) {
            iC++;
        }
        if (this.f64138k != null) {
            iC++;
        }
        if (this.f64139l != null) {
            iC++;
        }
        c cVar = this.f64140m;
        if (cVar != null) {
            iC += cVar.c();
        }
        dVar.k(iC);
        if (this.f64135h != 0) {
            dVar.k(this.f64130c.D("ConstantValue")).i(2).k(this.f64135h);
        }
        if ((4096 & this.f64131d) != 0 && z10) {
            dVar.k(this.f64130c.D("Synthetic")).i(0);
        }
        if (this.f64134g != 0) {
            dVar.k(this.f64130c.D(RequestParameters.SIGNATURE)).i(2).k(this.f64134g);
        }
        if ((this.f64131d & 131072) != 0) {
            dVar.k(this.f64130c.D("Deprecated")).i(0);
        }
        b bVar = this.f64136i;
        if (bVar != null) {
            bVar.h(this.f64130c.D("RuntimeVisibleAnnotations"), dVar);
        }
        b bVar2 = this.f64137j;
        if (bVar2 != null) {
            bVar2.h(this.f64130c.D("RuntimeInvisibleAnnotations"), dVar);
        }
        b bVar3 = this.f64138k;
        if (bVar3 != null) {
            bVar3.h(this.f64130c.D("RuntimeVisibleTypeAnnotations"), dVar);
        }
        b bVar4 = this.f64139l;
        if (bVar4 != null) {
            bVar4.h(this.f64130c.D("RuntimeInvisibleTypeAnnotations"), dVar);
        }
        c cVar2 = this.f64140m;
        if (cVar2 != null) {
            cVar2.e(this.f64130c, dVar);
        }
    }
}
