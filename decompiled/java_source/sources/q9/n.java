package q9;

import android.util.Pair;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class n implements m {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final double[] f73344q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f73345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g9.e0 f73346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k0 f73347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f73349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean[] f73350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f73351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f73352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f73353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f73354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f73355k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f73356l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f73357m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f73358n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f73359o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f73360p;

    private static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final byte[] f73361e = {0, 0, 1};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f73362a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f73363b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73364c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public byte[] f73365d;

        public a(int i11) {
            this.f73365d = new byte[i11];
        }

        public void a(byte[] bArr, int i11, int i12) {
            if (this.f73362a) {
                int i13 = i12 - i11;
                byte[] bArr2 = this.f73365d;
                int length = bArr2.length;
                int i14 = this.f73363b;
                if (length < i14 + i13) {
                    this.f73365d = Arrays.copyOf(bArr2, (i14 + i13) * 2);
                }
                System.arraycopy(bArr, i11, this.f73365d, this.f73363b, i13);
                this.f73363b += i13;
            }
        }

        public boolean b(int i11, int i12) {
            if (this.f73362a) {
                int i13 = this.f73363b - i12;
                this.f73363b = i13;
                if (this.f73364c != 0 || i11 != 181) {
                    this.f73362a = false;
                    return true;
                }
                this.f73364c = i13;
            } else if (i11 == 179) {
                this.f73362a = true;
            }
            byte[] bArr = f73361e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f73362a = false;
            this.f73363b = 0;
            this.f73364c = 0;
        }
    }

    public n() {
        this(null);
    }

    n(k0 k0Var) {
        this.f73347c = k0Var;
        this.f73350f = new boolean[4];
        this.f73351g = new a(128);
        if (k0Var != null) {
            this.f73349e = new u(178, 128);
            this.f73348d = new com.google.android.exoplayer2.util.d0();
        } else {
            this.f73349e = null;
            this.f73348d = null;
        }
        this.f73356l = C.TIME_UNSET;
        this.f73358n = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0073  */
    /* JADX WARN: Code duplicated, block: B:16:0x0078  */
    /* JADX WARN: Code duplicated, block: B:18:0x0087  */
    /* JADX WARN: Code duplicated, block: B:20:0x0098  */
    private static Pair d(a aVar, String str) {
        float f11;
        int i11;
        float f12;
        int i12;
        long j11;
        double[] dArr;
        double d11;
        int i13;
        int i14;
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f73365d, aVar.f73363b);
        int i15 = bArrCopyOf[4] & 255;
        byte b11 = bArrCopyOf[5];
        int i16 = (i15 << 4) | ((b11 & 255) >> 4);
        int i17 = ((b11 & 15) << 8) | (bArrCopyOf[6] & 255);
        int i18 = (bArrCopyOf[7] & 240) >> 4;
        if (i18 == 2) {
            f11 = i17 * 4;
            i11 = i16 * 3;
        } else {
            if (i18 != 3) {
                if (i18 != 4) {
                    f12 = 1.0f;
                } else {
                    f11 = i17 * Sdk$SDKError.Reason.TPAT_ERROR_VALUE;
                    i11 = i16 * 100;
                }
                o1 o1VarE = new o1.b().S(str).e0(MimeTypes.VIDEO_MPEG2).j0(i16).Q(i17).a0(f12).T(Collections.singletonList(bArrCopyOf)).E();
                i12 = (bArrCopyOf[7] & 15) - 1;
                if (i12 >= 0) {
                    dArr = f73344q;
                    if (i12 < dArr.length) {
                        d11 = dArr[i12];
                        byte b12 = bArrCopyOf[aVar.f73364c + 9];
                        i13 = (b12 & 96) >> 5;
                        i14 = b12 & 31;
                        if (i13 != i14) {
                            d11 *= (((double) i13) + 1.0d) / ((double) (i14 + 1));
                        }
                        j11 = (long) (1000000.0d / d11);
                    } else {
                        j11 = 0;
                    }
                } else {
                    j11 = 0;
                }
                return Pair.create(o1VarE, Long.valueOf(j11));
            }
            f11 = i17 * 16;
            i11 = i16 * 9;
        }
        f12 = f11 / i11;
        o1 o1VarE2 = new o1.b().S(str).e0(MimeTypes.VIDEO_MPEG2).j0(i16).Q(i17).a0(f12).T(Collections.singletonList(bArrCopyOf)).E();
        i12 = (bArrCopyOf[7] & 15) - 1;
        if (i12 >= 0) {
            dArr = f73344q;
            if (i12 < dArr.length) {
                d11 = dArr[i12];
                byte b13 = bArrCopyOf[aVar.f73364c + 9];
                i13 = (b13 & 96) >> 5;
                i14 = b13 & 31;
                if (i13 != i14) {
                    d11 *= (((double) i13) + 1.0d) / ((double) (i14 + 1));
                }
                j11 = (long) (1000000.0d / d11);
            } else {
                j11 = 0;
            }
        } else {
            j11 = 0;
        }
        return Pair.create(o1VarE2, Long.valueOf(j11));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0112  */
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
    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        boolean z10;
        int i11;
        com.google.android.exoplayer2.util.a.i(this.f73346b);
        int iE = d0Var.e();
        int iF = d0Var.f();
        byte[] bArrD = d0Var.d();
        this.f73352h += (long) d0Var.a();
        this.f73346b.c(d0Var, d0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f73350f);
            if (iC == iF) {
                break;
            }
            int i12 = iC + 3;
            int i13 = d0Var.d()[i12] & 255;
            int i14 = iC - iE;
            if (!this.f73354j) {
                if (i14 > 0) {
                    this.f73351g.a(bArrD, iE, iC);
                }
                if (this.f73351g.b(i13, i14 < 0 ? -i14 : 0)) {
                    Pair pairD = d(this.f73351g, (String) com.google.android.exoplayer2.util.a.e(this.f73345a));
                    this.f73346b.e((o1) pairD.first);
                    this.f73355k = ((Long) pairD.second).longValue();
                    this.f73354j = true;
                }
            }
            u uVar = this.f73349e;
            if (uVar != null) {
                if (i14 > 0) {
                    uVar.a(bArrD, iE, iC);
                    i11 = 0;
                } else {
                    i11 = -i14;
                }
                if (this.f73349e.b(i11)) {
                    u uVar2 = this.f73349e;
                    ((com.google.android.exoplayer2.util.d0) p0.j(this.f73348d)).N(this.f73349e.f73510d, com.google.android.exoplayer2.util.x.q(uVar2.f73510d, uVar2.f73511e));
                    ((k0) p0.j(this.f73347c)).a(this.f73358n, this.f73348d);
                }
                if (i13 == 178 && d0Var.d()[iC + 2] == 1) {
                    this.f73349e.e(i13);
                }
            }
            if (i13 == 0 || i13 == 179) {
                int i15 = iF - iC;
                if (this.f73360p && this.f73354j) {
                    long j11 = this.f73358n;
                    if (j11 != C.TIME_UNSET) {
                        this.f73346b.d(j11, this.f73359o ? 1 : 0, ((int) (this.f73352h - this.f73357m)) - i15, i15, null);
                    }
                }
                if (!this.f73353i || this.f73360p) {
                    this.f73357m = this.f73352h - ((long) i15);
                    long j12 = this.f73356l;
                    if (j12 == C.TIME_UNSET) {
                        long j13 = this.f73358n;
                        j12 = j13 != C.TIME_UNSET ? j13 + this.f73355k : -9223372036854775807L;
                    }
                    this.f73358n = j12;
                    this.f73359o = false;
                    this.f73356l = C.TIME_UNSET;
                    z10 = true;
                    this.f73353i = true;
                } else {
                    z10 = true;
                }
                this.f73360p = i13 == 0 ? z10 : false;
            } else if (i13 == 184) {
                this.f73359o = true;
            }
            iE = i12;
        }
        if (!this.f73354j) {
            this.f73351g.a(bArrD, iE, iF);
        }
        u uVar3 = this.f73349e;
        if (uVar3 != null) {
            uVar3.a(bArrD, iE, iF);
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        this.f73356l = j11;
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73345a = dVar.b();
        this.f73346b = nVar.track(dVar.c(), 2);
        k0 k0Var = this.f73347c;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        com.google.android.exoplayer2.util.x.a(this.f73350f);
        this.f73351g.c();
        u uVar = this.f73349e;
        if (uVar != null) {
            uVar.d();
        }
        this.f73352h = 0L;
        this.f73353i = false;
        this.f73356l = C.TIME_UNSET;
        this.f73358n = C.TIME_UNSET;
    }
}
