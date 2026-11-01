package q9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class o implements m {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float[] f73366l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k0 f73367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean[] f73369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f73370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f73371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f73372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f73373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f73374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private g9.e0 f73375i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f73376j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f73377k;

    private static final class a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f73378f = {0, 0, 1};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f73379a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f73380b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73381c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f73382d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f73383e;

        public a(int i11) {
            this.f73383e = new byte[i11];
        }

        public void a(byte[] bArr, int i11, int i12) {
            if (this.f73379a) {
                int i13 = i12 - i11;
                byte[] bArr2 = this.f73383e;
                int length = bArr2.length;
                int i14 = this.f73381c;
                if (length < i14 + i13) {
                    this.f73383e = Arrays.copyOf(bArr2, (i14 + i13) * 2);
                }
                System.arraycopy(bArr, i11, this.f73383e, this.f73381c, i13);
                this.f73381c += i13;
            }
        }

        public boolean b(int i11, int i12) {
            int i13 = this.f73380b;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i11 == 179 || i11 == 181) {
                                this.f73381c -= i12;
                                this.f73379a = false;
                                return true;
                            }
                        } else if ((i11 & 240) != 32) {
                            com.google.android.exoplayer2.util.s.i("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f73382d = this.f73381c;
                            this.f73380b = 4;
                        }
                    } else if (i11 > 31) {
                        com.google.android.exoplayer2.util.s.i("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f73380b = 3;
                    }
                } else if (i11 != 181) {
                    com.google.android.exoplayer2.util.s.i("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f73380b = 2;
                }
            } else if (i11 == 176) {
                this.f73380b = 1;
                this.f73379a = true;
            }
            byte[] bArr = f73378f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f73379a = false;
            this.f73381c = 0;
            this.f73380b = 0;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g9.e0 f73384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f73385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f73386c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f73387d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f73388e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f73389f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f73390g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f73391h;

        public b(g9.e0 e0Var) {
            this.f73384a = e0Var;
        }

        public void a(byte[] bArr, int i11, int i12) {
            if (this.f73386c) {
                int i13 = this.f73389f;
                int i14 = (i11 + 1) - i13;
                if (i14 >= i12) {
                    this.f73389f = i13 + (i12 - i11);
                } else {
                    this.f73387d = ((bArr[i14] & 192) >> 6) == 0;
                    this.f73386c = false;
                }
            }
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
        public void b(long j11, int i11, boolean z10) {
            if (this.f73388e == 182 && z10 && this.f73385b) {
                long j12 = this.f73391h;
                if (j12 != C.TIME_UNSET) {
                    this.f73384a.d(j12, this.f73387d ? 1 : 0, (int) (j11 - this.f73390g), i11, null);
                }
            }
            if (this.f73388e != 179) {
                this.f73390g = j11;
            }
        }

        public void c(int i11, long j11) {
            this.f73388e = i11;
            this.f73387d = false;
            this.f73385b = i11 == 182 || i11 == 179;
            this.f73386c = i11 == 182;
            this.f73389f = 0;
            this.f73391h = j11;
        }

        public void d() {
            this.f73385b = false;
            this.f73386c = false;
            this.f73387d = false;
            this.f73388e = -1;
        }
    }

    public o() {
        this(null);
    }

    o(k0 k0Var) {
        this.f73367a = k0Var;
        this.f73369c = new boolean[4];
        this.f73370d = new a(128);
        this.f73377k = C.TIME_UNSET;
        if (k0Var != null) {
            this.f73371e = new u(178, 128);
            this.f73368b = new com.google.android.exoplayer2.util.d0();
        } else {
            this.f73371e = null;
            this.f73368b = null;
        }
    }

    private static o1 d(a aVar, int i11, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f73383e, aVar.f73381c);
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(bArrCopyOf);
        c0Var.s(i11);
        c0Var.s(4);
        c0Var.q();
        c0Var.r(8);
        if (c0Var.g()) {
            c0Var.r(4);
            c0Var.r(3);
        }
        int iH = c0Var.h(4);
        float f11 = 1.0f;
        if (iH == 15) {
            int iH2 = c0Var.h(8);
            int iH3 = c0Var.h(8);
            if (iH3 == 0) {
                com.google.android.exoplayer2.util.s.i("H263Reader", "Invalid aspect ratio");
            } else {
                f11 = iH2 / iH3;
            }
        } else {
            float[] fArr = f73366l;
            if (iH < fArr.length) {
                f11 = fArr[iH];
            } else {
                com.google.android.exoplayer2.util.s.i("H263Reader", "Invalid aspect ratio");
            }
        }
        if (c0Var.g()) {
            c0Var.r(2);
            c0Var.r(1);
            if (c0Var.g()) {
                c0Var.r(15);
                c0Var.q();
                c0Var.r(15);
                c0Var.q();
                c0Var.r(15);
                c0Var.q();
                c0Var.r(3);
                c0Var.r(11);
                c0Var.q();
                c0Var.r(15);
                c0Var.q();
            }
        }
        if (c0Var.h(2) != 0) {
            com.google.android.exoplayer2.util.s.i("H263Reader", "Unhandled video object layer shape");
        }
        c0Var.q();
        int iH4 = c0Var.h(16);
        c0Var.q();
        if (c0Var.g()) {
            if (iH4 == 0) {
                com.google.android.exoplayer2.util.s.i("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i12 = 0;
                for (int i13 = iH4 - 1; i13 > 0; i13 >>= 1) {
                    i12++;
                }
                c0Var.r(i12);
            }
        }
        c0Var.q();
        int iH5 = c0Var.h(13);
        c0Var.q();
        int iH6 = c0Var.h(13);
        c0Var.q();
        c0Var.q();
        return new o1.b().S(str).e0(MimeTypes.VIDEO_MP4V).j0(iH5).Q(iH6).a0(f11).T(Collections.singletonList(bArrCopyOf)).E();
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f73372f);
        com.google.android.exoplayer2.util.a.i(this.f73375i);
        int iE = d0Var.e();
        int iF = d0Var.f();
        byte[] bArrD = d0Var.d();
        this.f73373g += (long) d0Var.a();
        this.f73375i.c(d0Var, d0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f73369c);
            if (iC == iF) {
                break;
            }
            int i11 = iC + 3;
            int i12 = d0Var.d()[i11] & 255;
            int i13 = iC - iE;
            int i14 = 0;
            if (!this.f73376j) {
                if (i13 > 0) {
                    this.f73370d.a(bArrD, iE, iC);
                }
                if (this.f73370d.b(i12, i13 < 0 ? -i13 : 0)) {
                    g9.e0 e0Var = this.f73375i;
                    a aVar = this.f73370d;
                    e0Var.e(d(aVar, aVar.f73382d, (String) com.google.android.exoplayer2.util.a.e(this.f73374h)));
                    this.f73376j = true;
                }
            }
            this.f73372f.a(bArrD, iE, iC);
            u uVar = this.f73371e;
            if (uVar != null) {
                if (i13 > 0) {
                    uVar.a(bArrD, iE, iC);
                } else {
                    i14 = -i13;
                }
                if (this.f73371e.b(i14)) {
                    u uVar2 = this.f73371e;
                    ((com.google.android.exoplayer2.util.d0) p0.j(this.f73368b)).N(this.f73371e.f73510d, com.google.android.exoplayer2.util.x.q(uVar2.f73510d, uVar2.f73511e));
                    ((k0) p0.j(this.f73367a)).a(this.f73377k, this.f73368b);
                }
                if (i12 == 178 && d0Var.d()[iC + 2] == 1) {
                    this.f73371e.e(i12);
                }
            }
            int i15 = iF - iC;
            this.f73372f.b(this.f73373g - ((long) i15), i15, this.f73376j);
            this.f73372f.c(i12, this.f73377k);
            iE = i11;
        }
        if (!this.f73376j) {
            this.f73370d.a(bArrD, iE, iF);
        }
        this.f73372f.a(bArrD, iE, iF);
        u uVar3 = this.f73371e;
        if (uVar3 != null) {
            uVar3.a(bArrD, iE, iF);
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73377k = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73374h = dVar.b();
        g9.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.f73375i = e0VarTrack;
        this.f73372f = new b(e0VarTrack);
        k0 k0Var = this.f73367a;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        com.google.android.exoplayer2.util.x.a(this.f73369c);
        this.f73370d.c();
        b bVar = this.f73372f;
        if (bVar != null) {
            bVar.d();
        }
        u uVar = this.f73371e;
        if (uVar != null) {
            uVar.d();
        }
        this.f73373g = 0L;
        this.f73377k = C.TIME_UNSET;
    }
}
