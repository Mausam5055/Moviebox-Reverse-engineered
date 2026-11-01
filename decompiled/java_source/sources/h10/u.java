package h10;

/* JADX INFO: loaded from: classes7.dex */
final class u extends t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f64206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f64207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f64208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f64209f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64210g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d f64211h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64212i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final d f64213j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64214k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final d f64215l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f64216m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final d f64217n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f64218o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final d f64219p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f64220q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final d f64221r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f64222s;

    u(x xVar, int i11, int i12, int i13) {
        super(458752);
        this.f64206c = xVar;
        this.f64207d = i11;
        this.f64208e = i12;
        this.f64209f = i13;
        this.f64211h = new d();
        this.f64213j = new d();
        this.f64215l = new d();
        this.f64217n = new d();
        this.f64219p = new d();
        this.f64221r = new d();
    }

    @Override // h10.t
    public void a() {
    }

    @Override // h10.t
    public void b(String str, int i11, String... strArr) {
        this.f64213j.k(this.f64206c.B(str).f64230a).k(i11);
        if (strArr == null) {
            this.f64213j.k(0);
        } else {
            this.f64213j.k(strArr.length);
            for (String str2 : strArr) {
                this.f64213j.k(this.f64206c.y(str2).f64230a);
            }
        }
        this.f64212i++;
    }

    @Override // h10.t
    public void c(String str) {
        this.f64222s = this.f64206c.e(str).f64230a;
    }

    @Override // h10.t
    public void d(String str, int i11, String... strArr) {
        this.f64215l.k(this.f64206c.B(str).f64230a).k(i11);
        if (strArr == null) {
            this.f64215l.k(0);
        } else {
            this.f64215l.k(strArr.length);
            for (String str2 : strArr) {
                this.f64215l.k(this.f64206c.y(str2).f64230a);
            }
        }
        this.f64214k++;
    }

    @Override // h10.t
    public void e(String str) {
        this.f64221r.k(this.f64206c.B(str).f64230a);
        this.f64220q++;
    }

    @Override // h10.t
    public void f(String str, String... strArr) {
        this.f64219p.k(this.f64206c.e(str).f64230a);
        this.f64219p.k(strArr.length);
        for (String str2 : strArr) {
            this.f64219p.k(this.f64206c.e(str2).f64230a);
        }
        this.f64218o++;
    }

    @Override // h10.t
    public void g(String str, int i11, String str2) {
        this.f64211h.k(this.f64206c.y(str).f64230a).k(i11).k(str2 == null ? 0 : this.f64206c.D(str2));
        this.f64210g++;
    }

    @Override // h10.t
    public void h(String str) {
        this.f64217n.k(this.f64206c.e(str).f64230a);
        this.f64216m++;
    }

    int i() {
        this.f64206c.D("Module");
        int i11 = this.f64211h.f64068b + 22 + this.f64213j.f64068b + this.f64215l.f64068b + this.f64217n.f64068b + this.f64219p.f64068b;
        if (this.f64220q > 0) {
            this.f64206c.D("ModulePackages");
            i11 += this.f64221r.f64068b + 8;
        }
        if (this.f64222s <= 0) {
            return i11;
        }
        this.f64206c.D("ModuleMainClass");
        return i11 + 8;
    }

    int j() {
        return (this.f64220q > 0 ? 1 : 0) + 1 + (this.f64222s > 0 ? 1 : 0);
    }

    void k(d dVar) {
        d dVarK = dVar.k(this.f64206c.D("Module")).i(this.f64211h.f64068b + 16 + this.f64213j.f64068b + this.f64215l.f64068b + this.f64217n.f64068b + this.f64219p.f64068b).k(this.f64207d).k(this.f64208e).k(this.f64209f).k(this.f64210g);
        d dVar2 = this.f64211h;
        d dVarK2 = dVarK.h(dVar2.f64067a, 0, dVar2.f64068b).k(this.f64212i);
        d dVar3 = this.f64213j;
        d dVarK3 = dVarK2.h(dVar3.f64067a, 0, dVar3.f64068b).k(this.f64214k);
        d dVar4 = this.f64215l;
        d dVarK4 = dVarK3.h(dVar4.f64067a, 0, dVar4.f64068b).k(this.f64216m);
        d dVar5 = this.f64217n;
        d dVarK5 = dVarK4.h(dVar5.f64067a, 0, dVar5.f64068b).k(this.f64218o);
        d dVar6 = this.f64219p;
        dVarK5.h(dVar6.f64067a, 0, dVar6.f64068b);
        if (this.f64220q > 0) {
            d dVarK6 = dVar.k(this.f64206c.D("ModulePackages")).i(this.f64221r.f64068b + 2).k(this.f64220q);
            d dVar7 = this.f64221r;
            dVarK6.h(dVar7.f64067a, 0, dVar7.f64068b);
        }
        if (this.f64222s > 0) {
            dVar.k(this.f64206c.D("ModuleMainClass")).i(2).k(this.f64222s);
        }
    }
}
