package hf;

import com.tencent.tinker.android.dex.DexException;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f64434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f64435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f64436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f64437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f64438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f64439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f64440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f64441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f64442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f64443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f64444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f64445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f64446n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f64447o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f64448p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f64449q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int[] f64450r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int[] f64451s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f64452t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f64453u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    Object f64454v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f64455w;

    public f(i iVar, c cVar) {
        super(null);
        this.f64437e = 0;
        this.f64438f = 0;
        this.f64439g = 0;
        this.f64440h = 0L;
        this.f64441i = 0;
        this.f64442j = 0;
        this.f64443k = 0;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        this.f64449q = 0;
        this.f64450r = null;
        this.f64451s = null;
        this.f64452t = 0;
        this.f64453u = 0;
        this.f64454v = null;
        this.f64455w = 0;
        this.f64434b = iVar;
        this.f64435c = cVar;
        this.f64436d = cVar != null;
    }

    @Override // hf.e
    public void a(int i11, int i12, Object obj, int i13, int i14) {
        this.f64437e = i12;
        this.f64454v = obj;
        this.f64455w = i13;
        this.f64453u = i14;
        this.f64441i = 0;
        this.f64442j = 0;
        this.f64443k = 0;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void b(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19, int i20) {
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64439g = i15;
        this.f64440h = j11;
        this.f64441i = 5;
        this.f64442j = i16;
        this.f64443k = i17;
        this.f64444l = i18;
        this.f64445m = i19;
        this.f64446n = i20;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void c(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19) {
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64439g = i15;
        this.f64440h = j11;
        this.f64441i = 4;
        this.f64442j = i16;
        this.f64443k = i17;
        this.f64444l = i18;
        this.f64445m = i19;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void d(int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64449q = i15;
        this.f64441i = iArr.length;
        this.f64442j = 0;
        this.f64443k = 0;
        this.f64444l = iArr.length > 0 ? iArr[0] : 0;
        this.f64445m = iArr.length > 1 ? iArr[1] : 0;
        this.f64446n = iArr.length > 2 ? iArr[2] : 0;
        this.f64447o = iArr.length > 3 ? iArr[3] : 0;
        this.f64448p = iArr.length > 4 ? iArr[4] : 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void e(int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64441i = i16;
        this.f64442j = 0;
        this.f64443k = 0;
        this.f64444l = i15;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        this.f64449q = i17;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void f(int i11, int i12, int i13, int i14, int i15, long j11, int i16) {
        if (this.f64436d) {
            i15 = this.f64435c.m(i15);
        }
        if (i12 == 26) {
            if (this.f64436d) {
                if (i13 > 65535) {
                    i12 = 27;
                }
            } else if (i13 > 65535) {
                throw new DexException("string index out of bound: " + p008if.a.d(i13) + ", perhaps you need to enable force jumbo mode.");
            }
        }
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64439g = i15;
        this.f64440h = j11;
        this.f64441i = 1;
        this.f64442j = i16;
        this.f64443k = 0;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void g(int i11, int i12, int i13, int[] iArr) {
        this.f64437e = i12;
        this.f64452t = i13;
        if (this.f64436d) {
            this.f64451s = new int[iArr.length];
            for (int i14 = 0; i14 < iArr.length; i14++) {
                this.f64451s[i14] = this.f64435c.m(iArr[i14]);
            }
        } else {
            this.f64451s = iArr;
        }
        this.f64441i = 0;
        this.f64442j = 0;
        this.f64443k = 0;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void h(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17) {
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64439g = i15;
        this.f64440h = j11;
        this.f64441i = i17;
        this.f64442j = i16;
        this.f64443k = 0;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void i(int i11, int i12, int[] iArr, int[] iArr2) {
        this.f64437e = i12;
        this.f64450r = iArr;
        if (this.f64436d) {
            this.f64451s = new int[iArr2.length];
            for (int i13 = 0; i13 < iArr2.length; i13++) {
                this.f64451s[i13] = this.f64435c.m(iArr2[i13]);
            }
        } else {
            this.f64451s = iArr2;
        }
        this.f64441i = 0;
        this.f64442j = 0;
        this.f64443k = 0;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void j(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18) {
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64439g = i15;
        this.f64440h = j11;
        this.f64441i = 3;
        this.f64442j = i16;
        this.f64443k = i17;
        this.f64444l = i18;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    @Override // hf.e
    public void k(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17) {
        if (this.f64436d) {
            i15 = this.f64435c.m(i15);
        }
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64439g = i15;
        this.f64440h = j11;
        this.f64441i = 2;
        this.f64442j = i16;
        this.f64443k = i17;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    @Override // hf.e
    public void l(int i11, int i12, int i13, int i14, int i15, long j11) {
        if (this.f64436d) {
            i15 = this.f64435c.m(i15);
            if (i12 == 40) {
                int iQ = b.q(i15, this.f64434b.c());
                if (iQ != ((byte) iQ)) {
                    if (iQ == ((short) iQ)) {
                        i12 = 41;
                    } else {
                        i12 = 42;
                    }
                }
            } else if (i12 == 41) {
                int iQ2 = b.q(i15, this.f64434b.c());
                if (iQ2 != ((short) iQ2)) {
                    i12 = 42;
                }
            }
        }
        this.f64437e = i12;
        this.f64438f = i13;
        this.f64439g = i15;
        this.f64440h = j11;
        this.f64441i = 0;
        this.f64442j = 0;
        this.f64443k = 0;
        this.f64444l = 0;
        this.f64445m = 0;
        this.f64446n = 0;
        this.f64447o = 0;
        this.f64448p = 0;
        b.g(this.f64434b, this);
    }
}
