package s3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements m {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final float[] f75080m = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f75081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f75082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75083c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w f75086f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f75087g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f75088h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f75089i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private s0 f75090j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f75091k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean[] f75084d = new boolean[4];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f75085e = new a(128);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f75092l = C.TIME_UNSET;

    private static final class a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f75093f = {0, 0, 1};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f75094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75095b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f75096c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f75097d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f75098e;

        public a(int i11) {
            this.f75098e = new byte[i11];
        }

        public void a(byte[] bArr, int i11, int i12) {
            if (this.f75094a) {
                int i13 = i12 - i11;
                byte[] bArr2 = this.f75098e;
                int length = bArr2.length;
                int i14 = this.f75096c;
                if (length < i14 + i13) {
                    this.f75098e = Arrays.copyOf(bArr2, (i14 + i13) * 2);
                }
                System.arraycopy(bArr, i11, this.f75098e, this.f75096c, i13);
                this.f75096c += i13;
            }
        }

        public boolean b(int i11, int i12) {
            int i13 = this.f75095b;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i11 == 179 || i11 == 181) {
                                this.f75096c -= i12;
                                this.f75094a = false;
                                return true;
                            }
                        } else if ((i11 & 240) != 32) {
                            androidx.media3.common.util.u.h("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f75097d = this.f75096c;
                            this.f75095b = 4;
                        }
                    } else if (i11 > 31) {
                        androidx.media3.common.util.u.h("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f75095b = 3;
                    }
                } else if (i11 != 181) {
                    androidx.media3.common.util.u.h("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f75095b = 2;
                }
            } else if (i11 == 176) {
                this.f75095b = 1;
                this.f75094a = true;
            }
            byte[] bArr = f75093f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f75094a = false;
            this.f75096c = 0;
            this.f75095b = 0;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s0 f75099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f75100b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f75101c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f75102d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f75103e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f75104f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f75105g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f75106h;

        public b(s0 s0Var) {
            this.f75099a = s0Var;
        }

        public void a(byte[] bArr, int i11, int i12) {
            if (this.f75101c) {
                int i13 = this.f75104f;
                int i14 = (i11 + 1) - i13;
                if (i14 >= i12) {
                    this.f75104f = i13 + (i12 - i11);
                } else {
                    this.f75102d = ((bArr[i14] & 192) >> 6) == 0;
                    this.f75101c = false;
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
            androidx.media3.common.util.a.g(this.f75106h != C.TIME_UNSET);
            if (this.f75103e == 182 && z10 && this.f75100b) {
                this.f75099a.d(this.f75106h, this.f75102d ? 1 : 0, (int) (j11 - this.f75105g), i11, null);
            }
            if (this.f75103e != 179) {
                this.f75105g = j11;
            }
        }

        public void c(int i11, long j11) {
            this.f75103e = i11;
            this.f75102d = false;
            this.f75100b = i11 == 182 || i11 == 179;
            this.f75101c = i11 == 182;
            this.f75104f = 0;
            this.f75106h = j11;
        }

        public void d() {
            this.f75100b = false;
            this.f75101c = false;
            this.f75102d = false;
            this.f75103e = -1;
        }
    }

    o(n0 n0Var, String str) {
        this.f75081a = n0Var;
        this.f75082b = str;
        if (n0Var != null) {
            this.f75086f = new w(178, 128);
            this.f75083c = new androidx.media3.common.util.j0();
        } else {
            this.f75086f = null;
            this.f75083c = null;
        }
    }

    private static androidx.media3.common.r e(a aVar, int i11, String str, String str2) {
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f75098e, aVar.f75096c);
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(bArrCopyOf);
        i0Var.s(i11);
        i0Var.s(4);
        i0Var.q();
        i0Var.r(8);
        if (i0Var.g()) {
            i0Var.r(4);
            i0Var.r(3);
        }
        int iH = i0Var.h(4);
        float f11 = 1.0f;
        if (iH == 15) {
            int iH2 = i0Var.h(8);
            int iH3 = i0Var.h(8);
            if (iH3 == 0) {
                androidx.media3.common.util.u.h("H263Reader", "Invalid aspect ratio");
            } else {
                f11 = iH2 / iH3;
            }
        } else {
            float[] fArr = f75080m;
            if (iH < fArr.length) {
                f11 = fArr[iH];
            } else {
                androidx.media3.common.util.u.h("H263Reader", "Invalid aspect ratio");
            }
        }
        if (i0Var.g()) {
            i0Var.r(2);
            i0Var.r(1);
            if (i0Var.g()) {
                i0Var.r(15);
                i0Var.q();
                i0Var.r(15);
                i0Var.q();
                i0Var.r(15);
                i0Var.q();
                i0Var.r(3);
                i0Var.r(11);
                i0Var.q();
                i0Var.r(15);
                i0Var.q();
            }
        }
        if (i0Var.h(2) != 0) {
            androidx.media3.common.util.u.h("H263Reader", "Unhandled video object layer shape");
        }
        i0Var.q();
        int iH4 = i0Var.h(16);
        i0Var.q();
        if (i0Var.g()) {
            if (iH4 == 0) {
                androidx.media3.common.util.u.h("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i12 = 0;
                for (int i13 = iH4 - 1; i13 > 0; i13 >>= 1) {
                    i12++;
                }
                i0Var.r(i12);
            }
        }
        i0Var.q();
        int iH5 = i0Var.h(13);
        i0Var.q();
        int iH6 = i0Var.h(13);
        i0Var.q();
        i0Var.q();
        return new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_MP4V).B0(iH5).d0(iH6).q0(f11).g0(Collections.singletonList(bArrCopyOf)).N();
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f75087g);
        androidx.media3.common.util.a.i(this.f75090j);
        int iF = j0Var.f();
        int iG = j0Var.g();
        byte[] bArrE = j0Var.e();
        this.f75088h += (long) j0Var.a();
        this.f75090j.b(j0Var, j0Var.a());
        while (true) {
            int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f75084d);
            if (iE == iG) {
                break;
            }
            int i11 = iE + 3;
            int i12 = j0Var.e()[i11] & 255;
            int i13 = iE - iF;
            int i14 = 0;
            if (!this.f75091k) {
                if (i13 > 0) {
                    this.f75085e.a(bArrE, iF, iE);
                }
                if (this.f75085e.b(i12, i13 < 0 ? -i13 : 0)) {
                    s0 s0Var = this.f75090j;
                    a aVar = this.f75085e;
                    s0Var.c(e(aVar, aVar.f75097d, (String) androidx.media3.common.util.a.e(this.f75089i), this.f75082b));
                    this.f75091k = true;
                }
            }
            this.f75087g.a(bArrE, iF, iE);
            w wVar = this.f75086f;
            if (wVar != null) {
                if (i13 > 0) {
                    wVar.a(bArrE, iF, iE);
                } else {
                    i14 = -i13;
                }
                if (this.f75086f.b(i14)) {
                    w wVar2 = this.f75086f;
                    ((androidx.media3.common.util.j0) a1.i(this.f75083c)).U(this.f75086f.f75262d, androidx.media3.container.g.L(wVar2.f75262d, wVar2.f75263e));
                    ((n0) a1.i(this.f75081a)).a(this.f75092l, this.f75083c);
                }
                if (i12 == 178 && j0Var.e()[iE + 2] == 1) {
                    this.f75086f.e(i12);
                }
            }
            int i15 = iG - iE;
            this.f75087g.b(this.f75088h - ((long) i15), i15, this.f75091k);
            this.f75087g.c(i12, this.f75092l);
            iF = i11;
        }
        if (!this.f75091k) {
            this.f75085e.a(bArrE, iF, iG);
        }
        this.f75087g.a(bArrE, iF, iG);
        w wVar3 = this.f75086f;
        if (wVar3 != null) {
            wVar3.a(bArrE, iF, iG);
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75092l = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
        androidx.media3.common.util.a.i(this.f75087g);
        if (z10) {
            this.f75087g.b(this.f75088h, 0, this.f75091k);
            this.f75087g.d();
        }
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f75089i = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 2);
        this.f75090j = s0VarTrack;
        this.f75087g = new b(s0VarTrack);
        n0 n0Var = this.f75081a;
        if (n0Var != null) {
            n0Var.b(tVar, dVar);
        }
    }

    @Override // s3.m
    public void seek() {
        androidx.media3.container.g.c(this.f75084d);
        this.f75085e.c();
        b bVar = this.f75087g;
        if (bVar != null) {
            bVar.d();
        }
        w wVar = this.f75086f;
        if (wVar != null) {
            wVar.d();
        }
        this.f75088h = 0L;
        this.f75092l = C.TIME_UNSET;
    }
}
