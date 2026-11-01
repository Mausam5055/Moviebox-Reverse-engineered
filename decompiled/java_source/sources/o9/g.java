package o9;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.a0;
import g9.b0;
import g9.e0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class g implements g9.l {
    public static final g9.r I = new g9.r() { // from class: o9.e
        @Override // g9.r
        public /* synthetic */ g9.l[] c(Uri uri, Map map) {
            return g9.q.a(this, uri, map);
        }

        @Override // g9.r
        public final g9.l[] createExtractors() {
            return g.k();
        }
    };
    private static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final o1 K = new o1.b().e0(MimeTypes.APPLICATION_EMSG).E();
    private int A;
    private int B;
    private int C;
    private boolean D;
    private g9.n E;
    private e0[] F;
    private e0[] G;
    private boolean H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f70792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f70793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f70794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray f70795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d0 f70796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d0 f70797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d0 f70798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final byte[] f70799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d0 f70800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final l0 f70801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.google.android.exoplayer2.metadata.emsg.b f70802k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final d0 f70803l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final ArrayDeque f70804m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ArrayDeque f70805n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e0 f70806o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70807p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f70808q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f70809r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f70810s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private d0 f70811t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f70812u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f70813v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f70814w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f70815x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f70816y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private b f70817z;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f70818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f70819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70820c;

        public a(long j11, boolean z10, int i11) {
            this.f70818a = j11;
            this.f70819b = z10;
            this.f70820c = i11;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final e0 f70821a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public r f70824d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c f70825e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f70826f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f70827g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f70828h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f70829i;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f70832l;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final q f70822b = new q();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final d0 f70823c = new d0();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final d0 f70830j = new d0(1);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final d0 f70831k = new d0();

        public b(e0 e0Var, r rVar, c cVar) {
            this.f70821a = e0Var;
            this.f70824d = rVar;
            this.f70825e = cVar;
            j(rVar, cVar);
        }

        public int c() {
            int i11;
            if (this.f70832l) {
                i11 = this.f70822b.f70902k[this.f70826f] ? 1 : 0;
            } else {
                i11 = this.f70824d.f70916g[this.f70826f];
            }
            return g() != null ? i11 | 1073741824 : i11;
        }

        public long d() {
            return !this.f70832l ? this.f70824d.f70912c[this.f70826f] : this.f70822b.f70898g[this.f70828h];
        }

        public long e() {
            return !this.f70832l ? this.f70824d.f70915f[this.f70826f] : this.f70822b.c(this.f70826f);
        }

        public int f() {
            return !this.f70832l ? this.f70824d.f70913d[this.f70826f] : this.f70822b.f70900i[this.f70826f];
        }

        public p g() {
            if (!this.f70832l) {
                return null;
            }
            int i11 = ((c) p0.j(this.f70822b.f70892a)).f70781a;
            p pVarA = this.f70822b.f70905n;
            if (pVarA == null) {
                pVarA = this.f70824d.f70910a.a(i11);
            }
            if (pVarA == null || !pVarA.f70887a) {
                return null;
            }
            return pVarA;
        }

        public boolean h() {
            this.f70826f++;
            if (!this.f70832l) {
                return false;
            }
            int i11 = this.f70827g + 1;
            this.f70827g = i11;
            int[] iArr = this.f70822b.f70899h;
            int i12 = this.f70828h;
            if (i11 != iArr[i12]) {
                return true;
            }
            this.f70828h = i12 + 1;
            this.f70827g = 0;
            return false;
        }

        public int i(int i11, int i12) {
            d0 d0Var;
            p pVarG = g();
            if (pVarG == null) {
                return 0;
            }
            int length = pVarG.f70890d;
            if (length != 0) {
                d0Var = this.f70822b.f70906o;
            } else {
                byte[] bArr = (byte[]) p0.j(pVarG.f70891e);
                this.f70831k.N(bArr, bArr.length);
                d0 d0Var2 = this.f70831k;
                length = bArr.length;
                d0Var = d0Var2;
            }
            boolean zG = this.f70822b.g(this.f70826f);
            boolean z10 = zG || i12 != 0;
            this.f70830j.d()[0] = (byte) ((z10 ? 128 : 0) | length);
            this.f70830j.P(0);
            this.f70821a.f(this.f70830j, 1, 1);
            this.f70821a.f(d0Var, length, 1);
            if (!z10) {
                return length + 1;
            }
            if (!zG) {
                this.f70823c.L(8);
                byte[] bArrD = this.f70823c.d();
                bArrD[0] = 0;
                bArrD[1] = 1;
                bArrD[2] = (byte) ((i12 >> 8) & 255);
                bArrD[3] = (byte) (i12 & 255);
                bArrD[4] = (byte) ((i11 >> 24) & 255);
                bArrD[5] = (byte) ((i11 >> 16) & 255);
                bArrD[6] = (byte) ((i11 >> 8) & 255);
                bArrD[7] = (byte) (i11 & 255);
                this.f70821a.f(this.f70823c, 8, 1);
                return length + 9;
            }
            d0 d0Var3 = this.f70822b.f70906o;
            int iJ = d0Var3.J();
            d0Var3.Q(-2);
            int i13 = (iJ * 6) + 2;
            if (i12 != 0) {
                this.f70823c.L(i13);
                byte[] bArrD2 = this.f70823c.d();
                d0Var3.j(bArrD2, 0, i13);
                int i14 = (((bArrD2[2] & 255) << 8) | (bArrD2[3] & 255)) + i12;
                bArrD2[2] = (byte) ((i14 >> 8) & 255);
                bArrD2[3] = (byte) (i14 & 255);
                d0Var3 = this.f70823c;
            }
            this.f70821a.f(d0Var3, i13, 1);
            return length + 1 + i13;
        }

        public void j(r rVar, c cVar) {
            this.f70824d = rVar;
            this.f70825e = cVar;
            this.f70821a.e(rVar.f70910a.f70881f);
            k();
        }

        public void k() {
            this.f70822b.f();
            this.f70826f = 0;
            this.f70828h = 0;
            this.f70827g = 0;
            this.f70829i = 0;
            this.f70832l = false;
        }

        public void l(long j11) {
            int i11 = this.f70826f;
            while (true) {
                q qVar = this.f70822b;
                if (i11 >= qVar.f70897f || qVar.c(i11) >= j11) {
                    return;
                }
                if (this.f70822b.f70902k[i11]) {
                    this.f70829i = i11;
                }
                i11++;
            }
        }

        public void m() {
            p pVarG = g();
            if (pVarG == null) {
                return;
            }
            d0 d0Var = this.f70822b.f70906o;
            int i11 = pVarG.f70890d;
            if (i11 != 0) {
                d0Var.Q(i11);
            }
            if (this.f70822b.g(this.f70826f)) {
                d0Var.Q(d0Var.J() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            p pVarA = this.f70824d.f70910a.a(((c) p0.j(this.f70822b.f70892a)).f70781a);
            this.f70821a.e(this.f70824d.f70910a.f70881f.b().M(drmInitData.copyWithSchemeType(pVarA != null ? pVarA.f70888b : null)).E());
        }
    }

    public g() {
        this(0);
    }

    public g(int i11) {
        this(i11, null);
    }

    public g(int i11, l0 l0Var) {
        this(i11, l0Var, null, Collections.emptyList());
    }

    public g(int i11, l0 l0Var, o oVar) {
        this(i11, l0Var, oVar, Collections.emptyList());
    }

    public g(int i11, l0 l0Var, o oVar, List list) {
        this(i11, l0Var, oVar, list, null);
    }

    public g(int i11, l0 l0Var, o oVar, List list, e0 e0Var) {
        this.f70792a = i11;
        this.f70801j = l0Var;
        this.f70793b = oVar;
        this.f70794c = Collections.unmodifiableList(list);
        this.f70806o = e0Var;
        this.f70802k = new com.google.android.exoplayer2.metadata.emsg.b();
        this.f70803l = new d0(16);
        this.f70796e = new d0(x.f27664a);
        this.f70797f = new d0(5);
        this.f70798g = new d0();
        byte[] bArr = new byte[16];
        this.f70799h = bArr;
        this.f70800i = new d0(bArr);
        this.f70804m = new ArrayDeque();
        this.f70805n = new ArrayDeque();
        this.f70795d = new SparseArray();
        this.f70815x = C.TIME_UNSET;
        this.f70814w = C.TIME_UNSET;
        this.f70816y = C.TIME_UNSET;
        this.E = g9.n.f63453i1;
        this.F = new e0[0];
        this.G = new e0[0];
    }

    private static long A(d0 d0Var) {
        d0Var.P(8);
        return o9.a.c(d0Var.n()) == 1 ? d0Var.I() : d0Var.F();
    }

    private static b B(d0 d0Var, SparseArray sparseArray, boolean z10) {
        d0Var.P(8);
        int iB = o9.a.b(d0Var.n());
        b bVar = (b) (z10 ? sparseArray.valueAt(0) : sparseArray.get(d0Var.n()));
        if (bVar == null) {
            return null;
        }
        if ((iB & 1) != 0) {
            long jI = d0Var.I();
            q qVar = bVar.f70822b;
            qVar.f70894c = jI;
            qVar.f70895d = jI;
        }
        c cVar = bVar.f70825e;
        bVar.f70822b.f70892a = new c((iB & 2) != 0 ? d0Var.n() - 1 : cVar.f70781a, (iB & 8) != 0 ? d0Var.n() : cVar.f70782b, (iB & 16) != 0 ? d0Var.n() : cVar.f70783c, (iB & 32) != 0 ? d0Var.n() : cVar.f70784d);
        return bVar;
    }

    private static void C(o9.a.C0858a c0858a, SparseArray sparseArray, boolean z10, int i11, byte[] bArr) throws ParserException {
        b bVarB = B(((o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a.g(1952868452))).f70751b, sparseArray, z10);
        if (bVarB == null) {
            return;
        }
        q qVar = bVarB.f70822b;
        long j11 = qVar.f70908q;
        boolean z11 = qVar.f70909r;
        bVarB.k();
        bVarB.f70832l = true;
        o9.a.b bVarG = c0858a.g(1952867444);
        if (bVarG == null || (i11 & 2) != 0) {
            qVar.f70908q = j11;
            qVar.f70909r = z11;
        } else {
            qVar.f70908q = A(bVarG.f70751b);
            qVar.f70909r = true;
        }
        F(c0858a, bVarB, i11);
        p pVarA = bVarB.f70824d.f70910a.a(((c) com.google.android.exoplayer2.util.a.e(qVar.f70892a)).f70781a);
        o9.a.b bVarG2 = c0858a.g(1935763834);
        if (bVarG2 != null) {
            v((p) com.google.android.exoplayer2.util.a.e(pVarA), bVarG2.f70751b, qVar);
        }
        o9.a.b bVarG3 = c0858a.g(1935763823);
        if (bVarG3 != null) {
            u(bVarG3.f70751b, qVar);
        }
        o9.a.b bVarG4 = c0858a.g(1936027235);
        if (bVarG4 != null) {
            y(bVarG4.f70751b, qVar);
        }
        w(c0858a, pVarA != null ? pVarA.f70888b : null, qVar);
        int size = c0858a.f70749c.size();
        for (int i12 = 0; i12 < size; i12++) {
            o9.a.b bVar = (o9.a.b) c0858a.f70749c.get(i12);
            if (bVar.f70747a == 1970628964) {
                G(bVar.f70751b, qVar, bArr);
            }
        }
    }

    private static Pair D(d0 d0Var) {
        d0Var.P(12);
        return Pair.create(Integer.valueOf(d0Var.n()), new c(d0Var.n() - 1, d0Var.n(), d0Var.n(), d0Var.n()));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0098  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00db  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:64:0x0111  */
    /* JADX WARN: Code duplicated, block: B:70:0x0126  */
    private static int E(b bVar, int i11, int i12, d0 d0Var, int i13) throws ParserException {
        long j11;
        long j12;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        boolean z10;
        int i14;
        long j13;
        long j14;
        int i15;
        int iN;
        int iN2;
        int iN3;
        int iN4;
        long jN0;
        boolean z11;
        b bVar2 = bVar;
        d0Var.P(8);
        int iB = o9.a.b(d0Var.n());
        o oVar = bVar2.f70824d.f70910a;
        q qVar = bVar2.f70822b;
        c cVar = (c) p0.j(qVar.f70892a);
        qVar.f70899h[i11] = d0Var.H();
        long[] jArr2 = qVar.f70898g;
        long j15 = qVar.f70894c;
        jArr2[i11] = j15;
        if ((iB & 1) != 0) {
            jArr2[i11] = j15 + ((long) d0Var.n());
        }
        boolean z12 = (iB & 4) != 0;
        int iN5 = cVar.f70784d;
        if (z12) {
            iN5 = d0Var.n();
        }
        boolean z13 = (iB & 256) != 0;
        boolean z14 = (iB & 512) != 0;
        boolean z15 = (iB & 1024) != 0;
        boolean z16 = (iB & 2048) != 0;
        long[] jArr3 = oVar.f70883h;
        if (jArr3 != null && jArr3.length == 1) {
            j11 = 0;
            if (jArr3[0] == 0) {
                j12 = ((long[]) p0.j(oVar.f70884i))[0];
            }
            iArr = qVar.f70900i;
            jArr = qVar.f70901j;
            zArr = qVar.f70902k;
            int i16 = iN5;
            if (oVar.f70877b == 2 || (i12 & 1) == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            i14 = i13 + qVar.f70899h[i11];
            boolean z17 = z10;
            j13 = oVar.f70878c;
            j14 = qVar.f70908q;
            i15 = i13;
            while (i15 < i14) {
                if (z13) {
                    iN = d0Var.n();
                } else {
                    iN = cVar.f70782b;
                }
                int iE = e(iN);
                if (z14) {
                    iN2 = d0Var.n();
                } else {
                    iN2 = cVar.f70783c;
                }
                int iE2 = e(iN2);
                if (z15) {
                    iN3 = d0Var.n();
                } else if (i15 == 0 || !z12) {
                    iN3 = cVar.f70784d;
                } else {
                    iN3 = i16;
                }
                if (z16) {
                    iN4 = d0Var.n();
                } else {
                    iN4 = 0;
                }
                jN0 = p0.N0((((long) iN4) + j14) - j12, 1000000L, j13);
                jArr[i15] = jN0;
                if (!qVar.f70909r) {
                    jArr[i15] = jN0 + bVar2.f70824d.f70917h;
                }
                iArr[i15] = iE2;
                if (((iN3 >> 16) & 1) == 0 || (z17 && i15 != 0)) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                zArr[i15] = z11;
                j14 += (long) iE;
                i15++;
                bVar2 = bVar;
                z13 = z13;
                z12 = z12;
                z16 = z16;
                z14 = z14;
                z15 = z15;
            }
            qVar.f70908q = j14;
            return i14;
        }
        j11 = 0;
        j12 = j11;
        iArr = qVar.f70900i;
        jArr = qVar.f70901j;
        zArr = qVar.f70902k;
        int i17 = iN5;
        if (oVar.f70877b == 2) {
            z10 = false;
        } else {
            z10 = false;
        }
        i14 = i13 + qVar.f70899h[i11];
        boolean z18 = z10;
        j13 = oVar.f70878c;
        j14 = qVar.f70908q;
        i15 = i13;
        while (i15 < i14) {
            if (z13) {
                iN = d0Var.n();
            } else {
                iN = cVar.f70782b;
            }
            int iE3 = e(iN);
            if (z14) {
                iN2 = d0Var.n();
            } else {
                iN2 = cVar.f70783c;
            }
            int iE4 = e(iN2);
            if (z15) {
                iN3 = d0Var.n();
            } else if (i15 == 0) {
                iN3 = cVar.f70784d;
            } else {
                iN3 = cVar.f70784d;
            }
            if (z16) {
                iN4 = d0Var.n();
            } else {
                iN4 = 0;
            }
            jN0 = p0.N0((((long) iN4) + j14) - j12, 1000000L, j13);
            jArr[i15] = jN0;
            if (!qVar.f70909r) {
                jArr[i15] = jN0 + bVar2.f70824d.f70917h;
            }
            iArr[i15] = iE4;
            if (((iN3 >> 16) & 1) == 0) {
                z11 = false;
            } else {
                z11 = false;
            }
            zArr[i15] = z11;
            j14 += (long) iE3;
            i15++;
            bVar2 = bVar;
            z13 = z13;
            z12 = z12;
            z16 = z16;
            z14 = z14;
            z15 = z15;
        }
        qVar.f70908q = j14;
        return i14;
    }

    private static void F(o9.a.C0858a c0858a, b bVar, int i11) throws ParserException {
        List list = c0858a.f70749c;
        int size = list.size();
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < size; i14++) {
            o9.a.b bVar2 = (o9.a.b) list.get(i14);
            if (bVar2.f70747a == 1953658222) {
                d0 d0Var = bVar2.f70751b;
                d0Var.P(12);
                int iH = d0Var.H();
                if (iH > 0) {
                    i13 += iH;
                    i12++;
                }
            }
        }
        bVar.f70828h = 0;
        bVar.f70827g = 0;
        bVar.f70826f = 0;
        bVar.f70822b.e(i12, i13);
        int i15 = 0;
        int iE = 0;
        for (int i16 = 0; i16 < size; i16++) {
            o9.a.b bVar3 = (o9.a.b) list.get(i16);
            if (bVar3.f70747a == 1953658222) {
                iE = E(bVar, i15, i11, bVar3.f70751b, iE);
                i15++;
            }
        }
    }

    private static void G(d0 d0Var, q qVar, byte[] bArr) throws ParserException {
        d0Var.P(8);
        d0Var.j(bArr, 0, 16);
        if (Arrays.equals(bArr, J)) {
            x(d0Var, 16, qVar);
        }
    }

    private void H(long j11) throws ParserException {
        while (!this.f70804m.isEmpty() && ((o9.a.C0858a) this.f70804m.peek()).f70748b == j11) {
            m((o9.a.C0858a) this.f70804m.pop());
        }
        f();
    }

    private boolean I(g9.m mVar) throws ParserException {
        if (this.f70810s == 0) {
            if (!mVar.readFully(this.f70803l.d(), 0, 8, true)) {
                return false;
            }
            this.f70810s = 8;
            this.f70803l.P(0);
            this.f70809r = this.f70803l.F();
            this.f70808q = this.f70803l.n();
        }
        long j11 = this.f70809r;
        if (j11 == 1) {
            mVar.readFully(this.f70803l.d(), 8, 8);
            this.f70810s += 8;
            this.f70809r = this.f70803l.I();
        } else if (j11 == 0) {
            long length = mVar.getLength();
            if (length == -1 && !this.f70804m.isEmpty()) {
                length = ((o9.a.C0858a) this.f70804m.peek()).f70748b;
            }
            if (length != -1) {
                this.f70809r = (length - mVar.getPosition()) + ((long) this.f70810s);
            }
        }
        if (this.f70809r < this.f70810s) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        long position = mVar.getPosition() - ((long) this.f70810s);
        int i11 = this.f70808q;
        if ((i11 == 1836019558 || i11 == 1835295092) && !this.H) {
            this.E.d(new b0.b(this.f70815x, position));
            this.H = true;
        }
        if (this.f70808q == 1836019558) {
            int size = this.f70795d.size();
            for (int i12 = 0; i12 < size; i12++) {
                q qVar = ((b) this.f70795d.valueAt(i12)).f70822b;
                qVar.f70893b = position;
                qVar.f70895d = position;
                qVar.f70894c = position;
            }
        }
        int i13 = this.f70808q;
        if (i13 == 1835295092) {
            this.f70817z = null;
            this.f70812u = position + this.f70809r;
            this.f70807p = 2;
            return true;
        }
        if (M(i13)) {
            long position2 = (mVar.getPosition() + this.f70809r) - 8;
            this.f70804m.push(new o9.a.C0858a(this.f70808q, position2));
            if (this.f70809r == this.f70810s) {
                H(position2);
            } else {
                f();
            }
        } else if (N(this.f70808q)) {
            if (this.f70810s != 8) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom defines extended atom size (unsupported).");
            }
            long j12 = this.f70809r;
            if (j12 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom with length > 2147483647 (unsupported).");
            }
            d0 d0Var = new d0((int) j12);
            System.arraycopy(this.f70803l.d(), 0, d0Var.d(), 0, 8);
            this.f70811t = d0Var;
            this.f70807p = 1;
        } else {
            if (this.f70809r > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.f70811t = null;
            this.f70807p = 1;
        }
        return true;
    }

    private void J(g9.m mVar) throws ParserException {
        int i11 = ((int) this.f70809r) - this.f70810s;
        d0 d0Var = this.f70811t;
        if (d0Var != null) {
            mVar.readFully(d0Var.d(), 8, i11);
            o(new o9.a.b(this.f70808q, d0Var), mVar.getPosition());
        } else {
            mVar.skipFully(i11);
        }
        H(mVar.getPosition());
    }

    private void K(g9.m mVar) throws ParserException {
        int size = this.f70795d.size();
        long j11 = Long.MAX_VALUE;
        b bVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            q qVar = ((b) this.f70795d.valueAt(i11)).f70822b;
            if (qVar.f70907p) {
                long j12 = qVar.f70895d;
                if (j12 < j11) {
                    bVar = (b) this.f70795d.valueAt(i11);
                    j11 = j12;
                }
            }
        }
        if (bVar == null) {
            this.f70807p = 3;
            return;
        }
        int position = (int) (j11 - mVar.getPosition());
        if (position < 0) {
            throw ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
        }
        mVar.skipFully(position);
        bVar.f70822b.b(mVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean L(g9.m mVar) throws ParserException {
        int iB;
        b bVarI = this.f70817z;
        Throwable th2 = null;
        if (bVarI == null) {
            bVarI = i(this.f70795d);
            if (bVarI == null) {
                int position = (int) (this.f70812u - mVar.getPosition());
                if (position < 0) {
                    throw ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
                }
                mVar.skipFully(position);
                f();
                return false;
            }
            int iD = (int) (bVarI.d() - mVar.getPosition());
            if (iD < 0) {
                s.i("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                iD = 0;
            }
            mVar.skipFully(iD);
            this.f70817z = bVarI;
        }
        int i11 = 4;
        int i12 = 1;
        if (this.f70807p == 3) {
            int iF = bVarI.f();
            this.A = iF;
            if (bVarI.f70826f < bVarI.f70829i) {
                mVar.skipFully(iF);
                bVarI.m();
                if (!bVarI.h()) {
                    this.f70817z = null;
                }
                this.f70807p = 3;
                return true;
            }
            if (bVarI.f70824d.f70910a.f70882g == 1) {
                this.A = iF - 8;
                mVar.skipFully(8);
            }
            if ("audio/ac4".equals(bVarI.f70824d.f70910a.f70881f.f25496l)) {
                this.B = bVarI.i(this.A, 7);
                com.google.android.exoplayer2.audio.c.a(this.A, this.f70800i);
                bVarI.f70821a.c(this.f70800i, 7);
                this.B += 7;
            } else {
                this.B = bVarI.i(this.A, 0);
            }
            this.A += this.B;
            this.f70807p = 4;
            this.C = 0;
        }
        o oVar = bVarI.f70824d.f70910a;
        e0 e0Var = bVarI.f70821a;
        long jE = bVarI.e();
        l0 l0Var = this.f70801j;
        if (l0Var != null) {
            jE = l0Var.a(jE);
        }
        long j11 = jE;
        if (oVar.f70885j == 0) {
            while (true) {
                int i13 = this.B;
                int i14 = this.A;
                if (i13 >= i14) {
                    break;
                }
                this.B += e0Var.b(mVar, i14 - i13, false);
            }
        } else {
            byte[] bArrD = this.f70797f.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i15 = oVar.f70885j;
            int i16 = i15 + 1;
            int i17 = 4 - i15;
            while (this.B < this.A) {
                int i18 = this.C;
                if (i18 == 0) {
                    mVar.readFully(bArrD, i17, i16);
                    this.f70797f.P(0);
                    int iN = this.f70797f.n();
                    if (iN < i12) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", th2);
                    }
                    this.C = iN - 1;
                    this.f70796e.P(0);
                    e0Var.c(this.f70796e, i11);
                    e0Var.c(this.f70797f, i12);
                    this.D = (this.G.length <= 0 || !x.g(oVar.f70881f.f25496l, bArrD[i11])) ? 0 : i12;
                    this.B += 5;
                    this.A += i17;
                } else {
                    if (this.D) {
                        this.f70798g.L(i18);
                        mVar.readFully(this.f70798g.d(), 0, this.C);
                        e0Var.c(this.f70798g, this.C);
                        iB = this.C;
                        int iQ = x.q(this.f70798g.d(), this.f70798g.f());
                        this.f70798g.P(MimeTypes.VIDEO_H265.equals(oVar.f70881f.f25496l) ? 1 : 0);
                        this.f70798g.O(iQ);
                        g9.c.a(j11, this.f70798g, this.G);
                    } else {
                        iB = e0Var.b(mVar, i18, false);
                    }
                    this.B += iB;
                    this.C -= iB;
                    th2 = null;
                    i11 = 4;
                    i12 = 1;
                }
            }
        }
        int iC = bVarI.c();
        p pVarG = bVarI.g();
        e0Var.d(j11, iC, this.A, 0, pVarG != null ? pVarG.f70889c : null);
        r(j11);
        if (!bVarI.h()) {
            this.f70817z = null;
        }
        this.f70807p = 3;
        return true;
    }

    private static boolean M(int i11) {
        return i11 == 1836019574 || i11 == 1953653099 || i11 == 1835297121 || i11 == 1835626086 || i11 == 1937007212 || i11 == 1836019558 || i11 == 1953653094 || i11 == 1836475768 || i11 == 1701082227;
    }

    private static boolean N(int i11) {
        return i11 == 1751411826 || i11 == 1835296868 || i11 == 1836476516 || i11 == 1936286840 || i11 == 1937011556 || i11 == 1937011827 || i11 == 1668576371 || i11 == 1937011555 || i11 == 1937011578 || i11 == 1937013298 || i11 == 1937007471 || i11 == 1668232756 || i11 == 1937011571 || i11 == 1952867444 || i11 == 1952868452 || i11 == 1953196132 || i11 == 1953654136 || i11 == 1953658222 || i11 == 1886614376 || i11 == 1935763834 || i11 == 1935763823 || i11 == 1936027235 || i11 == 1970628964 || i11 == 1935828848 || i11 == 1936158820 || i11 == 1701606260 || i11 == 1835362404 || i11 == 1701671783;
    }

    private static int e(int i11) throws ParserException {
        if (i11 >= 0) {
            return i11;
        }
        throw ParserException.createForMalformedContainer("Unexpected negative value: " + i11, null);
    }

    private void f() {
        this.f70807p = 0;
        this.f70810s = 0;
    }

    private c g(SparseArray sparseArray, int i11) {
        return sparseArray.size() == 1 ? (c) sparseArray.valueAt(0) : (c) com.google.android.exoplayer2.util.a.e((c) sparseArray.get(i11));
    }

    private static DrmInitData h(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < size; i11++) {
            o9.a.b bVar = (o9.a.b) list.get(i11);
            if (bVar.f70747a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrD = bVar.f70751b.d();
                UUID uuidF = l.f(bArrD);
                if (uuidF == null) {
                    s.i("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidF, MimeTypes.VIDEO_MP4, bArrD));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static b i(SparseArray sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j11 = Long.MAX_VALUE;
        for (int i11 = 0; i11 < size; i11++) {
            b bVar2 = (b) sparseArray.valueAt(i11);
            if ((bVar2.f70832l || bVar2.f70826f != bVar2.f70824d.f70911b) && (!bVar2.f70832l || bVar2.f70828h != bVar2.f70822b.f70896e)) {
                long jD = bVar2.d();
                if (jD < j11) {
                    bVar = bVar2;
                    j11 = jD;
                }
            }
        }
        return bVar;
    }

    private void j() {
        int i11;
        e0[] e0VarArr = new e0[2];
        this.F = e0VarArr;
        e0 e0Var = this.f70806o;
        int i12 = 0;
        if (e0Var != null) {
            e0VarArr[0] = e0Var;
            i11 = 1;
        } else {
            i11 = 0;
        }
        int i13 = 100;
        if ((this.f70792a & 4) != 0) {
            e0VarArr[i11] = this.E.track(100, 5);
            i13 = 101;
            i11++;
        }
        e0[] e0VarArr2 = (e0[]) p0.G0(this.F, i11);
        this.F = e0VarArr2;
        for (e0 e0Var2 : e0VarArr2) {
            e0Var2.e(K);
        }
        this.G = new e0[this.f70794c.size()];
        while (i12 < this.G.length) {
            e0 e0VarTrack = this.E.track(i13, 3);
            e0VarTrack.e((o1) this.f70794c.get(i12));
            this.G[i12] = e0VarTrack;
            i12++;
            i13++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g9.l[] k() {
        return new g9.l[]{new g()};
    }

    private void m(o9.a.C0858a c0858a) throws ParserException {
        int i11 = c0858a.f70747a;
        if (i11 == 1836019574) {
            q(c0858a);
        } else if (i11 == 1836019558) {
            p(c0858a);
        } else {
            if (this.f70804m.isEmpty()) {
                return;
            }
            ((o9.a.C0858a) this.f70804m.peek()).d(c0858a);
        }
    }

    private void n(d0 d0Var) {
        long jN0;
        String str;
        long jN1;
        String str2;
        long jF;
        long jA;
        if (this.F.length == 0) {
            return;
        }
        d0Var.P(8);
        int iC = o9.a.c(d0Var.n());
        if (iC == 0) {
            String str3 = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            String str4 = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            long jF2 = d0Var.F();
            jN0 = p0.N0(d0Var.F(), 1000000L, jF2);
            long j11 = this.f70816y;
            long j12 = j11 != C.TIME_UNSET ? j11 + jN0 : -9223372036854775807L;
            str = str3;
            jN1 = p0.N0(d0Var.F(), 1000L, jF2);
            str2 = str4;
            jF = d0Var.F();
            jA = j12;
        } else {
            if (iC != 1) {
                s.i("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iC);
                return;
            }
            long jF3 = d0Var.F();
            jA = p0.N0(d0Var.I(), 1000000L, jF3);
            long jN2 = p0.N0(d0Var.F(), 1000L, jF3);
            long jF4 = d0Var.F();
            str = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            jN1 = jN2;
            jF = jF4;
            str2 = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            jN0 = -9223372036854775807L;
        }
        byte[] bArr = new byte[d0Var.a()];
        d0Var.j(bArr, 0, d0Var.a());
        d0 d0Var2 = new d0(this.f70802k.a(new EventMessage(str, str2, jN1, jF, bArr)));
        int iA = d0Var2.a();
        for (e0 e0Var : this.F) {
            d0Var2.P(0);
            e0Var.c(d0Var2, iA);
        }
        if (jA == C.TIME_UNSET) {
            this.f70805n.addLast(new a(jN0, true, iA));
            this.f70813v += iA;
            return;
        }
        if (!this.f70805n.isEmpty()) {
            this.f70805n.addLast(new a(jA, false, iA));
            this.f70813v += iA;
            return;
        }
        l0 l0Var = this.f70801j;
        if (l0Var != null) {
            jA = l0Var.a(jA);
        }
        for (e0 e0Var2 : this.F) {
            e0Var2.d(jA, 1, iA, 0, null);
        }
    }

    private void o(o9.a.b bVar, long j11) throws ParserException {
        if (!this.f70804m.isEmpty()) {
            ((o9.a.C0858a) this.f70804m.peek()).e(bVar);
            return;
        }
        int i11 = bVar.f70747a;
        if (i11 != 1936286840) {
            if (i11 == 1701671783) {
                n(bVar.f70751b);
            }
        } else {
            Pair pairZ = z(bVar.f70751b, j11);
            this.f70816y = ((Long) pairZ.first).longValue();
            this.E.d((b0) pairZ.second);
            this.H = true;
        }
    }

    private void p(o9.a.C0858a c0858a) throws ParserException {
        t(c0858a, this.f70795d, this.f70793b != null, this.f70792a, this.f70799h);
        DrmInitData drmInitDataH = h(c0858a.f70749c);
        if (drmInitDataH != null) {
            int size = this.f70795d.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((b) this.f70795d.valueAt(i11)).n(drmInitDataH);
            }
        }
        if (this.f70814w != C.TIME_UNSET) {
            int size2 = this.f70795d.size();
            for (int i12 = 0; i12 < size2; i12++) {
                ((b) this.f70795d.valueAt(i12)).l(this.f70814w);
            }
            this.f70814w = C.TIME_UNSET;
        }
    }

    private void q(o9.a.C0858a c0858a) {
        int i11 = 0;
        com.google.android.exoplayer2.util.a.h(this.f70793b == null, "Unexpected moov box.");
        DrmInitData drmInitDataH = h(c0858a.f70749c);
        o9.a.C0858a c0858a2 = (o9.a.C0858a) com.google.android.exoplayer2.util.a.e(c0858a.f(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = c0858a2.f70749c.size();
        long jS = -9223372036854775807L;
        for (int i12 = 0; i12 < size; i12++) {
            o9.a.b bVar = (o9.a.b) c0858a2.f70749c.get(i12);
            int i13 = bVar.f70747a;
            if (i13 == 1953654136) {
                Pair pairD = D(bVar.f70751b);
                sparseArray.put(((Integer) pairD.first).intValue(), (c) pairD.second);
            } else if (i13 == 1835362404) {
                jS = s(bVar.f70751b);
            }
        }
        List listA = o9.b.A(c0858a, new g9.x(), jS, drmInitDataH, (this.f70792a & 16) != 0, false, new com.google.common.base.f() { // from class: o9.f
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return this.f70791a.l((o) obj);
            }
        });
        int size2 = listA.size();
        if (this.f70795d.size() != 0) {
            com.google.android.exoplayer2.util.a.g(this.f70795d.size() == size2);
            while (i11 < size2) {
                r rVar = (r) listA.get(i11);
                o oVar = rVar.f70910a;
                ((b) this.f70795d.get(oVar.f70876a)).j(rVar, g(sparseArray, oVar.f70876a));
                i11++;
            }
            return;
        }
        while (i11 < size2) {
            r rVar2 = (r) listA.get(i11);
            o oVar2 = rVar2.f70910a;
            this.f70795d.put(oVar2.f70876a, new b(this.E.track(i11, oVar2.f70877b), rVar2, g(sparseArray, oVar2.f70876a)));
            this.f70815x = Math.max(this.f70815x, oVar2.f70880e);
            i11++;
        }
        this.E.endTracks();
    }

    private void r(long j11) {
        while (!this.f70805n.isEmpty()) {
            a aVar = (a) this.f70805n.removeFirst();
            this.f70813v -= aVar.f70820c;
            long jA = aVar.f70818a;
            if (aVar.f70819b) {
                jA += j11;
            }
            l0 l0Var = this.f70801j;
            if (l0Var != null) {
                jA = l0Var.a(jA);
            }
            for (e0 e0Var : this.F) {
                e0Var.d(jA, 1, aVar.f70820c, this.f70813v, null);
            }
        }
    }

    private static long s(d0 d0Var) {
        d0Var.P(8);
        return o9.a.c(d0Var.n()) == 0 ? d0Var.F() : d0Var.I();
    }

    private static void t(o9.a.C0858a c0858a, SparseArray sparseArray, boolean z10, int i11, byte[] bArr) throws ParserException {
        int size = c0858a.f70750d.size();
        for (int i12 = 0; i12 < size; i12++) {
            o9.a.C0858a c0858a2 = (o9.a.C0858a) c0858a.f70750d.get(i12);
            if (c0858a2.f70747a == 1953653094) {
                C(c0858a2, sparseArray, z10, i11, bArr);
            }
        }
    }

    private static void u(d0 d0Var, q qVar) throws ParserException {
        d0Var.P(8);
        int iN = d0Var.n();
        if ((o9.a.b(iN) & 1) == 1) {
            d0Var.Q(8);
        }
        int iH = d0Var.H();
        if (iH == 1) {
            qVar.f70895d += o9.a.c(iN) == 0 ? d0Var.F() : d0Var.I();
        } else {
            throw ParserException.createForMalformedContainer("Unexpected saio entry count: " + iH, null);
        }
    }

    private static void v(p pVar, d0 d0Var, q qVar) throws ParserException {
        int i11;
        int i12 = pVar.f70890d;
        d0Var.P(8);
        if ((o9.a.b(d0Var.n()) & 1) == 1) {
            d0Var.Q(8);
        }
        int iD = d0Var.D();
        int iH = d0Var.H();
        if (iH > qVar.f70897f) {
            throw ParserException.createForMalformedContainer("Saiz sample count " + iH + " is greater than fragment sample count" + qVar.f70897f, null);
        }
        if (iD == 0) {
            boolean[] zArr = qVar.f70904m;
            i11 = 0;
            for (int i13 = 0; i13 < iH; i13++) {
                int iD2 = d0Var.D();
                i11 += iD2;
                zArr[i13] = iD2 > i12;
            }
        } else {
            i11 = iD * iH;
            Arrays.fill(qVar.f70904m, 0, iH, iD > i12);
        }
        Arrays.fill(qVar.f70904m, iH, qVar.f70897f, false);
        if (i11 > 0) {
            qVar.d(i11);
        }
    }

    private static void w(o9.a.C0858a c0858a, String str, q qVar) throws ParserException {
        byte[] bArr = null;
        d0 d0Var = null;
        d0 d0Var2 = null;
        for (int i11 = 0; i11 < c0858a.f70749c.size(); i11++) {
            o9.a.b bVar = (o9.a.b) c0858a.f70749c.get(i11);
            d0 d0Var3 = bVar.f70751b;
            int i12 = bVar.f70747a;
            if (i12 == 1935828848) {
                d0Var3.P(12);
                if (d0Var3.n() == 1936025959) {
                    d0Var = d0Var3;
                }
            } else if (i12 == 1936158820) {
                d0Var3.P(12);
                if (d0Var3.n() == 1936025959) {
                    d0Var2 = d0Var3;
                }
            }
        }
        if (d0Var == null || d0Var2 == null) {
            return;
        }
        d0Var.P(8);
        int iC = o9.a.c(d0Var.n());
        d0Var.Q(4);
        if (iC == 1) {
            d0Var.Q(4);
        }
        if (d0Var.n() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
        }
        d0Var2.P(8);
        int iC2 = o9.a.c(d0Var2.n());
        d0Var2.Q(4);
        if (iC2 == 1) {
            if (d0Var2.F() == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
            }
        } else if (iC2 >= 2) {
            d0Var2.Q(4);
        }
        if (d0Var2.F() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        d0Var2.Q(1);
        int iD = d0Var2.D();
        int i13 = (iD & 240) >> 4;
        int i14 = iD & 15;
        boolean z10 = d0Var2.D() == 1;
        if (z10) {
            int iD2 = d0Var2.D();
            byte[] bArr2 = new byte[16];
            d0Var2.j(bArr2, 0, 16);
            if (iD2 == 0) {
                int iD3 = d0Var2.D();
                bArr = new byte[iD3];
                d0Var2.j(bArr, 0, iD3);
            }
            qVar.f70903l = true;
            qVar.f70905n = new p(z10, str, iD2, bArr2, i13, i14, bArr);
        }
    }

    private static void x(d0 d0Var, int i11, q qVar) throws ParserException {
        d0Var.P(i11 + 8);
        int iB = o9.a.b(d0Var.n());
        if ((iB & 1) != 0) {
            throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z10 = (iB & 2) != 0;
        int iH = d0Var.H();
        if (iH == 0) {
            Arrays.fill(qVar.f70904m, 0, qVar.f70897f, false);
            return;
        }
        if (iH == qVar.f70897f) {
            Arrays.fill(qVar.f70904m, 0, iH, z10);
            qVar.d(d0Var.a());
            qVar.a(d0Var);
        } else {
            throw ParserException.createForMalformedContainer("Senc sample count " + iH + " is different from fragment sample count" + qVar.f70897f, null);
        }
    }

    private static void y(d0 d0Var, q qVar) throws ParserException {
        x(d0Var, 0, qVar);
    }

    private static Pair z(d0 d0Var, long j11) throws ParserException {
        long jI;
        long jI2;
        d0Var.P(8);
        int iC = o9.a.c(d0Var.n());
        d0Var.Q(4);
        long jF = d0Var.F();
        if (iC == 0) {
            jI = d0Var.F();
            jI2 = d0Var.F();
        } else {
            jI = d0Var.I();
            jI2 = d0Var.I();
        }
        long j12 = jI;
        long j13 = j11 + jI2;
        long jN0 = p0.N0(j12, 1000000L, jF);
        d0Var.Q(2);
        int iJ = d0Var.J();
        int[] iArr = new int[iJ];
        long[] jArr = new long[iJ];
        long[] jArr2 = new long[iJ];
        long[] jArr3 = new long[iJ];
        long j14 = jN0;
        int i11 = 0;
        long j15 = j12;
        while (i11 < iJ) {
            int iN = d0Var.n();
            if ((iN & Integer.MIN_VALUE) != 0) {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long jF2 = d0Var.F();
            iArr[i11] = iN & Integer.MAX_VALUE;
            jArr[i11] = j13;
            jArr3[i11] = j14;
            long j16 = j15 + jF2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i12 = iJ;
            int[] iArr2 = iArr;
            long jN1 = p0.N0(j16, 1000000L, jF);
            jArr4[i11] = jN1 - jArr5[i11];
            d0Var.Q(4);
            j13 += (long) iArr2[i11];
            i11++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iJ = i12;
            j15 = j16;
            j14 = jN1;
        }
        return Pair.create(Long.valueOf(jN0), new g9.d(iArr, jArr, jArr2, jArr3));
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        this.E = nVar;
        f();
        j();
        o oVar = this.f70793b;
        if (oVar != null) {
            this.f70795d.put(0, new b(nVar.track(0, oVar.f70877b), new r(this.f70793b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.E.endTracks();
        }
    }

    @Override // g9.l
    public int c(g9.m mVar, a0 a0Var) throws ParserException {
        while (true) {
            int i11 = this.f70807p;
            if (i11 != 0) {
                if (i11 == 1) {
                    J(mVar);
                } else if (i11 == 2) {
                    K(mVar);
                } else if (L(mVar)) {
                    return 0;
                }
            } else if (!I(mVar)) {
                return -1;
            }
        }
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        return n.b(mVar);
    }

    protected o l(o oVar) {
        return oVar;
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        int size = this.f70795d.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((b) this.f70795d.valueAt(i11)).k();
        }
        this.f70805n.clear();
        this.f70813v = 0;
        this.f70814w = j12;
        this.f70804m.clear();
        f();
    }
}
