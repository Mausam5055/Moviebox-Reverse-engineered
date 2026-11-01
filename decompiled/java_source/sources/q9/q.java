package q9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class q implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f73441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f73442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g9.e0 f73443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f73444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f73445e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f73452l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean[] f73446f = new boolean[3];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final u f73447g = new u(32, 128);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final u f73448h = new u(33, 128);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final u f73449i = new u(34, 128);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final u f73450j = new u(39, 128);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final u f73451k = new u(40, 128);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f73453m = C.TIME_UNSET;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73454n = new com.google.android.exoplayer2.util.d0();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g9.e0 f73455a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f73456b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f73457c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f73458d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f73459e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f73460f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f73461g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f73462h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f73463i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f73464j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f73465k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f73466l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f73467m;

        public a(g9.e0 e0Var) {
            this.f73455a = e0Var;
        }

        private static boolean b(int i11) {
            return (32 <= i11 && i11 <= 35) || i11 == 39;
        }

        private static boolean c(int i11) {
            return i11 < 32 || i11 == 40;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void d(int i11) {
            long j11 = this.f73466l;
            if (j11 == C.TIME_UNSET) {
                return;
            }
            boolean z10 = this.f73467m;
            this.f73455a.d(j11, z10 ? 1 : 0, (int) (this.f73456b - this.f73465k), i11, null);
        }

        public void a(long j11, int i11, boolean z10) {
            if (this.f73464j && this.f73461g) {
                this.f73467m = this.f73457c;
                this.f73464j = false;
            } else if (this.f73462h || this.f73461g) {
                if (z10 && this.f73463i) {
                    d(i11 + ((int) (j11 - this.f73456b)));
                }
                this.f73465k = this.f73456b;
                this.f73466l = this.f73459e;
                this.f73467m = this.f73457c;
                this.f73463i = true;
            }
        }

        public void e(byte[] bArr, int i11, int i12) {
            if (this.f73460f) {
                int i13 = this.f73458d;
                int i14 = (i11 + 2) - i13;
                if (i14 >= i12) {
                    this.f73458d = i13 + (i12 - i11);
                } else {
                    this.f73461g = (bArr[i14] & 128) != 0;
                    this.f73460f = false;
                }
            }
        }

        public void f() {
            this.f73460f = false;
            this.f73461g = false;
            this.f73462h = false;
            this.f73463i = false;
            this.f73464j = false;
        }

        public void g(long j11, int i11, int i12, long j12, boolean z10) {
            this.f73461g = false;
            this.f73462h = false;
            this.f73459e = j12;
            this.f73458d = 0;
            this.f73456b = j11;
            if (!c(i12)) {
                if (this.f73463i && !this.f73464j) {
                    if (z10) {
                        d(i11);
                    }
                    this.f73463i = false;
                }
                if (b(i12)) {
                    this.f73462h = !this.f73464j;
                    this.f73464j = true;
                }
            }
            boolean z11 = i12 >= 16 && i12 <= 21;
            this.f73457c = z11;
            this.f73460f = z11 || i12 <= 9;
        }
    }

    public q(d0 d0Var) {
        this.f73441a = d0Var;
    }

    private void d() {
        com.google.android.exoplayer2.util.a.i(this.f73443c);
        p0.j(this.f73444d);
    }

    private void e(long j11, int i11, int i12, long j12) {
        this.f73444d.a(j11, i11, this.f73445e);
        if (!this.f73445e) {
            this.f73447g.b(i12);
            this.f73448h.b(i12);
            this.f73449i.b(i12);
            if (this.f73447g.c() && this.f73448h.c() && this.f73449i.c()) {
                this.f73443c.e(g(this.f73442b, this.f73447g, this.f73448h, this.f73449i));
                this.f73445e = true;
            }
        }
        if (this.f73450j.b(i12)) {
            u uVar = this.f73450j;
            this.f73454n.N(this.f73450j.f73510d, com.google.android.exoplayer2.util.x.q(uVar.f73510d, uVar.f73511e));
            this.f73454n.Q(5);
            this.f73441a.a(j12, this.f73454n);
        }
        if (this.f73451k.b(i12)) {
            u uVar2 = this.f73451k;
            this.f73454n.N(this.f73451k.f73510d, com.google.android.exoplayer2.util.x.q(uVar2.f73510d, uVar2.f73511e));
            this.f73454n.Q(5);
            this.f73441a.a(j12, this.f73454n);
        }
    }

    private void f(byte[] bArr, int i11, int i12) {
        this.f73444d.e(bArr, i11, i12);
        if (!this.f73445e) {
            this.f73447g.a(bArr, i11, i12);
            this.f73448h.a(bArr, i11, i12);
            this.f73449i.a(bArr, i11, i12);
        }
        this.f73450j.a(bArr, i11, i12);
        this.f73451k.a(bArr, i11, i12);
    }

    private static o1 g(String str, u uVar, u uVar2, u uVar3) {
        int i11 = uVar.f73511e;
        byte[] bArr = new byte[uVar2.f73511e + i11 + uVar3.f73511e];
        int i12 = 0;
        System.arraycopy(uVar.f73510d, 0, bArr, 0, i11);
        System.arraycopy(uVar2.f73510d, 0, bArr, uVar.f73511e, uVar2.f73511e);
        System.arraycopy(uVar3.f73510d, 0, bArr, uVar.f73511e + uVar2.f73511e, uVar3.f73511e);
        com.google.android.exoplayer2.util.e0 e0Var = new com.google.android.exoplayer2.util.e0(uVar2.f73510d, 0, uVar2.f73511e);
        e0Var.l(44);
        int iE = e0Var.e(3);
        e0Var.k();
        int iE2 = e0Var.e(2);
        boolean zD = e0Var.d();
        int iE3 = e0Var.e(5);
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i14 >= 32) {
                break;
            }
            if (e0Var.d()) {
                i13 |= 1 << i14;
            }
            i14++;
        }
        int[] iArr = new int[6];
        for (int i15 = 0; i15 < 6; i15++) {
            iArr[i15] = e0Var.e(8);
        }
        int iE4 = e0Var.e(8);
        for (int i16 = 0; i16 < iE; i16++) {
            if (e0Var.d()) {
                i12 += 89;
            }
            if (e0Var.d()) {
                i12 += 8;
            }
        }
        e0Var.l(i12);
        if (iE > 0) {
            e0Var.l((8 - iE) * 2);
        }
        e0Var.h();
        int iH = e0Var.h();
        if (iH == 3) {
            e0Var.k();
        }
        int iH2 = e0Var.h();
        int iH3 = e0Var.h();
        if (e0Var.d()) {
            int iH4 = e0Var.h();
            int iH5 = e0Var.h();
            int iH6 = e0Var.h();
            int iH7 = e0Var.h();
            iH2 -= ((iH == 1 || iH == 2) ? 2 : 1) * (iH4 + iH5);
            iH3 -= (iH == 1 ? 2 : 1) * (iH6 + iH7);
        }
        e0Var.h();
        e0Var.h();
        int iH8 = e0Var.h();
        for (int i17 = e0Var.d() ? 0 : iE; i17 <= iE; i17++) {
            e0Var.h();
            e0Var.h();
            e0Var.h();
        }
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        if (e0Var.d() && e0Var.d()) {
            h(e0Var);
        }
        e0Var.l(2);
        if (e0Var.d()) {
            e0Var.l(8);
            e0Var.h();
            e0Var.h();
            e0Var.k();
        }
        i(e0Var);
        if (e0Var.d()) {
            for (int i18 = 0; i18 < e0Var.h(); i18++) {
                e0Var.l(iH8 + 5);
            }
        }
        e0Var.l(2);
        float f11 = 1.0f;
        if (e0Var.d()) {
            if (e0Var.d()) {
                int iE5 = e0Var.e(8);
                if (iE5 == 255) {
                    int iE6 = e0Var.e(16);
                    int iE7 = e0Var.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f11 = iE6 / iE7;
                    }
                } else {
                    float[] fArr = com.google.android.exoplayer2.util.x.f27665b;
                    if (iE5 < fArr.length) {
                        f11 = fArr[iE5];
                    } else {
                        com.google.android.exoplayer2.util.s.i("H265Reader", "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (e0Var.d()) {
                e0Var.k();
            }
            if (e0Var.d()) {
                e0Var.l(4);
                if (e0Var.d()) {
                    e0Var.l(24);
                }
            }
            if (e0Var.d()) {
                e0Var.h();
                e0Var.h();
            }
            e0Var.k();
            if (e0Var.d()) {
                iH3 *= 2;
            }
        }
        return new o1.b().S(str).e0(MimeTypes.VIDEO_H265).I(com.google.android.exoplayer2.util.f.c(iE2, zD, iE3, i13, iArr, iE4)).j0(iH2).Q(iH3).a0(f11).T(Collections.singletonList(bArr)).E();
    }

    private static void h(com.google.android.exoplayer2.util.e0 e0Var) {
        for (int i11 = 0; i11 < 4; i11++) {
            int i12 = 0;
            while (i12 < 6) {
                int i13 = 1;
                if (e0Var.d()) {
                    int iMin = Math.min(64, 1 << ((i11 << 1) + 4));
                    if (i11 > 1) {
                        e0Var.g();
                    }
                    for (int i14 = 0; i14 < iMin; i14++) {
                        e0Var.g();
                    }
                } else {
                    e0Var.h();
                }
                if (i11 == 3) {
                    i13 = 3;
                }
                i12 += i13;
            }
        }
    }

    private static void i(com.google.android.exoplayer2.util.e0 e0Var) {
        int iH = e0Var.h();
        boolean zD = false;
        int i11 = 0;
        for (int i12 = 0; i12 < iH; i12++) {
            if (i12 != 0) {
                zD = e0Var.d();
            }
            if (zD) {
                e0Var.k();
                e0Var.h();
                for (int i13 = 0; i13 <= i11; i13++) {
                    if (e0Var.d()) {
                        e0Var.k();
                    }
                }
            } else {
                int iH2 = e0Var.h();
                int iH3 = e0Var.h();
                int i14 = iH2 + iH3;
                for (int i15 = 0; i15 < iH2; i15++) {
                    e0Var.h();
                    e0Var.k();
                }
                for (int i16 = 0; i16 < iH3; i16++) {
                    e0Var.h();
                    e0Var.k();
                }
                i11 = i14;
            }
        }
    }

    private void j(long j11, int i11, int i12, long j12) {
        this.f73444d.g(j11, i11, i12, j12, this.f73445e);
        if (!this.f73445e) {
            this.f73447g.e(i12);
            this.f73448h.e(i12);
            this.f73449i.e(i12);
        }
        this.f73450j.e(i12);
        this.f73451k.e(i12);
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        d();
        while (d0Var.a() > 0) {
            int iE = d0Var.e();
            int iF = d0Var.f();
            byte[] bArrD = d0Var.d();
            this.f73452l += (long) d0Var.a();
            this.f73443c.c(d0Var, d0Var.a());
            while (iE < iF) {
                int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f73446f);
                if (iC == iF) {
                    f(bArrD, iE, iF);
                    return;
                }
                int iE2 = com.google.android.exoplayer2.util.x.e(bArrD, iC);
                int i11 = iC - iE;
                if (i11 > 0) {
                    f(bArrD, iE, iC);
                }
                int i12 = iF - iC;
                long j11 = this.f73452l - ((long) i12);
                e(j11, i12, i11 < 0 ? -i11 : 0, this.f73453m);
                j(j11, i12, iE2, this.f73453m);
                iE = iC + 3;
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73453m = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73442b = dVar.b();
        g9.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.f73443c = e0VarTrack;
        this.f73444d = new a(e0VarTrack);
        this.f73441a.b(nVar, dVar);
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73452l = 0L;
        this.f73453m = C.TIME_UNSET;
        com.google.android.exoplayer2.util.x.a(this.f73446f);
        this.f73447g.d();
        this.f73448h.d();
        this.f73449i.d();
        this.f73450j.d();
        this.f73451k.d();
        a aVar = this.f73444d;
        if (aVar != null) {
            aVar.f();
        }
    }
}
