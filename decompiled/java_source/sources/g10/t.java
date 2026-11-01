package g10;

/* JADX INFO: loaded from: classes7.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    y[] f63170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    l[] f63171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    k f63172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    byte[] f63173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f63174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f63175f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f63176g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f63177h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f63178i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f63179j;

    public t() {
        this.f63172c = new k();
        this.f63173d = new byte[16];
        this.f63174e = new int[16];
        h(0);
        d();
    }

    public t(int i11) {
        this.f63172c = new k();
        this.f63173d = new byte[16];
        this.f63174e = new int[16];
        h(i11);
        d();
    }

    public void a() {
        y yVar;
        if (this.f63177h) {
            return;
        }
        if (this.f63175f == 2) {
            if (this.f63170a[this.f63174e[0]].b().equals("GB18030")) {
                yVar = this.f63170a[this.f63174e[1]];
            } else if (this.f63170a[this.f63174e[1]].b().equals("GB18030")) {
                yVar = this.f63170a[this.f63174e[0]];
            }
            c(yVar.b());
            this.f63177h = true;
        }
        if (this.f63178i) {
            f(null, 0, true);
        }
    }

    public boolean b(byte[] bArr, int i11) {
        int i12;
        y yVar;
        for (int i13 = 0; i13 < i11; i13++) {
            byte b11 = bArr[i13];
            int i14 = 0;
            while (true) {
                i12 = this.f63175f;
                if (i14 >= i12) {
                    break;
                }
                byte bC = y.c(this.f63170a[this.f63174e[i14]], b11, this.f63173d[i14]);
                if (bC == 2) {
                    yVar = this.f63170a[this.f63174e[i14]];
                } else if (bC == 1) {
                    int i15 = this.f63175f - 1;
                    this.f63175f = i15;
                    if (i14 < i15) {
                        int[] iArr = this.f63174e;
                        iArr[i14] = iArr[i15];
                        byte[] bArr2 = this.f63173d;
                        bArr2[i14] = bArr2[i15];
                    }
                } else {
                    this.f63173d[i14] = bC;
                    i14++;
                }
                c(yVar.b());
                this.f63177h = true;
                return true;
            }
            if (i12 <= 1) {
                if (1 == i12) {
                    c(this.f63170a[this.f63174e[0]].b());
                }
                this.f63177h = true;
                return true;
            }
            int i16 = 0;
            int i17 = 0;
            for (int i18 = 0; i18 < this.f63175f; i18++) {
                if (!this.f63170a[this.f63174e[i18]].d() && !this.f63170a[this.f63174e[i18]].d()) {
                    i16++;
                    i17 = i18;
                }
            }
            if (1 == i16) {
                yVar = this.f63170a[this.f63174e[i17]];
                c(yVar.b());
                this.f63177h = true;
                return true;
            }
        }
        if (this.f63178i) {
            e(bArr, i11);
        }
        return this.f63177h;
    }

    public abstract void c(String str);

    public void d() {
        this.f63178i = this.f63179j;
        this.f63177h = false;
        this.f63175f = this.f63176g;
        for (int i11 = 0; i11 < this.f63175f; i11++) {
            this.f63173d[i11] = 0;
            this.f63174e[i11] = i11;
        }
        this.f63172c.f();
    }

    public void e(byte[] bArr, int i11) {
        f(bArr, i11, false);
    }

    public void f(byte[] bArr, int i11, boolean z10) {
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < this.f63175f; i14++) {
            l[] lVarArr = this.f63171b;
            int i15 = this.f63174e[i14];
            if (lVarArr[i15] != null) {
                i12++;
            }
            if (!this.f63170a[i15].d() && !this.f63170a[this.f63174e[i14]].b().equals("GB18030")) {
                i13++;
            }
        }
        boolean z11 = i12 > 1;
        this.f63178i = z11;
        if (z11) {
            this.f63178i = this.f63172c.g(bArr, i11);
            if (((z10 && this.f63172c.e()) || this.f63172c.b()) && i12 == i13) {
                this.f63172c.a();
                int i16 = -1;
                float f11 = 0.0f;
                int i17 = 0;
                for (int i18 = 0; i18 < this.f63175f; i18++) {
                    l[] lVarArr2 = this.f63171b;
                    int i19 = this.f63174e[i18];
                    if (lVarArr2[i19] != null && !this.f63170a[i19].b().equals("Big5")) {
                        float fC = this.f63172c.c(this.f63171b[this.f63174e[i18]].a(), this.f63171b[this.f63174e[i18]].b(), this.f63171b[this.f63174e[i18]].c(), this.f63171b[this.f63174e[i18]].d());
                        int i20 = i17 + 1;
                        if (i17 == 0 || f11 > fC) {
                            i16 = i18;
                            f11 = fC;
                        }
                        i17 = i20;
                    }
                }
                if (i16 >= 0) {
                    c(this.f63170a[this.f63174e[i16]].b());
                    this.f63177h = true;
                }
            }
        }
    }

    public String[] g() {
        int i11 = this.f63175f;
        if (i11 <= 0) {
            return new String[]{"nomatch"};
        }
        String[] strArr = new String[i11];
        for (int i12 = 0; i12 < this.f63175f; i12++) {
            strArr[i12] = this.f63170a[this.f63174e[i12]].b();
        }
        return strArr;
    }

    protected void h(int i11) {
        int i12 = i11;
        if (i12 < 0 || i12 >= 6) {
            i12 = 0;
        }
        this.f63170a = null;
        this.f63171b = null;
        if (i12 == 4) {
            this.f63170a = new y[]{new x(), new f(), new q(), new m(), new g(), new v(), new w()};
            this.f63171b = new l[]{null, new a(), null, new d(), null, null, null};
        } else if (i12 == 5) {
            this.f63170a = new y[]{new x(), new j(), new s(), new g(), new v(), new w()};
        } else if (i12 == 3) {
            this.f63170a = new y[]{new x(), new o(), new n(), new q(), new p(), new g(), new v(), new w()};
        } else if (i12 == 1) {
            this.f63170a = new y[]{new x(), new u(), new i(), new r(), new g(), new v(), new w()};
        } else if (i12 == 2) {
            this.f63170a = new y[]{new x(), new o(), new n(), new f(), new q(), new p(), new m(), new g(), new v(), new w()};
            this.f63171b = new l[]{null, new e(), null, new a(), null, null, new d(), null, null, null};
        } else if (i12 == 0) {
            this.f63170a = new y[]{new x(), new u(), new i(), new r(), new j(), new s(), new f(), new m(), new o(), new n(), new q(), new p(), new g(), new v(), new w()};
            this.f63171b = new l[]{null, null, new b(), null, new c(), null, new a(), new d(), new e(), null, null, null, null, null, null};
        }
        this.f63179j = this.f63171b != null;
        this.f63176g = this.f63170a.length;
    }
}
