package s3;

import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Collections;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements m {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final double[] f75054r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f75055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s0 f75056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n0 f75057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f75058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w f75060f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean[] f75061g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f75062h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f75063i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f75064j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f75065k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f75066l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f75067m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f75068n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f75069o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f75070p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f75071q;

    private static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final byte[] f75072e = {0, 0, 1};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f75073a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f75074b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f75075c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public byte[] f75076d;

        public a(int i11) {
            this.f75076d = new byte[i11];
        }

        public void a(byte[] bArr, int i11, int i12) {
            if (this.f75073a) {
                int i13 = i12 - i11;
                byte[] bArr2 = this.f75076d;
                int length = bArr2.length;
                int i14 = this.f75074b;
                if (length < i14 + i13) {
                    this.f75076d = Arrays.copyOf(bArr2, (i14 + i13) * 2);
                }
                System.arraycopy(bArr, i11, this.f75076d, this.f75074b, i13);
                this.f75074b += i13;
            }
        }

        public boolean b(int i11, int i12) {
            if (this.f75073a) {
                int i13 = this.f75074b - i12;
                this.f75074b = i13;
                if (this.f75075c != 0 || i11 != 181) {
                    this.f75073a = false;
                    return true;
                }
                this.f75075c = i13;
            } else if (i11 == 179) {
                this.f75073a = true;
            }
            byte[] bArr = f75072e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f75073a = false;
            this.f75074b = 0;
            this.f75075c = 0;
        }
    }

    public n(String str) {
        this(null, str);
    }

    n(n0 n0Var, String str) {
        this.f75057c = n0Var;
        this.f75058d = str;
        this.f75061g = new boolean[4];
        this.f75062h = new a(128);
        if (n0Var != null) {
            this.f75060f = new w(178, 128);
            this.f75059e = new androidx.media3.common.util.j0();
        } else {
            this.f75060f = null;
            this.f75059e = null;
        }
        this.f75067m = C.TIME_UNSET;
        this.f75069o = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0077  */
    /* JADX WARN: Code duplicated, block: B:16:0x007c  */
    /* JADX WARN: Code duplicated, block: B:18:0x008b  */
    /* JADX WARN: Code duplicated, block: B:20:0x009c  */
    private static Pair e(a aVar, String str, String str2) {
        float f11;
        int i11;
        float f12;
        int i12;
        long j11;
        double[] dArr;
        double d11;
        int i13;
        int i14;
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f75076d, aVar.f75074b);
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
                androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_MPEG2).B0(i16).d0(i17).q0(f12).g0(Collections.singletonList(bArrCopyOf)).N();
                i12 = (bArrCopyOf[7] & 15) - 1;
                if (i12 >= 0) {
                    dArr = f75054r;
                    if (i12 < dArr.length) {
                        d11 = dArr[i12];
                        byte b12 = bArrCopyOf[aVar.f75075c + 9];
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
                return Pair.create(rVarN, Long.valueOf(j11));
            }
            f11 = i17 * 16;
            i11 = i16 * 9;
        }
        f12 = f11 / i11;
        androidx.media3.common.r rVarN2 = new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_MPEG2).B0(i16).d0(i17).q0(f12).g0(Collections.singletonList(bArrCopyOf)).N();
        i12 = (bArrCopyOf[7] & 15) - 1;
        if (i12 >= 0) {
            dArr = f75054r;
            if (i12 < dArr.length) {
                d11 = dArr[i12];
                byte b13 = bArrCopyOf[aVar.f75075c + 9];
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
        return Pair.create(rVarN2, Long.valueOf(j11));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0114  */
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
    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        boolean z10;
        int i11;
        androidx.media3.common.util.a.i(this.f75056b);
        int iF = j0Var.f();
        int iG = j0Var.g();
        byte[] bArrE = j0Var.e();
        this.f75063i += (long) j0Var.a();
        this.f75056b.b(j0Var, j0Var.a());
        while (true) {
            int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f75061g);
            if (iE == iG) {
                break;
            }
            int i12 = iE + 3;
            int i13 = j0Var.e()[i12] & 255;
            int i14 = iE - iF;
            if (!this.f75065k) {
                if (i14 > 0) {
                    this.f75062h.a(bArrE, iF, iE);
                }
                if (this.f75062h.b(i13, i14 < 0 ? -i14 : 0)) {
                    Pair pairE = e(this.f75062h, (String) androidx.media3.common.util.a.e(this.f75055a), this.f75058d);
                    this.f75056b.c((androidx.media3.common.r) pairE.first);
                    this.f75066l = ((Long) pairE.second).longValue();
                    this.f75065k = true;
                }
            }
            w wVar = this.f75060f;
            if (wVar != null) {
                if (i14 > 0) {
                    wVar.a(bArrE, iF, iE);
                    i11 = 0;
                } else {
                    i11 = -i14;
                }
                if (this.f75060f.b(i11)) {
                    w wVar2 = this.f75060f;
                    ((androidx.media3.common.util.j0) a1.i(this.f75059e)).U(this.f75060f.f75262d, androidx.media3.container.g.L(wVar2.f75262d, wVar2.f75263e));
                    ((n0) a1.i(this.f75057c)).a(this.f75069o, this.f75059e);
                }
                if (i13 == 178 && j0Var.e()[iE + 2] == 1) {
                    this.f75060f.e(i13);
                }
            }
            if (i13 == 0 || i13 == 179) {
                int i15 = iG - iE;
                if (this.f75071q && this.f75065k) {
                    long j11 = this.f75069o;
                    if (j11 != C.TIME_UNSET) {
                        this.f75056b.d(j11, this.f75070p ? 1 : 0, ((int) (this.f75063i - this.f75068n)) - i15, i15, null);
                    }
                }
                if (!this.f75064j || this.f75071q) {
                    this.f75068n = this.f75063i - ((long) i15);
                    long j12 = this.f75067m;
                    if (j12 == C.TIME_UNSET) {
                        long j13 = this.f75069o;
                        j12 = j13 != C.TIME_UNSET ? j13 + this.f75066l : -9223372036854775807L;
                    }
                    this.f75069o = j12;
                    this.f75070p = false;
                    this.f75067m = C.TIME_UNSET;
                    z10 = true;
                    this.f75064j = true;
                } else {
                    z10 = true;
                }
                this.f75071q = i13 == 0 ? z10 : false;
            } else if (i13 == 184) {
                this.f75070p = true;
            }
            iF = i12;
        }
        if (!this.f75065k) {
            this.f75062h.a(bArrE, iF, iG);
        }
        w wVar3 = this.f75060f;
        if (wVar3 != null) {
            wVar3.a(bArrE, iF, iG);
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75067m = j11;
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
    @Override // s3.m
    public void c(boolean z10) {
        androidx.media3.common.util.a.i(this.f75056b);
        if (z10) {
            boolean z11 = this.f75070p;
            this.f75056b.d(this.f75069o, z11 ? 1 : 0, (int) (this.f75063i - this.f75068n), 0, null);
        }
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f75055a = dVar.b();
        this.f75056b = tVar.track(dVar.c(), 2);
        n0 n0Var = this.f75057c;
        if (n0Var != null) {
            n0Var.b(tVar, dVar);
        }
    }

    @Override // s3.m
    public void seek() {
        androidx.media3.container.g.c(this.f75061g);
        this.f75062h.c();
        w wVar = this.f75060f;
        if (wVar != null) {
            wVar.d();
        }
        this.f75063i = 0L;
        this.f75064j = false;
        this.f75067m = C.TIME_UNSET;
        this.f75069o = C.TIME_UNSET;
    }
}
