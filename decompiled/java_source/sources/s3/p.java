package s3;

import android.util.SparseArray;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class p implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g0 f75107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f75108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f75109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f75110d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f75114h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f75116j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private s0 f75117k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f75118l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f75119m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f75121o;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean[] f75115i = new boolean[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final w f75111e = new w(7, 128);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w f75112f = new w(8, 128);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final w f75113g = new w(6, 128);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f75120n = C.TIME_UNSET;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75122p = new androidx.media3.common.util.j0();

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s0 f75123a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f75124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f75125c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final SparseArray f75126d = new SparseArray();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final SparseArray f75127e = new SparseArray();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final androidx.media3.container.h f75128f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte[] f75129g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f75130h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f75131i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f75132j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f75133k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f75134l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private a f75135m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private a f75136n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f75137o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private long f75138p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private long f75139q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private boolean f75140r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f75141s;

        private static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f75142a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f75143b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private androidx.media3.container.g.m f75144c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f75145d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f75146e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private int f75147f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private int f75148g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private boolean f75149h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private boolean f75150i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private boolean f75151j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            private boolean f75152k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            private int f75153l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private int f75154m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            private int f75155n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private int f75156o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private int f75157p;

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i11;
                int i12;
                int i13;
                boolean z10;
                if (!this.f75142a) {
                    return false;
                }
                if (!aVar.f75142a) {
                    return true;
                }
                androidx.media3.container.g.m mVar = (androidx.media3.container.g.m) androidx.media3.common.util.a.i(this.f75144c);
                androidx.media3.container.g.m mVar2 = (androidx.media3.container.g.m) androidx.media3.common.util.a.i(aVar.f75144c);
                return (this.f75147f == aVar.f75147f && this.f75148g == aVar.f75148g && this.f75149h == aVar.f75149h && (!this.f75150i || !aVar.f75150i || this.f75151j == aVar.f75151j) && (((i11 = this.f75145d) == (i12 = aVar.f75145d) || (i11 != 0 && i12 != 0)) && (((i13 = mVar.f10666n) != 0 || mVar2.f10666n != 0 || (this.f75154m == aVar.f75154m && this.f75155n == aVar.f75155n)) && ((i13 != 1 || mVar2.f10666n != 1 || (this.f75156o == aVar.f75156o && this.f75157p == aVar.f75157p)) && (z10 = this.f75152k) == aVar.f75152k && (!z10 || this.f75153l == aVar.f75153l))))) ? false : true;
            }

            public void b() {
                this.f75143b = false;
                this.f75142a = false;
            }

            public boolean d() {
                int i11;
                return this.f75143b && ((i11 = this.f75146e) == 7 || i11 == 2);
            }

            public void e(androidx.media3.container.g.m mVar, int i11, int i12, int i13, int i14, boolean z10, boolean z11, boolean z12, boolean z13, int i15, int i16, int i17, int i18, int i19) {
                this.f75144c = mVar;
                this.f75145d = i11;
                this.f75146e = i12;
                this.f75147f = i13;
                this.f75148g = i14;
                this.f75149h = z10;
                this.f75150i = z11;
                this.f75151j = z12;
                this.f75152k = z13;
                this.f75153l = i15;
                this.f75154m = i16;
                this.f75155n = i17;
                this.f75156o = i18;
                this.f75157p = i19;
                this.f75142a = true;
                this.f75143b = true;
            }

            public void f(int i11) {
                this.f75146e = i11;
                this.f75143b = true;
            }
        }

        public b(s0 s0Var, boolean z10, boolean z11) {
            this.f75123a = s0Var;
            this.f75124b = z10;
            this.f75125c = z11;
            this.f75135m = new a();
            this.f75136n = new a();
            byte[] bArr = new byte[128];
            this.f75129g = bArr;
            this.f75128f = new androidx.media3.container.h(bArr, 0, 0);
            g();
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
            long j11 = this.f75139q;
            if (j11 != C.TIME_UNSET) {
                long j12 = this.f75132j;
                long j13 = this.f75138p;
                if (j12 == j13) {
                    return;
                }
                boolean z10 = this.f75140r;
                this.f75123a.d(j11, z10 ? 1 : 0, (int) (j12 - j13), i11, null);
            }
        }

        private void h() {
            boolean zD = this.f75124b ? this.f75136n.d() : this.f75141s;
            boolean z10 = this.f75140r;
            int i11 = this.f75131i;
            boolean z11 = true;
            if (i11 != 5 && (!zD || i11 != 1)) {
                z11 = false;
            }
            this.f75140r = z10 | z11;
        }

        /* JADX WARN: Code duplicated, block: B:53:0x0100  */
        /* JADX WARN: Code duplicated, block: B:54:0x0103  */
        /* JADX WARN: Code duplicated, block: B:56:0x0107  */
        /* JADX WARN: Code duplicated, block: B:58:0x010f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x0110  */
        /* JADX WARN: Code duplicated, block: B:60:0x0119  */
        /* JADX WARN: Code duplicated, block: B:63:0x011f  */
        /* JADX WARN: Code duplicated, block: B:65:0x0129 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x012a  */
        /* JADX WARN: Code duplicated, block: B:76:0x0157  */
        public void a(byte[] bArr, int i11, int i12) {
            boolean z10;
            boolean z11;
            boolean zE;
            boolean z12;
            int i13;
            int i14;
            int i15;
            int iH;
            int i16;
            int iH2;
            int iF;
            if (this.f75133k) {
                int i17 = i12 - i11;
                byte[] bArr2 = this.f75129g;
                int length = bArr2.length;
                int i18 = this.f75130h;
                if (length < i18 + i17) {
                    this.f75129g = Arrays.copyOf(bArr2, (i18 + i17) * 2);
                }
                System.arraycopy(bArr, i11, this.f75129g, this.f75130h, i17);
                int i19 = this.f75130h + i17;
                this.f75130h = i19;
                this.f75128f.j(this.f75129g, 0, i19);
                if (this.f75128f.c(8)) {
                    this.f75128f.l();
                    int iF2 = this.f75128f.f(2);
                    this.f75128f.m(5);
                    if (this.f75128f.d()) {
                        this.f75128f.i();
                        if (this.f75128f.d()) {
                            int i20 = this.f75128f.i();
                            if (!this.f75125c) {
                                this.f75133k = false;
                                this.f75136n.f(i20);
                                return;
                            }
                            if (this.f75128f.d()) {
                                int i21 = this.f75128f.i();
                                if (this.f75127e.indexOfKey(i21) < 0) {
                                    this.f75133k = false;
                                    return;
                                }
                                androidx.media3.container.g.l lVar = (androidx.media3.container.g.l) this.f75127e.get(i21);
                                androidx.media3.container.g.m mVar = (androidx.media3.container.g.m) this.f75126d.get(lVar.f10651b);
                                if (mVar.f10663k) {
                                    if (!this.f75128f.c(2)) {
                                        return;
                                    } else {
                                        this.f75128f.m(2);
                                    }
                                }
                                if (this.f75128f.c(mVar.f10665m)) {
                                    int iF3 = this.f75128f.f(mVar.f10665m);
                                    if (!mVar.f10664l) {
                                        if (this.f75128f.c(1)) {
                                            boolean zE2 = this.f75128f.e();
                                            if (!zE2) {
                                                z10 = zE2;
                                                z11 = false;
                                            } else {
                                                if (!this.f75128f.c(1)) {
                                                    return;
                                                }
                                                z10 = zE2;
                                                z11 = true;
                                                zE = this.f75128f.e();
                                            }
                                            if (this.f75131i == 5) {
                                                z12 = true;
                                            } else {
                                                z12 = false;
                                            }
                                            if (z12) {
                                                i13 = 0;
                                            } else if (!this.f75128f.d()) {
                                                return;
                                            } else {
                                                i13 = this.f75128f.i();
                                            }
                                            i14 = mVar.f10666n;
                                            if (i14 != 0) {
                                                if (this.f75128f.c(mVar.f10667o)) {
                                                    iF = this.f75128f.f(mVar.f10667o);
                                                    if (lVar.f10652c || z10) {
                                                        i15 = iF;
                                                        iH = 0;
                                                    } else {
                                                        if (!this.f75128f.d()) {
                                                            return;
                                                        }
                                                        iH = this.f75128f.h();
                                                        i15 = iF;
                                                        i16 = 0;
                                                    }
                                                    iH2 = i16;
                                                    this.f75136n.e(mVar, iF2, i20, iF3, i21, z10, z11, zE, z12, i13, i15, iH, i16, iH2);
                                                    this.f75133k = false;
                                                }
                                                return;
                                            }
                                            if (i14 == 1 || mVar.f10668p) {
                                                i15 = 0;
                                                iH = 0;
                                            } else {
                                                if (!this.f75128f.d()) {
                                                    return;
                                                }
                                                int iH3 = this.f75128f.h();
                                                if (!lVar.f10652c || z10) {
                                                    i16 = iH3;
                                                    i15 = 0;
                                                    iH = 0;
                                                    iH2 = 0;
                                                } else {
                                                    if (!this.f75128f.d()) {
                                                        return;
                                                    }
                                                    iH2 = this.f75128f.h();
                                                    i16 = iH3;
                                                    i15 = 0;
                                                    iH = 0;
                                                }
                                            }
                                            this.f75136n.e(mVar, iF2, i20, iF3, i21, z10, z11, zE, z12, i13, i15, iH, i16, iH2);
                                            this.f75133k = false;
                                            i16 = iH;
                                            iH2 = i16;
                                            this.f75136n.e(mVar, iF2, i20, iF3, i21, z10, z11, zE, z12, i13, i15, iH, i16, iH2);
                                            this.f75133k = false;
                                        }
                                        return;
                                    }
                                    z10 = false;
                                    z11 = false;
                                    zE = z11;
                                    if (this.f75131i == 5) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z12) {
                                        i13 = 0;
                                    } else if (!this.f75128f.d()) {
                                        return;
                                    } else {
                                        i13 = this.f75128f.i();
                                    }
                                    i14 = mVar.f10666n;
                                    if (i14 != 0) {
                                        if (i14 == 1) {
                                        }
                                        i15 = 0;
                                        iH = 0;
                                    } else {
                                        if (this.f75128f.c(mVar.f10667o)) {
                                            return;
                                        }
                                        iF = this.f75128f.f(mVar.f10667o);
                                        if (lVar.f10652c) {
                                        }
                                        i15 = iF;
                                        iH = 0;
                                    }
                                    i16 = iH;
                                    iH2 = i16;
                                    this.f75136n.e(mVar, iF2, i20, iF3, i21, z10, z11, zE, z12, i13, i15, iH, i16, iH2);
                                    this.f75133k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean b(long j11, int i11, boolean z10) {
            if (this.f75131i == 9 || (this.f75125c && this.f75136n.c(this.f75135m))) {
                if (z10 && this.f75137o) {
                    d(i11 + ((int) (j11 - this.f75132j)));
                }
                this.f75138p = this.f75132j;
                this.f75139q = this.f75134l;
                this.f75140r = false;
                this.f75137o = true;
            }
            h();
            this.f75131i = 24;
            return this.f75140r;
        }

        public boolean c() {
            return this.f75125c;
        }

        public void e(androidx.media3.container.g.l lVar) {
            this.f75127e.append(lVar.f10650a, lVar);
        }

        public void f(androidx.media3.container.g.m mVar) {
            this.f75126d.append(mVar.f10656d, mVar);
        }

        public void g() {
            this.f75133k = false;
            this.f75137o = false;
            this.f75136n.b();
        }

        public void i(long j11, int i11, long j12, boolean z10) {
            this.f75131i = i11;
            this.f75134l = j12;
            this.f75132j = j11;
            this.f75141s = z10;
            if (!this.f75124b || i11 != 1) {
                if (!this.f75125c) {
                    return;
                }
                if (i11 != 5 && i11 != 1 && i11 != 2) {
                    return;
                }
            }
            a aVar = this.f75135m;
            this.f75135m = this.f75136n;
            this.f75136n = aVar;
            aVar.b();
            this.f75130h = 0;
            this.f75133k = true;
        }
    }

    public p(g0 g0Var, boolean z10, boolean z11, String str) {
        this.f75107a = g0Var;
        this.f75108b = z10;
        this.f75109c = z11;
        this.f75110d = str;
    }

    private void e() {
        androidx.media3.common.util.a.i(this.f75117k);
        a1.i(this.f75118l);
    }

    private void f(long j11, int i11, int i12, long j12) {
        if (!this.f75119m || this.f75118l.c()) {
            this.f75111e.b(i12);
            this.f75112f.b(i12);
            if (this.f75119m) {
                if (this.f75111e.c()) {
                    w wVar = this.f75111e;
                    androidx.media3.container.g.m mVarC = androidx.media3.container.g.C(wVar.f75262d, 3, wVar.f75263e);
                    this.f75107a.g(mVarC.f10672t);
                    this.f75118l.f(mVarC);
                    this.f75111e.d();
                } else if (this.f75112f.c()) {
                    w wVar2 = this.f75112f;
                    this.f75118l.e(androidx.media3.container.g.A(wVar2.f75262d, 3, wVar2.f75263e));
                    this.f75112f.d();
                }
            } else if (this.f75111e.c() && this.f75112f.c()) {
                ArrayList arrayList = new ArrayList();
                w wVar3 = this.f75111e;
                arrayList.add(Arrays.copyOf(wVar3.f75262d, wVar3.f75263e));
                w wVar4 = this.f75112f;
                arrayList.add(Arrays.copyOf(wVar4.f75262d, wVar4.f75263e));
                w wVar5 = this.f75111e;
                androidx.media3.container.g.m mVarC2 = androidx.media3.container.g.C(wVar5.f75262d, 3, wVar5.f75263e);
                w wVar6 = this.f75112f;
                androidx.media3.container.g.l lVarA = androidx.media3.container.g.A(wVar6.f75262d, 3, wVar6.f75263e);
                this.f75117k.c(new androidx.media3.common.r.b().f0(this.f75116j).U(this.f75110d).u0(MimeTypes.VIDEO_H264).S(androidx.media3.common.util.j.d(mVarC2.f10653a, mVarC2.f10654b, mVarC2.f10655c)).B0(mVarC2.f10658f).d0(mVarC2.f10659g).T(new androidx.media3.common.i.b().d(mVarC2.f10669q).c(mVarC2.f10670r).e(mVarC2.f10671s).g(mVarC2.f10661i + 8).b(mVarC2.f10662j + 8).a()).q0(mVarC2.f10660h).g0(arrayList).l0(mVarC2.f10672t).N());
                this.f75119m = true;
                this.f75107a.g(mVarC2.f10672t);
                this.f75118l.f(mVarC2);
                this.f75118l.e(lVarA);
                this.f75111e.d();
                this.f75112f.d();
            }
        }
        if (this.f75113g.b(i12)) {
            w wVar7 = this.f75113g;
            this.f75122p.U(this.f75113g.f75262d, androidx.media3.container.g.L(wVar7.f75262d, wVar7.f75263e));
            this.f75122p.W(4);
            this.f75107a.c(j12, this.f75122p);
        }
        if (this.f75118l.b(j11, i11, this.f75119m)) {
            this.f75121o = false;
        }
    }

    private void g(byte[] bArr, int i11, int i12) {
        if (!this.f75119m || this.f75118l.c()) {
            this.f75111e.a(bArr, i11, i12);
            this.f75112f.a(bArr, i11, i12);
        }
        this.f75113g.a(bArr, i11, i12);
        this.f75118l.a(bArr, i11, i12);
    }

    private void h(long j11, int i11, long j12) {
        if (!this.f75119m || this.f75118l.c()) {
            this.f75111e.e(i11);
            this.f75112f.e(i11);
        }
        this.f75113g.e(i11);
        this.f75118l.i(j11, i11, j12, this.f75121o);
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        int i11;
        e();
        int iF = j0Var.f();
        int iG = j0Var.g();
        byte[] bArrE = j0Var.e();
        this.f75114h += (long) j0Var.a();
        this.f75117k.b(j0Var, j0Var.a());
        while (true) {
            int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f75115i);
            if (iE == iG) {
                g(bArrE, iF, iG);
                return;
            }
            int iJ = androidx.media3.container.g.j(bArrE, iE);
            if (iE <= 0 || bArrE[iE - 1] != 0) {
                i11 = 3;
            } else {
                iE--;
                i11 = 4;
            }
            int i12 = iE;
            int i13 = i11;
            int i14 = i12 - iF;
            if (i14 > 0) {
                g(bArrE, iF, i12);
            }
            int i15 = iG - i12;
            long j11 = this.f75114h - ((long) i15);
            f(j11, i15, i14 < 0 ? -i14 : 0, this.f75120n);
            h(j11, iJ, this.f75120n);
            iF = i12 + i13;
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75120n = j11;
        this.f75121o |= (i11 & 2) != 0;
    }

    @Override // s3.m
    public void c(boolean z10) {
        e();
        if (z10) {
            this.f75107a.e();
            f(this.f75114h, 0, 0, this.f75120n);
            h(this.f75114h, 9, this.f75120n);
            f(this.f75114h, 0, 0, this.f75120n);
        }
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f75116j = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 2);
        this.f75117k = s0VarTrack;
        this.f75118l = new b(s0VarTrack, this.f75108b, this.f75109c);
        this.f75107a.d(tVar, dVar);
    }

    @Override // s3.m
    public void seek() {
        this.f75114h = 0L;
        this.f75121o = false;
        this.f75120n = C.TIME_UNSET;
        androidx.media3.container.g.c(this.f75115i);
        this.f75111e.d();
        this.f75112f.d();
        this.f75113g.d();
        this.f75107a.b();
        b bVar = this.f75118l;
        if (bVar != null) {
            bVar.g();
        }
    }
}
