package q9;

import android.util.SparseArray;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class p implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f73392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f73393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f73394c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f73398g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f73400i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private g9.e0 f73401j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b f73402k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f73403l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f73405n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean[] f73399h = new boolean[3];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u f73395d = new u(7, 128);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f73396e = new u(8, 128);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final u f73397f = new u(6, 128);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f73404m = C.TIME_UNSET;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73406o = new com.google.android.exoplayer2.util.d0();

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g9.e0 f73407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f73408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f73409c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final SparseArray f73410d = new SparseArray();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final SparseArray f73411e = new SparseArray();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.e0 f73412f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte[] f73413g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f73414h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f73415i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f73416j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f73417k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f73418l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private a f73419m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private a f73420n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f73421o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private long f73422p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private long f73423q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private boolean f73424r;

        private static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f73425a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f73426b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private com.google.android.exoplayer2.util.x.c f73427c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f73428d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f73429e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private int f73430f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private int f73431g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private boolean f73432h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private boolean f73433i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private boolean f73434j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            private boolean f73435k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            private int f73436l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private int f73437m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            private int f73438n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private int f73439o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private int f73440p;

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i11;
                int i12;
                int i13;
                boolean z10;
                if (!this.f73425a) {
                    return false;
                }
                if (!aVar.f73425a) {
                    return true;
                }
                com.google.android.exoplayer2.util.x.c cVar = (com.google.android.exoplayer2.util.x.c) com.google.android.exoplayer2.util.a.i(this.f73427c);
                com.google.android.exoplayer2.util.x.c cVar2 = (com.google.android.exoplayer2.util.x.c) com.google.android.exoplayer2.util.a.i(aVar.f73427c);
                return (this.f73430f == aVar.f73430f && this.f73431g == aVar.f73431g && this.f73432h == aVar.f73432h && (!this.f73433i || !aVar.f73433i || this.f73434j == aVar.f73434j) && (((i11 = this.f73428d) == (i12 = aVar.f73428d) || (i11 != 0 && i12 != 0)) && (((i13 = cVar.f27692l) != 0 || cVar2.f27692l != 0 || (this.f73437m == aVar.f73437m && this.f73438n == aVar.f73438n)) && ((i13 != 1 || cVar2.f27692l != 1 || (this.f73439o == aVar.f73439o && this.f73440p == aVar.f73440p)) && (z10 = this.f73435k) == aVar.f73435k && (!z10 || this.f73436l == aVar.f73436l))))) ? false : true;
            }

            public void b() {
                this.f73426b = false;
                this.f73425a = false;
            }

            public boolean d() {
                int i11;
                return this.f73426b && ((i11 = this.f73429e) == 7 || i11 == 2);
            }

            public void e(com.google.android.exoplayer2.util.x.c cVar, int i11, int i12, int i13, int i14, boolean z10, boolean z11, boolean z12, boolean z13, int i15, int i16, int i17, int i18, int i19) {
                this.f73427c = cVar;
                this.f73428d = i11;
                this.f73429e = i12;
                this.f73430f = i13;
                this.f73431g = i14;
                this.f73432h = z10;
                this.f73433i = z11;
                this.f73434j = z12;
                this.f73435k = z13;
                this.f73436l = i15;
                this.f73437m = i16;
                this.f73438n = i17;
                this.f73439o = i18;
                this.f73440p = i19;
                this.f73425a = true;
                this.f73426b = true;
            }

            public void f(int i11) {
                this.f73429e = i11;
                this.f73426b = true;
            }
        }

        public b(g9.e0 e0Var, boolean z10, boolean z11) {
            this.f73407a = e0Var;
            this.f73408b = z10;
            this.f73409c = z11;
            this.f73419m = new a();
            this.f73420n = new a();
            byte[] bArr = new byte[128];
            this.f73413g = bArr;
            this.f73412f = new com.google.android.exoplayer2.util.e0(bArr, 0, 0);
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
            long j11 = this.f73423q;
            if (j11 == C.TIME_UNSET) {
                return;
            }
            boolean z10 = this.f73424r;
            this.f73407a.d(j11, z10 ? 1 : 0, (int) (this.f73416j - this.f73422p), i11, null);
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
            boolean zD;
            boolean z12;
            int iH;
            int i13;
            int i14;
            int iG;
            int i15;
            int iG2;
            int iE;
            if (this.f73417k) {
                int i16 = i12 - i11;
                byte[] bArr2 = this.f73413g;
                int length = bArr2.length;
                int i17 = this.f73414h;
                if (length < i17 + i16) {
                    this.f73413g = Arrays.copyOf(bArr2, (i17 + i16) * 2);
                }
                System.arraycopy(bArr, i11, this.f73413g, this.f73414h, i16);
                int i18 = this.f73414h + i16;
                this.f73414h = i18;
                this.f73412f.i(this.f73413g, 0, i18);
                if (this.f73412f.b(8)) {
                    this.f73412f.k();
                    int iE2 = this.f73412f.e(2);
                    this.f73412f.l(5);
                    if (this.f73412f.c()) {
                        this.f73412f.h();
                        if (this.f73412f.c()) {
                            int iH2 = this.f73412f.h();
                            if (!this.f73409c) {
                                this.f73417k = false;
                                this.f73420n.f(iH2);
                                return;
                            }
                            if (this.f73412f.c()) {
                                int iH3 = this.f73412f.h();
                                if (this.f73411e.indexOfKey(iH3) < 0) {
                                    this.f73417k = false;
                                    return;
                                }
                                com.google.android.exoplayer2.util.x.b bVar = (com.google.android.exoplayer2.util.x.b) this.f73411e.get(iH3);
                                com.google.android.exoplayer2.util.x.c cVar = (com.google.android.exoplayer2.util.x.c) this.f73410d.get(bVar.f27679b);
                                if (cVar.f27689i) {
                                    if (!this.f73412f.b(2)) {
                                        return;
                                    } else {
                                        this.f73412f.l(2);
                                    }
                                }
                                if (this.f73412f.b(cVar.f27691k)) {
                                    int iE3 = this.f73412f.e(cVar.f27691k);
                                    if (!cVar.f27690j) {
                                        if (this.f73412f.b(1)) {
                                            boolean zD2 = this.f73412f.d();
                                            if (!zD2) {
                                                z10 = zD2;
                                                z11 = false;
                                            } else {
                                                if (!this.f73412f.b(1)) {
                                                    return;
                                                }
                                                z10 = zD2;
                                                z11 = true;
                                                zD = this.f73412f.d();
                                            }
                                            if (this.f73415i == 5) {
                                                z12 = true;
                                            } else {
                                                z12 = false;
                                            }
                                            if (z12) {
                                                iH = 0;
                                            } else if (!this.f73412f.c()) {
                                                return;
                                            } else {
                                                iH = this.f73412f.h();
                                            }
                                            i13 = cVar.f27692l;
                                            if (i13 != 0) {
                                                if (this.f73412f.b(cVar.f27693m)) {
                                                    iE = this.f73412f.e(cVar.f27693m);
                                                    if (bVar.f27680c || z10) {
                                                        i14 = iE;
                                                        iG = 0;
                                                    } else {
                                                        if (!this.f73412f.c()) {
                                                            return;
                                                        }
                                                        iG = this.f73412f.g();
                                                        i14 = iE;
                                                        i15 = 0;
                                                    }
                                                    iG2 = i15;
                                                    this.f73420n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i14, iG, i15, iG2);
                                                    this.f73417k = false;
                                                }
                                                return;
                                            }
                                            if (i13 == 1 || cVar.f27694n) {
                                                i14 = 0;
                                                iG = 0;
                                            } else {
                                                if (!this.f73412f.c()) {
                                                    return;
                                                }
                                                int iG3 = this.f73412f.g();
                                                if (!bVar.f27680c || z10) {
                                                    i15 = iG3;
                                                    i14 = 0;
                                                    iG = 0;
                                                    iG2 = 0;
                                                } else {
                                                    if (!this.f73412f.c()) {
                                                        return;
                                                    }
                                                    iG2 = this.f73412f.g();
                                                    i15 = iG3;
                                                    i14 = 0;
                                                    iG = 0;
                                                }
                                            }
                                            this.f73420n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i14, iG, i15, iG2);
                                            this.f73417k = false;
                                            i15 = iG;
                                            iG2 = i15;
                                            this.f73420n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i14, iG, i15, iG2);
                                            this.f73417k = false;
                                        }
                                        return;
                                    }
                                    z10 = false;
                                    z11 = false;
                                    zD = z11;
                                    if (this.f73415i == 5) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z12) {
                                        iH = 0;
                                    } else if (!this.f73412f.c()) {
                                        return;
                                    } else {
                                        iH = this.f73412f.h();
                                    }
                                    i13 = cVar.f27692l;
                                    if (i13 != 0) {
                                        if (i13 == 1) {
                                        }
                                        i14 = 0;
                                        iG = 0;
                                    } else {
                                        if (this.f73412f.b(cVar.f27693m)) {
                                            return;
                                        }
                                        iE = this.f73412f.e(cVar.f27693m);
                                        if (bVar.f27680c) {
                                        }
                                        i14 = iE;
                                        iG = 0;
                                    }
                                    i15 = iG;
                                    iG2 = i15;
                                    this.f73420n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i14, iG, i15, iG2);
                                    this.f73417k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean b(long j11, int i11, boolean z10, boolean z11) {
            boolean z12 = false;
            if (this.f73415i == 9 || (this.f73409c && this.f73420n.c(this.f73419m))) {
                if (z10 && this.f73421o) {
                    d(i11 + ((int) (j11 - this.f73416j)));
                }
                this.f73422p = this.f73416j;
                this.f73423q = this.f73418l;
                this.f73424r = false;
                this.f73421o = true;
            }
            if (this.f73408b) {
                z11 = this.f73420n.d();
            }
            boolean z13 = this.f73424r;
            int i12 = this.f73415i;
            if (i12 == 5 || (z11 && i12 == 1)) {
                z12 = true;
            }
            boolean z14 = z13 | z12;
            this.f73424r = z14;
            return z14;
        }

        public boolean c() {
            return this.f73409c;
        }

        public void e(com.google.android.exoplayer2.util.x.b bVar) {
            this.f73411e.append(bVar.f27678a, bVar);
        }

        public void f(com.google.android.exoplayer2.util.x.c cVar) {
            this.f73410d.append(cVar.f27684d, cVar);
        }

        public void g() {
            this.f73417k = false;
            this.f73421o = false;
            this.f73420n.b();
        }

        public void h(long j11, int i11, long j12) {
            this.f73415i = i11;
            this.f73418l = j12;
            this.f73416j = j11;
            if (!this.f73408b || i11 != 1) {
                if (!this.f73409c) {
                    return;
                }
                if (i11 != 5 && i11 != 1 && i11 != 2) {
                    return;
                }
            }
            a aVar = this.f73419m;
            this.f73419m = this.f73420n;
            this.f73420n = aVar;
            aVar.b();
            this.f73414h = 0;
            this.f73417k = true;
        }
    }

    public p(d0 d0Var, boolean z10, boolean z11) {
        this.f73392a = d0Var;
        this.f73393b = z10;
        this.f73394c = z11;
    }

    private void d() {
        com.google.android.exoplayer2.util.a.i(this.f73401j);
        p0.j(this.f73402k);
    }

    private void e(long j11, int i11, int i12, long j12) {
        if (!this.f73403l || this.f73402k.c()) {
            this.f73395d.b(i12);
            this.f73396e.b(i12);
            if (this.f73403l) {
                if (this.f73395d.c()) {
                    u uVar = this.f73395d;
                    this.f73402k.f(com.google.android.exoplayer2.util.x.l(uVar.f73510d, 3, uVar.f73511e));
                    this.f73395d.d();
                } else if (this.f73396e.c()) {
                    u uVar2 = this.f73396e;
                    this.f73402k.e(com.google.android.exoplayer2.util.x.j(uVar2.f73510d, 3, uVar2.f73511e));
                    this.f73396e.d();
                }
            } else if (this.f73395d.c() && this.f73396e.c()) {
                ArrayList arrayList = new ArrayList();
                u uVar3 = this.f73395d;
                arrayList.add(Arrays.copyOf(uVar3.f73510d, uVar3.f73511e));
                u uVar4 = this.f73396e;
                arrayList.add(Arrays.copyOf(uVar4.f73510d, uVar4.f73511e));
                u uVar5 = this.f73395d;
                com.google.android.exoplayer2.util.x.c cVarL = com.google.android.exoplayer2.util.x.l(uVar5.f73510d, 3, uVar5.f73511e);
                u uVar6 = this.f73396e;
                com.google.android.exoplayer2.util.x.b bVarJ = com.google.android.exoplayer2.util.x.j(uVar6.f73510d, 3, uVar6.f73511e);
                this.f73401j.e(new o1.b().S(this.f73400i).e0(MimeTypes.VIDEO_H264).I(com.google.android.exoplayer2.util.f.a(cVarL.f27681a, cVarL.f27682b, cVarL.f27683c)).j0(cVarL.f27686f).Q(cVarL.f27687g).a0(cVarL.f27688h).T(arrayList).E());
                this.f73403l = true;
                this.f73402k.f(cVarL);
                this.f73402k.e(bVarJ);
                this.f73395d.d();
                this.f73396e.d();
            }
        }
        if (this.f73397f.b(i12)) {
            u uVar7 = this.f73397f;
            this.f73406o.N(this.f73397f.f73510d, com.google.android.exoplayer2.util.x.q(uVar7.f73510d, uVar7.f73511e));
            this.f73406o.P(4);
            this.f73392a.a(j12, this.f73406o);
        }
        if (this.f73402k.b(j11, i11, this.f73403l, this.f73405n)) {
            this.f73405n = false;
        }
    }

    private void f(byte[] bArr, int i11, int i12) {
        if (!this.f73403l || this.f73402k.c()) {
            this.f73395d.a(bArr, i11, i12);
            this.f73396e.a(bArr, i11, i12);
        }
        this.f73397f.a(bArr, i11, i12);
        this.f73402k.a(bArr, i11, i12);
    }

    private void g(long j11, int i11, long j12) {
        if (!this.f73403l || this.f73402k.c()) {
            this.f73395d.e(i11);
            this.f73396e.e(i11);
        }
        this.f73397f.e(i11);
        this.f73402k.h(j11, i11, j12);
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        d();
        int iE = d0Var.e();
        int iF = d0Var.f();
        byte[] bArrD = d0Var.d();
        this.f73398g += (long) d0Var.a();
        this.f73401j.c(d0Var, d0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f73399h);
            if (iC == iF) {
                f(bArrD, iE, iF);
                return;
            }
            int iF2 = com.google.android.exoplayer2.util.x.f(bArrD, iC);
            int i11 = iC - iE;
            if (i11 > 0) {
                f(bArrD, iE, iC);
            }
            int i12 = iF - iC;
            long j11 = this.f73398g - ((long) i12);
            e(j11, i12, i11 < 0 ? -i11 : 0, this.f73404m);
            g(j11, iF2, this.f73404m);
            iE = iC + 3;
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73404m = j11;
        }
        this.f73405n |= (i11 & 2) != 0;
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73400i = dVar.b();
        g9.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.f73401j = e0VarTrack;
        this.f73402k = new b(e0VarTrack, this.f73393b, this.f73394c);
        this.f73392a.b(nVar, dVar);
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73398g = 0L;
        this.f73405n = false;
        this.f73404m = C.TIME_UNSET;
        com.google.android.exoplayer2.util.x.a(this.f73399h);
        this.f73395d.d();
        this.f73396e.d();
        this.f73397f.d();
        b bVar = this.f73402k;
        if (bVar != null) {
            bVar.g();
        }
    }
}
