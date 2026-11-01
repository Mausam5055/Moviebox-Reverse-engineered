package s3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g0 f75158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f75159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f75160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s0 f75161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f75162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f75163f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f75170m;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean[] f75164g = new boolean[3];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final w f75165h = new w(32, 128);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final w f75166i = new w(33, 128);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final w f75167j = new w(34, 128);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final w f75168k = new w(39, 128);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final w f75169l = new w(40, 128);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f75171n = C.TIME_UNSET;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75172o = new androidx.media3.common.util.j0();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s0 f75173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f75174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f75175c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f75176d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f75177e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f75178f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f75179g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f75180h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f75181i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f75182j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f75183k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f75184l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f75185m;

        public a(s0 s0Var) {
            this.f75173a = s0Var;
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
            long j11 = this.f75184l;
            if (j11 != C.TIME_UNSET) {
                long j12 = this.f75174b;
                long j13 = this.f75183k;
                if (j12 == j13) {
                    return;
                }
                boolean z10 = this.f75185m;
                this.f75173a.d(j11, z10 ? 1 : 0, (int) (j12 - j13), i11, null);
            }
        }

        public void a(long j11, int i11, boolean z10) {
            if (this.f75182j && this.f75179g) {
                this.f75185m = this.f75175c;
                this.f75182j = false;
            } else if (this.f75180h || this.f75179g) {
                if (z10 && this.f75181i) {
                    d(i11 + ((int) (j11 - this.f75174b)));
                }
                this.f75183k = this.f75174b;
                this.f75184l = this.f75177e;
                this.f75185m = this.f75175c;
                this.f75181i = true;
            }
        }

        public void e(byte[] bArr, int i11, int i12) {
            if (this.f75178f) {
                int i13 = this.f75176d;
                int i14 = (i11 + 2) - i13;
                if (i14 >= i12) {
                    this.f75176d = i13 + (i12 - i11);
                } else {
                    this.f75179g = (bArr[i14] & 128) != 0;
                    this.f75178f = false;
                }
            }
        }

        public void f() {
            this.f75178f = false;
            this.f75179g = false;
            this.f75180h = false;
            this.f75181i = false;
            this.f75182j = false;
        }

        public void g(long j11, int i11, int i12, long j12, boolean z10) {
            this.f75179g = false;
            this.f75180h = false;
            this.f75177e = j12;
            this.f75176d = 0;
            this.f75174b = j11;
            if (!c(i12)) {
                if (this.f75181i && !this.f75182j) {
                    if (z10) {
                        d(i11);
                    }
                    this.f75181i = false;
                }
                if (b(i12)) {
                    this.f75180h = !this.f75182j;
                    this.f75182j = true;
                }
            }
            boolean z11 = i12 >= 16 && i12 <= 21;
            this.f75175c = z11;
            this.f75178f = z11 || i12 <= 9;
        }
    }

    public q(g0 g0Var, String str) {
        this.f75158a = g0Var;
        this.f75159b = str;
    }

    private void e() {
        androidx.media3.common.util.a.i(this.f75161d);
        a1.i(this.f75162e);
    }

    private void f(long j11, int i11, int i12, long j12) {
        this.f75162e.a(j11, i11, this.f75163f);
        if (!this.f75163f) {
            this.f75165h.b(i12);
            this.f75166i.b(i12);
            this.f75167j.b(i12);
            if (this.f75165h.c() && this.f75166i.c() && this.f75167j.c()) {
                androidx.media3.common.r rVarH = h(this.f75160c, this.f75165h, this.f75166i, this.f75167j, this.f75159b);
                this.f75161d.c(rVarH);
                com.google.common.base.m.u(rVarH.f10163q != -1);
                this.f75158a.g(rVarH.f10163q);
                this.f75163f = true;
            }
        }
        if (this.f75168k.b(i12)) {
            w wVar = this.f75168k;
            this.f75172o.U(this.f75168k.f75262d, androidx.media3.container.g.L(wVar.f75262d, wVar.f75263e));
            this.f75172o.X(5);
            this.f75158a.c(j12, this.f75172o);
        }
        if (this.f75169l.b(i12)) {
            w wVar2 = this.f75169l;
            this.f75172o.U(this.f75169l.f75262d, androidx.media3.container.g.L(wVar2.f75262d, wVar2.f75263e));
            this.f75172o.X(5);
            this.f75158a.c(j12, this.f75172o);
        }
    }

    private void g(byte[] bArr, int i11, int i12) {
        this.f75162e.e(bArr, i11, i12);
        if (!this.f75163f) {
            this.f75165h.a(bArr, i11, i12);
            this.f75166i.a(bArr, i11, i12);
            this.f75167j.a(bArr, i11, i12);
        }
        this.f75168k.a(bArr, i11, i12);
        this.f75169l.a(bArr, i11, i12);
    }

    private static androidx.media3.common.r h(String str, w wVar, w wVar2, w wVar3, String str2) {
        int i11 = wVar.f75263e;
        byte[] bArr = new byte[wVar2.f75263e + i11 + wVar3.f75263e];
        System.arraycopy(wVar.f75262d, 0, bArr, 0, i11);
        System.arraycopy(wVar2.f75262d, 0, bArr, wVar.f75263e, wVar2.f75263e);
        System.arraycopy(wVar3.f75262d, 0, bArr, wVar.f75263e + wVar2.f75263e, wVar3.f75263e);
        androidx.media3.container.g.h hVarU = androidx.media3.container.g.u(wVar2.f75262d, 3, wVar2.f75263e, null);
        androidx.media3.container.g.c cVar = hVarU.f10628c;
        return new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_H265).S(cVar != null ? androidx.media3.common.util.j.f(cVar.f10602a, cVar.f10603b, cVar.f10604c, cVar.f10605d, cVar.f10606e, cVar.f10607f) : null).B0(hVarU.f10633h).d0(hVarU.f10634i).T(new androidx.media3.common.i.b().d(hVarU.f10637l).c(hVarU.f10638m).e(hVarU.f10639n).g(hVarU.f10630e + 8).b(hVarU.f10631f + 8).a()).q0(hVarU.f10635j).l0(hVarU.f10636k).m0(hVarU.f10627b + 1).g0(Collections.singletonList(bArr)).N();
    }

    private void i(long j11, int i11, int i12, long j12) {
        this.f75162e.g(j11, i11, i12, j12, this.f75163f);
        if (!this.f75163f) {
            this.f75165h.e(i12);
            this.f75166i.e(i12);
            this.f75167j.e(i12);
        }
        this.f75168k.e(i12);
        this.f75169l.e(i12);
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        int i11;
        e();
        while (j0Var.a() > 0) {
            int iF = j0Var.f();
            int iG = j0Var.g();
            byte[] bArrE = j0Var.e();
            this.f75170m += (long) j0Var.a();
            this.f75161d.b(j0Var, j0Var.a());
            while (iF < iG) {
                int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f75164g);
                if (iE == iG) {
                    g(bArrE, iF, iG);
                    return;
                }
                int i12 = androidx.media3.container.g.i(bArrE, iE);
                if (iE <= 0 || bArrE[iE - 1] != 0) {
                    i11 = 3;
                } else {
                    iE--;
                    i11 = 4;
                }
                int i13 = iE;
                int i14 = i11;
                int i15 = i13 - iF;
                if (i15 > 0) {
                    g(bArrE, iF, i13);
                }
                int i16 = iG - i13;
                long j11 = this.f75170m - ((long) i16);
                f(j11, i16, i15 < 0 ? -i15 : 0, this.f75171n);
                i(j11, i16, i12, this.f75171n);
                iF = i13 + i14;
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75171n = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
        e();
        if (z10) {
            this.f75158a.e();
            f(this.f75170m, 0, 0, this.f75171n);
            i(this.f75170m, 0, 48, this.f75171n);
        }
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f75160c = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 2);
        this.f75161d = s0VarTrack;
        this.f75162e = new a(s0VarTrack);
        this.f75158a.d(tVar, dVar);
    }

    @Override // s3.m
    public void seek() {
        this.f75170m = 0L;
        this.f75171n = C.TIME_UNSET;
        androidx.media3.container.g.c(this.f75164g);
        this.f75165h.d();
        this.f75166i.d();
        this.f75167j.d();
        this.f75168k.d();
        this.f75169l.d();
        this.f75158a.b();
        a aVar = this.f75162e;
        if (aVar != null) {
            aVar.f();
        }
    }
}
