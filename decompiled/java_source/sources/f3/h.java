package f3;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import l2.e0;
import l2.l0;
import l2.m0;
import l2.q0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public class h implements l2.r {
    public static final l2.x M = new l2.x() { // from class: f3.f
        @Override // l2.x
        public /* synthetic */ l2.x a(i3.s.a aVar) {
            return l2.w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ l2.x b(int i11) {
            return l2.w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ l2.r[] c(Uri uri, Map map) {
            return l2.w.a(this, uri, map);
        }

        @Override // l2.x
        public final l2.r[] createExtractors() {
            return h.s();
        }

        @Override // l2.x
        public /* synthetic */ l2.x d(boolean z10) {
            return l2.w.c(this, z10);
        }
    };
    private static final byte[] N = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final androidx.media3.common.r O = new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_EMSG).N();
    private long A;
    private long B;
    private b C;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private boolean H;
    private l2.t I;
    private s0[] J;
    private s0[] K;
    private boolean L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i3.s.a f62201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f62202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f62203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f62204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray f62205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j0 f62206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j0 f62207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j0 f62208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final byte[] f62209i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final j0 f62210j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final p0 f62211k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final w2.c f62212l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j0 f62213m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ArrayDeque f62214n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ArrayDeque f62215o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.media3.container.i f62216p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final s0 f62217q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ImmutableList f62218r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f62219s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f62220t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f62221u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f62222v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private j0 f62223w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f62224x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f62225y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f62226z;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f62227a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f62228b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f62229c;

        public a(long j11, boolean z10, int i11) {
            this.f62227a = j11;
            this.f62228b = z10;
            this.f62229c = i11;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s0 f62230a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public w f62233d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c f62234e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f62235f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f62236g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f62237h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f62238i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final String f62239j;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f62242m;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final v f62231b = new v();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final j0 f62232c = new j0();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final j0 f62240k = new j0(1);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final j0 f62241l = new j0();

        public b(s0 s0Var, w wVar, c cVar, String str) {
            this.f62230a = s0Var;
            this.f62233d = wVar;
            this.f62234e = cVar;
            this.f62239j = str;
            j(wVar, cVar);
        }

        public int c() {
            int i11;
            if (this.f62242m) {
                i11 = this.f62231b.f62318k[this.f62235f] ? 1 : 0;
            } else {
                i11 = this.f62233d.f62332g[this.f62235f];
            }
            return g() != null ? i11 | 1073741824 : i11;
        }

        public long d() {
            return !this.f62242m ? this.f62233d.f62328c[this.f62235f] : this.f62231b.f62314g[this.f62237h];
        }

        public long e() {
            return !this.f62242m ? this.f62233d.f62331f[this.f62235f] : this.f62231b.c(this.f62235f);
        }

        public int f() {
            return !this.f62242m ? this.f62233d.f62329d[this.f62235f] : this.f62231b.f62316i[this.f62235f];
        }

        public u g() {
            if (!this.f62242m) {
                return null;
            }
            int i11 = ((c) a1.i(this.f62231b.f62308a)).f62188a;
            u uVarB = this.f62231b.f62321n;
            if (uVarB == null) {
                uVarB = this.f62233d.f62326a.b(i11);
            }
            if (uVarB == null || !uVarB.f62303a) {
                return null;
            }
            return uVarB;
        }

        public boolean h() {
            this.f62235f++;
            if (!this.f62242m) {
                return false;
            }
            int i11 = this.f62236g + 1;
            this.f62236g = i11;
            int[] iArr = this.f62231b.f62315h;
            int i12 = this.f62237h;
            if (i11 != iArr[i12]) {
                return true;
            }
            this.f62237h = i12 + 1;
            this.f62236g = 0;
            return false;
        }

        public int i(int i11, int i12) {
            j0 j0Var;
            u uVarG = g();
            if (uVarG == null) {
                return 0;
            }
            int length = uVarG.f62306d;
            if (length != 0) {
                j0Var = this.f62231b.f62322o;
            } else {
                byte[] bArr = (byte[]) a1.i(uVarG.f62307e);
                this.f62241l.U(bArr, bArr.length);
                j0 j0Var2 = this.f62241l;
                length = bArr.length;
                j0Var = j0Var2;
            }
            boolean zG = this.f62231b.g(this.f62235f);
            boolean z10 = zG || i12 != 0;
            this.f62240k.e()[0] = (byte) ((z10 ? 128 : 0) | length);
            this.f62240k.W(0);
            this.f62230a.a(this.f62240k, 1, 1);
            this.f62230a.a(j0Var, length, 1);
            if (!z10) {
                return length + 1;
            }
            if (!zG) {
                this.f62232c.S(8);
                byte[] bArrE = this.f62232c.e();
                bArrE[0] = 0;
                bArrE[1] = 1;
                bArrE[2] = (byte) ((i12 >> 8) & 255);
                bArrE[3] = (byte) (i12 & 255);
                bArrE[4] = (byte) ((i11 >> 24) & 255);
                bArrE[5] = (byte) ((i11 >> 16) & 255);
                bArrE[6] = (byte) ((i11 >> 8) & 255);
                bArrE[7] = (byte) (i11 & 255);
                this.f62230a.a(this.f62232c, 8, 1);
                return length + 9;
            }
            j0 j0Var3 = this.f62231b.f62322o;
            int iP = j0Var3.P();
            j0Var3.X(-2);
            int i13 = (iP * 6) + 2;
            if (i12 != 0) {
                this.f62232c.S(i13);
                byte[] bArrE2 = this.f62232c.e();
                j0Var3.l(bArrE2, 0, i13);
                int i14 = (((bArrE2[2] & 255) << 8) | (bArrE2[3] & 255)) + i12;
                bArrE2[2] = (byte) ((i14 >> 8) & 255);
                bArrE2[3] = (byte) (i14 & 255);
                j0Var3 = this.f62232c;
            }
            this.f62230a.a(j0Var3, i13, 1);
            return length + 1 + i13;
        }

        public void j(w wVar, c cVar) {
            this.f62233d = wVar;
            this.f62234e = cVar;
            this.f62230a.c(wVar.f62326a.f62297g.b().U(this.f62239j).N());
            k();
        }

        public void k() {
            this.f62231b.f();
            this.f62235f = 0;
            this.f62237h = 0;
            this.f62236g = 0;
            this.f62238i = 0;
            this.f62242m = false;
        }

        public void l(long j11) {
            int i11 = this.f62235f;
            while (true) {
                v vVar = this.f62231b;
                if (i11 >= vVar.f62313f || vVar.c(i11) > j11) {
                    return;
                }
                if (this.f62231b.f62318k[i11]) {
                    this.f62238i = i11;
                }
                i11++;
            }
        }

        public void m() {
            u uVarG = g();
            if (uVarG == null) {
                return;
            }
            j0 j0Var = this.f62231b.f62322o;
            int i11 = uVarG.f62306d;
            if (i11 != 0) {
                j0Var.X(i11);
            }
            if (this.f62231b.g(this.f62235f)) {
                j0Var.X(j0Var.P() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            u uVarB = this.f62233d.f62326a.b(((c) a1.i(this.f62231b.f62308a)).f62188a);
            this.f62230a.c(this.f62233d.f62326a.f62297g.b().U(this.f62239j).Y(drmInitData.copyWithSchemeType(uVarB != null ? uVarB.f62304b : null)).N());
        }
    }

    @Deprecated
    public h() {
        this(i3.s.a.f64923a, 32, null, null, ImmutableList.of(), null);
    }

    public h(i3.s.a aVar, int i11) {
        this(aVar, i11, null, null, ImmutableList.of(), null);
    }

    public h(i3.s.a aVar, int i11, p0 p0Var, t tVar, List list, s0 s0Var) {
        this.f62201a = aVar;
        this.f62202b = i11;
        this.f62211k = p0Var;
        this.f62203c = tVar;
        this.f62204d = Collections.unmodifiableList(list);
        this.f62217q = s0Var;
        this.f62212l = new w2.c();
        this.f62213m = new j0(16);
        this.f62206f = new j0(androidx.media3.container.g.f10593a);
        this.f62207g = new j0(6);
        this.f62208h = new j0();
        byte[] bArr = new byte[16];
        this.f62209i = bArr;
        this.f62210j = new j0(bArr);
        this.f62214n = new ArrayDeque();
        this.f62215o = new ArrayDeque();
        this.f62205e = new SparseArray();
        this.f62218r = ImmutableList.of();
        this.A = C.TIME_UNSET;
        this.f62226z = C.TIME_UNSET;
        this.B = C.TIME_UNSET;
        this.I = l2.t.f68683n1;
        this.J = new s0[0];
        this.K = new s0[0];
        this.f62216p = new androidx.media3.container.i(new androidx.media3.container.i.b() { // from class: f3.g
            @Override // androidx.media3.container.i.b
            public final void a(long j11, j0 j0Var) {
                this.f62200a.r(j11, j0Var);
            }
        });
    }

    private static long A(j0 j0Var) {
        j0Var.W(8);
        return f3.b.p(j0Var.q()) == 0 ? j0Var.J() : j0Var.O();
    }

    private static void B(androidx.media3.container.d.b bVar, SparseArray sparseArray, boolean z10, int i11, byte[] bArr) throws ParserException {
        int size = bVar.f10586d.size();
        for (int i12 = 0; i12 < size; i12++) {
            androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) bVar.f10586d.get(i12);
            if (bVar2.f10583a == 1953653094) {
                K(bVar2, sparseArray, z10, i11, bArr);
            }
        }
    }

    private static void C(j0 j0Var, v vVar) throws ParserException {
        j0Var.W(8);
        int iQ = j0Var.q();
        if ((f3.b.o(iQ) & 1) == 1) {
            j0Var.X(8);
        }
        int iL = j0Var.L();
        if (iL == 1) {
            vVar.f62311d += f3.b.p(iQ) == 0 ? j0Var.J() : j0Var.O();
        } else {
            throw ParserException.createForMalformedContainer("Unexpected saio entry count: " + iL, null);
        }
    }

    private static void D(u uVar, j0 j0Var, v vVar) throws ParserException {
        int i11;
        int i12 = uVar.f62306d;
        j0Var.W(8);
        if ((f3.b.o(j0Var.q()) & 1) == 1) {
            j0Var.X(8);
        }
        int iH = j0Var.H();
        int iL = j0Var.L();
        if (iL > vVar.f62313f) {
            throw ParserException.createForMalformedContainer("Saiz sample count " + iL + " is greater than fragment sample count" + vVar.f62313f, null);
        }
        if (iH == 0) {
            boolean[] zArr = vVar.f62320m;
            i11 = 0;
            for (int i13 = 0; i13 < iL; i13++) {
                int iH2 = j0Var.H();
                i11 += iH2;
                zArr[i13] = iH2 > i12;
            }
        } else {
            i11 = iH * iL;
            Arrays.fill(vVar.f62320m, 0, iL, iH > i12);
        }
        Arrays.fill(vVar.f62320m, iL, vVar.f62313f, false);
        if (i11 > 0) {
            vVar.d(i11);
        }
    }

    private static void E(androidx.media3.container.d.b bVar, String str, v vVar) throws ParserException {
        byte[] bArr = null;
        j0 j0Var = null;
        j0 j0Var2 = null;
        for (int i11 = 0; i11 < bVar.f10585c.size(); i11++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) bVar.f10585c.get(i11);
            j0 j0Var3 = cVar.f10587b;
            int i12 = cVar.f10583a;
            if (i12 == 1935828848) {
                j0Var3.W(12);
                if (j0Var3.q() == 1936025959) {
                    j0Var = j0Var3;
                }
            } else if (i12 == 1936158820) {
                j0Var3.W(12);
                if (j0Var3.q() == 1936025959) {
                    j0Var2 = j0Var3;
                }
            }
        }
        if (j0Var == null || j0Var2 == null) {
            return;
        }
        j0Var.W(8);
        int iP = f3.b.p(j0Var.q());
        j0Var.X(4);
        if (iP == 1) {
            j0Var.X(4);
        }
        if (j0Var.q() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
        }
        j0Var2.W(8);
        int iP2 = f3.b.p(j0Var2.q());
        j0Var2.X(4);
        if (iP2 == 1) {
            if (j0Var2.J() == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
            }
        } else if (iP2 >= 2) {
            j0Var2.X(4);
        }
        if (j0Var2.J() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        j0Var2.X(1);
        int iH = j0Var2.H();
        int i13 = (iH & 240) >> 4;
        int i14 = iH & 15;
        boolean z10 = j0Var2.H() == 1;
        if (z10) {
            int iH2 = j0Var2.H();
            byte[] bArr2 = new byte[16];
            j0Var2.l(bArr2, 0, 16);
            if (iH2 == 0) {
                int iH3 = j0Var2.H();
                bArr = new byte[iH3];
                j0Var2.l(bArr, 0, iH3);
            }
            vVar.f62319l = true;
            vVar.f62321n = new u(z10, str, iH2, bArr2, i13, i14, bArr);
        }
    }

    private static void F(j0 j0Var, int i11, v vVar) throws ParserException {
        j0Var.W(i11 + 8);
        int iO = f3.b.o(j0Var.q());
        if ((iO & 1) != 0) {
            throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z10 = (iO & 2) != 0;
        int iL = j0Var.L();
        if (iL == 0) {
            Arrays.fill(vVar.f62320m, 0, vVar.f62313f, false);
            return;
        }
        if (iL == vVar.f62313f) {
            Arrays.fill(vVar.f62320m, 0, iL, z10);
            vVar.d(j0Var.a());
            vVar.a(j0Var);
        } else {
            throw ParserException.createForMalformedContainer("Senc sample count " + iL + " is different from fragment sample count" + vVar.f62313f, null);
        }
    }

    private static void G(j0 j0Var, v vVar) throws ParserException {
        F(j0Var, 0, vVar);
    }

    private static Pair H(j0 j0Var, long j11) throws ParserException {
        long jO;
        long jO2;
        j0Var.W(8);
        int iP = f3.b.p(j0Var.q());
        j0Var.X(4);
        long J = j0Var.J();
        if (iP == 0) {
            jO = j0Var.J();
            jO2 = j0Var.J();
        } else {
            jO = j0Var.O();
            jO2 = j0Var.O();
        }
        long j12 = jO;
        long j13 = j11 + jO2;
        long jE1 = a1.e1(j12, 1000000L, J);
        j0Var.X(2);
        int iP2 = j0Var.P();
        int[] iArr = new int[iP2];
        long[] jArr = new long[iP2];
        long[] jArr2 = new long[iP2];
        long[] jArr3 = new long[iP2];
        long j14 = jE1;
        int i11 = 0;
        long j15 = j12;
        while (i11 < iP2) {
            int iQ = j0Var.q();
            if ((iQ & Integer.MIN_VALUE) != 0) {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long J2 = j0Var.J();
            iArr[i11] = iQ & Integer.MAX_VALUE;
            jArr[i11] = j13;
            jArr3[i11] = j14;
            long j16 = j15 + J2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i12 = iP2;
            int[] iArr2 = iArr;
            long jE2 = a1.e1(j16, 1000000L, J);
            jArr4[i11] = jE2 - jArr5[i11];
            j0Var.X(4);
            j13 += (long) iArr2[i11];
            i11++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iP2 = i12;
            j15 = j16;
            j14 = jE2;
        }
        return Pair.create(Long.valueOf(jE1), new l2.h(iArr, jArr, jArr2, jArr3));
    }

    private static long I(j0 j0Var) {
        j0Var.W(8);
        return f3.b.p(j0Var.q()) == 1 ? j0Var.O() : j0Var.J();
    }

    private static b J(j0 j0Var, SparseArray sparseArray, boolean z10) {
        j0Var.W(8);
        int iO = f3.b.o(j0Var.q());
        b bVar = (b) (z10 ? sparseArray.valueAt(0) : sparseArray.get(j0Var.q()));
        if (bVar == null) {
            return null;
        }
        if ((iO & 1) != 0) {
            long jO = j0Var.O();
            v vVar = bVar.f62231b;
            vVar.f62310c = jO;
            vVar.f62311d = jO;
        }
        c cVar = bVar.f62234e;
        bVar.f62231b.f62308a = new c((iO & 2) != 0 ? j0Var.q() - 1 : cVar.f62188a, (iO & 8) != 0 ? j0Var.q() : cVar.f62189b, (iO & 16) != 0 ? j0Var.q() : cVar.f62190c, (iO & 32) != 0 ? j0Var.q() : cVar.f62191d);
        return bVar;
    }

    private static void K(androidx.media3.container.d.b bVar, SparseArray sparseArray, boolean z10, int i11, byte[] bArr) throws ParserException {
        b bVarJ = J(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1952868452))).f10587b, sparseArray, z10);
        if (bVarJ == null) {
            return;
        }
        v vVar = bVarJ.f62231b;
        long j11 = vVar.f62324q;
        boolean z11 = vVar.f62325r;
        bVarJ.k();
        bVarJ.f62242m = true;
        androidx.media3.container.d.c cVarE = bVar.e(1952867444);
        if (cVarE == null || (i11 & 2) != 0) {
            vVar.f62324q = j11;
            vVar.f62325r = z11;
        } else {
            vVar.f62324q = I(cVarE.f10587b);
            vVar.f62325r = true;
        }
        N(bVar, bVarJ, i11);
        u uVarB = bVarJ.f62233d.f62326a.b(((c) androidx.media3.common.util.a.e(vVar.f62308a)).f62188a);
        androidx.media3.container.d.c cVarE2 = bVar.e(1935763834);
        if (cVarE2 != null) {
            D((u) androidx.media3.common.util.a.e(uVarB), cVarE2.f10587b, vVar);
        }
        androidx.media3.container.d.c cVarE3 = bVar.e(1935763823);
        if (cVarE3 != null) {
            C(cVarE3.f10587b, vVar);
        }
        androidx.media3.container.d.c cVarE4 = bVar.e(1936027235);
        if (cVarE4 != null) {
            G(cVarE4.f10587b, vVar);
        }
        E(bVar, uVarB != null ? uVarB.f62304b : null, vVar);
        int size = bVar.f10585c.size();
        for (int i12 = 0; i12 < size; i12++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) bVar.f10585c.get(i12);
            if (cVar.f10583a == 1970628964) {
                O(cVar.f10587b, vVar, bArr);
            }
        }
    }

    private static Pair L(j0 j0Var) {
        j0Var.W(12);
        return Pair.create(Integer.valueOf(j0Var.q()), new c(j0Var.q() - 1, j0Var.q(), j0Var.q(), j0Var.q()));
    }

    private static int M(b bVar, int i11, int i12, j0 j0Var, int i13) throws ParserException {
        int iQ;
        b bVar2 = bVar;
        j0Var.W(8);
        int iO = f3.b.o(j0Var.q());
        t tVar = bVar2.f62233d.f62326a;
        v vVar = bVar2.f62231b;
        c cVar = (c) a1.i(vVar.f62308a);
        vVar.f62315h[i11] = j0Var.L();
        long[] jArr = vVar.f62314g;
        long j11 = vVar.f62310c;
        jArr[i11] = j11;
        if ((iO & 1) != 0) {
            jArr[i11] = j11 + ((long) j0Var.q());
        }
        boolean z10 = (iO & 4) != 0;
        int iQ2 = cVar.f62191d;
        if (z10) {
            iQ2 = j0Var.q();
        }
        boolean z11 = (iO & 256) != 0;
        boolean z12 = (iO & 512) != 0;
        boolean z13 = (iO & 1024) != 0;
        boolean z14 = (iO & 2048) != 0;
        long j12 = q(tVar) ? ((long[]) a1.i(tVar.f62300j))[0] : 0L;
        int[] iArr = vVar.f62316i;
        long[] jArr2 = vVar.f62317j;
        boolean[] zArr = vVar.f62318k;
        int i14 = iQ2;
        boolean z15 = tVar.f62292b == 2 && (i12 & 1) != 0;
        int i15 = i13 + vVar.f62315h[i11];
        boolean z16 = z15;
        long j13 = tVar.f62293c;
        long j14 = vVar.f62324q;
        int i16 = i13;
        while (i16 < i15) {
            int i17 = i(z11 ? j0Var.q() : cVar.f62189b);
            int i18 = i(z12 ? j0Var.q() : cVar.f62190c);
            if (z13) {
                iQ = j0Var.q();
            } else {
                iQ = (i16 == 0 && z10) ? i14 : cVar.f62191d;
            }
            long jE1 = a1.e1((((long) (z14 ? j0Var.q() : 0)) + j14) - j12, 1000000L, j13);
            jArr2[i16] = jE1;
            if (!vVar.f62325r) {
                jArr2[i16] = jE1 + bVar2.f62233d.f62333h;
            }
            iArr[i16] = i18;
            zArr[i16] = ((iQ >> 16) & 1) == 0 && (!z16 || i16 == 0);
            j14 += (long) i17;
            i16++;
            bVar2 = bVar;
            z11 = z11;
            z10 = z10;
            z14 = z14;
            z12 = z12;
            z13 = z13;
        }
        vVar.f62324q = j14;
        return i15;
    }

    private static void N(androidx.media3.container.d.b bVar, b bVar2, int i11) throws ParserException {
        List list = bVar.f10585c;
        int size = list.size();
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < size; i14++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) list.get(i14);
            if (cVar.f10583a == 1953658222) {
                j0 j0Var = cVar.f10587b;
                j0Var.W(12);
                int iL = j0Var.L();
                if (iL > 0) {
                    i13 += iL;
                    i12++;
                }
            }
        }
        bVar2.f62237h = 0;
        bVar2.f62236g = 0;
        bVar2.f62235f = 0;
        bVar2.f62231b.e(i12, i13);
        int i15 = 0;
        int iM = 0;
        for (int i16 = 0; i16 < size; i16++) {
            androidx.media3.container.d.c cVar2 = (androidx.media3.container.d.c) list.get(i16);
            if (cVar2.f10583a == 1953658222) {
                iM = M(bVar2, i15, i11, cVar2.f10587b, iM);
                i15++;
            }
        }
    }

    private static void O(j0 j0Var, v vVar, byte[] bArr) throws ParserException {
        j0Var.W(8);
        j0Var.l(bArr, 0, 16);
        if (Arrays.equals(bArr, N)) {
            F(j0Var, 16, vVar);
        }
    }

    private void P(long j11) throws ParserException {
        while (!this.f62214n.isEmpty() && ((androidx.media3.container.d.b) this.f62214n.peek()).f10584b == j11) {
            u((androidx.media3.container.d.b) this.f62214n.pop());
        }
        k();
    }

    private boolean Q(l2.s sVar) throws ParserException {
        if (this.f62222v == 0) {
            if (!sVar.readFully(this.f62213m.e(), 0, 8, true)) {
                return false;
            }
            this.f62222v = 8;
            this.f62213m.W(0);
            this.f62221u = this.f62213m.J();
            this.f62220t = this.f62213m.q();
        }
        long j11 = this.f62221u;
        if (j11 == 1) {
            sVar.readFully(this.f62213m.e(), 8, 8);
            this.f62222v += 8;
            this.f62221u = this.f62213m.O();
        } else if (j11 == 0) {
            long length = sVar.getLength();
            if (length == -1 && !this.f62214n.isEmpty()) {
                length = ((androidx.media3.container.d.b) this.f62214n.peek()).f10584b;
            }
            if (length != -1) {
                this.f62221u = (length - sVar.getPosition()) + ((long) this.f62222v);
            }
        }
        if (this.f62221u < this.f62222v) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        long position = sVar.getPosition() - ((long) this.f62222v);
        int i11 = this.f62220t;
        if ((i11 == 1836019558 || i11 == 1835295092) && !this.L) {
            this.I.f(new m0.b(this.A, position));
            this.L = true;
        }
        if (this.f62220t == 1836019558) {
            int size = this.f62205e.size();
            for (int i12 = 0; i12 < size; i12++) {
                v vVar = ((b) this.f62205e.valueAt(i12)).f62231b;
                vVar.f62309b = position;
                vVar.f62311d = position;
                vVar.f62310c = position;
            }
        }
        int i13 = this.f62220t;
        if (i13 == 1835295092) {
            this.C = null;
            this.f62224x = position + this.f62221u;
            this.f62219s = 2;
            return true;
        }
        if (U(i13)) {
            long position2 = (sVar.getPosition() + this.f62221u) - 8;
            this.f62214n.push(new androidx.media3.container.d.b(this.f62220t, position2));
            if (this.f62221u == this.f62222v) {
                P(position2);
            } else {
                k();
            }
        } else if (V(this.f62220t)) {
            if (this.f62222v != 8) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom defines extended atom size (unsupported).");
            }
            if (this.f62221u > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom with length > 2147483647 (unsupported).");
            }
            j0 j0Var = new j0((int) this.f62221u);
            System.arraycopy(this.f62213m.e(), 0, j0Var.e(), 0, 8);
            this.f62223w = j0Var;
            this.f62219s = 1;
        } else {
            if (this.f62221u > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.f62223w = null;
            this.f62219s = 1;
        }
        return true;
    }

    private void R(l2.s sVar) throws ParserException {
        int i11 = (int) (this.f62221u - ((long) this.f62222v));
        j0 j0Var = this.f62223w;
        if (j0Var != null) {
            sVar.readFully(j0Var.e(), 8, i11);
            w(new androidx.media3.container.d.c(this.f62220t, j0Var), sVar.getPosition());
        } else {
            sVar.skipFully(i11);
        }
        P(sVar.getPosition());
    }

    private void S(l2.s sVar) throws ParserException {
        int size = this.f62205e.size();
        long j11 = Long.MAX_VALUE;
        b bVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            v vVar = ((b) this.f62205e.valueAt(i11)).f62231b;
            if (vVar.f62323p) {
                long j12 = vVar.f62311d;
                if (j12 < j11) {
                    bVar = (b) this.f62205e.valueAt(i11);
                    j11 = j12;
                }
            }
        }
        if (bVar == null) {
            this.f62219s = 3;
            return;
        }
        int position = (int) (j11 - sVar.getPosition());
        if (position < 0) {
            throw ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
        }
        sVar.skipFully(position);
        bVar.f62231b.b(sVar);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0114  */
    private boolean T(l2.s sVar) throws ParserException {
        int iE;
        int iO;
        b bVarN = this.C;
        if (bVarN == null) {
            bVarN = n(this.f62205e);
            if (bVarN == null) {
                int position = (int) (this.f62224x - sVar.getPosition());
                if (position < 0) {
                    throw ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
                }
                sVar.skipFully(position);
                k();
                return false;
            }
            int iD = (int) (bVarN.d() - sVar.getPosition());
            if (iD < 0) {
                androidx.media3.common.util.u.h("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                iD = 0;
            }
            sVar.skipFully(iD);
            this.C = bVarN;
        }
        if (this.f62219s == 3) {
            this.D = bVarN.f();
            this.G = !h(bVarN.f62233d.f62326a.f62297g);
            if (bVarN.f62235f < bVarN.f62238i) {
                sVar.skipFully(this.D);
                bVarN.m();
                if (!bVarN.h()) {
                    this.C = null;
                }
                this.f62219s = 3;
                return true;
            }
            if (bVarN.f62233d.f62326a.f62298h == 1) {
                this.D -= 8;
                sVar.skipFully(8);
            }
            if ("audio/ac4".equals(bVarN.f62233d.f62326a.f62297g.f10161o)) {
                this.E = bVarN.i(this.D, 7);
                l2.c.a(this.D, this.f62210j);
                bVarN.f62230a.b(this.f62210j, 7);
                this.E += 7;
            } else {
                this.E = bVarN.i(this.D, 0);
            }
            this.D += this.E;
            this.f62219s = 4;
            this.F = 0;
        }
        t tVar = bVarN.f62233d.f62326a;
        s0 s0Var = bVarN.f62230a;
        long jE = bVarN.e();
        p0 p0Var = this.f62211k;
        if (p0Var != null) {
            jE = p0Var.a(jE);
        }
        long j11 = jE;
        if (tVar.f62301k == 0) {
            while (true) {
                int i11 = this.E;
                int i12 = this.D;
                if (i11 >= i12) {
                    break;
                }
                this.E += s0Var.e(sVar, i12 - i11, false);
            }
        } else {
            byte[] bArrE = this.f62207g.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i13 = 4 - tVar.f62301k;
            while (this.E < this.D) {
                int i14 = this.F;
                if (i14 == 0) {
                    if (this.K.length > 0 || !this.G) {
                        iO = androidx.media3.container.g.o(tVar.f62297g);
                        if (tVar.f62301k + iO > this.D - this.E) {
                            iO = 0;
                        }
                    } else {
                        iO = 0;
                    }
                    sVar.readFully(bArrE, i13, tVar.f62301k + iO);
                    this.f62207g.W(0);
                    int iQ = this.f62207g.q();
                    if (iQ < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.F = iQ - iO;
                    this.f62206f.W(0);
                    s0Var.b(this.f62206f, 4);
                    this.E += 4;
                    this.D += i13;
                    this.H = this.K.length > 0 && iO > 0 && androidx.media3.container.g.n(tVar.f62297g, bArrE[4]);
                    s0Var.b(this.f62207g, iO);
                    this.E += iO;
                    if (iO > 0 && !this.G && androidx.media3.container.g.k(bArrE, 4, iO, tVar.f62297g)) {
                        this.G = true;
                    }
                } else {
                    if (this.H) {
                        this.f62208h.S(i14);
                        sVar.readFully(this.f62208h.e(), 0, this.F);
                        s0Var.b(this.f62208h, this.F);
                        iE = this.F;
                        int iL = androidx.media3.container.g.L(this.f62208h.e(), this.f62208h.g());
                        this.f62208h.W(0);
                        this.f62208h.V(iL);
                        if (tVar.f62297g.f10163q != -1) {
                            int iF = this.f62216p.f();
                            int i15 = tVar.f62297g.f10163q;
                            if (iF != i15) {
                                this.f62216p.g(i15);
                            }
                        } else if (this.f62216p.f() != 0) {
                            this.f62216p.g(0);
                        }
                        this.f62216p.a(j11, this.f62208h);
                        if ((bVarN.c() & 4) != 0) {
                            this.f62216p.d();
                        }
                    } else {
                        iE = s0Var.e(sVar, i14, false);
                    }
                    this.E += iE;
                    this.F -= iE;
                }
            }
        }
        int iC = bVarN.c();
        if (!this.G) {
            iC |= 67108864;
        }
        int i16 = iC;
        u uVarG = bVarN.g();
        s0Var.d(j11, i16, this.D, 0, uVarG != null ? uVarG.f62305c : null);
        z(j11);
        if (!bVarN.h()) {
            this.C = null;
        }
        this.f62219s = 3;
        return true;
    }

    private static boolean U(int i11) {
        return i11 == 1836019574 || i11 == 1953653099 || i11 == 1835297121 || i11 == 1835626086 || i11 == 1937007212 || i11 == 1836019558 || i11 == 1953653094 || i11 == 1836475768 || i11 == 1701082227;
    }

    private static boolean V(int i11) {
        return i11 == 1751411826 || i11 == 1835296868 || i11 == 1836476516 || i11 == 1936286840 || i11 == 1937011556 || i11 == 1937011827 || i11 == 1668576371 || i11 == 1937011555 || i11 == 1937011578 || i11 == 1937013298 || i11 == 1937007471 || i11 == 1668232756 || i11 == 1937011571 || i11 == 1952867444 || i11 == 1952868452 || i11 == 1953196132 || i11 == 1953654136 || i11 == 1953658222 || i11 == 1886614376 || i11 == 1935763834 || i11 == 1935763823 || i11 == 1936027235 || i11 == 1970628964 || i11 == 1935828848 || i11 == 1936158820 || i11 == 1701606260 || i11 == 1835362404 || i11 == 1701671783;
    }

    private boolean h(androidx.media3.common.r rVar) {
        if (Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H264)) {
            return (this.f62202b & 64) != 0;
        }
        return Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H265) && (this.f62202b & 128) != 0;
    }

    private static int i(int i11) throws ParserException {
        if (i11 >= 0) {
            return i11;
        }
        throw ParserException.createForMalformedContainer("Unexpected negative value: " + i11, null);
    }

    public static int j(int i11) {
        int i12 = (i11 & 1) != 0 ? 64 : 0;
        return (i11 & 2) != 0 ? i12 | 128 : i12;
    }

    private void k() {
        this.f62219s = 0;
        this.f62222v = 0;
    }

    private c l(SparseArray sparseArray, int i11) {
        return sparseArray.size() == 1 ? (c) sparseArray.valueAt(0) : (c) androidx.media3.common.util.a.e((c) sparseArray.get(i11));
    }

    private static DrmInitData m(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < size; i11++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) list.get(i11);
            if (cVar.f10583a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrE = cVar.f10587b.e();
                UUID uuidF = p.f(bArrE);
                if (uuidF == null) {
                    androidx.media3.common.util.u.h("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidF, MimeTypes.VIDEO_MP4, bArrE));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static b n(SparseArray sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j11 = Long.MAX_VALUE;
        for (int i11 = 0; i11 < size; i11++) {
            b bVar2 = (b) sparseArray.valueAt(i11);
            if ((bVar2.f62242m || bVar2.f62235f != bVar2.f62233d.f62327b) && (!bVar2.f62242m || bVar2.f62237h != bVar2.f62231b.f62312e)) {
                long jD = bVar2.d();
                if (jD < j11) {
                    bVar = bVar2;
                    j11 = jD;
                }
            }
        }
        return bVar;
    }

    private void p() {
        int i11;
        s0[] s0VarArr = new s0[2];
        this.J = s0VarArr;
        s0 s0Var = this.f62217q;
        int i12 = 0;
        if (s0Var != null) {
            s0VarArr[0] = s0Var;
            i11 = 1;
        } else {
            i11 = 0;
        }
        int i13 = 100;
        if ((this.f62202b & 4) != 0) {
            s0VarArr[i11] = this.I.track(100, 5);
            i13 = 101;
            i11++;
        }
        s0[] s0VarArr2 = (s0[]) a1.X0(this.J, i11);
        this.J = s0VarArr2;
        for (s0 s0Var2 : s0VarArr2) {
            s0Var2.c(O);
        }
        this.K = new s0[this.f62204d.size()];
        while (i12 < this.K.length) {
            s0 s0VarTrack = this.I.track(i13, 3);
            s0VarTrack.c((androidx.media3.common.r) this.f62204d.get(i12));
            this.K[i12] = s0VarTrack;
            i12++;
            i13++;
        }
    }

    private static boolean q(t tVar) {
        long[] jArr = tVar.f62299i;
        if (jArr == null || jArr.length != 1 || tVar.f62300j == null) {
            return false;
        }
        long j11 = jArr[0];
        return j11 == 0 || a1.e1(j11, 1000000L, tVar.f62294d) + a1.e1(tVar.f62300j[0], 1000000L, tVar.f62293c) >= tVar.f62295e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(long j11, j0 j0Var) {
        l2.g.a(j11, j0Var, this.K);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l2.r[] s() {
        return new l2.r[]{new h(i3.s.a.f64923a, 32)};
    }

    private void u(androidx.media3.container.d.b bVar) throws ParserException {
        int i11 = bVar.f10583a;
        if (i11 == 1836019574) {
            y(bVar);
        } else if (i11 == 1836019558) {
            x(bVar);
        } else {
            if (this.f62214n.isEmpty()) {
                return;
            }
            ((androidx.media3.container.d.b) this.f62214n.peek()).b(bVar);
        }
    }

    private void v(j0 j0Var) {
        long jE1;
        String str;
        long jE2;
        String str2;
        long J;
        long jA;
        if (this.J.length == 0) {
            return;
        }
        j0Var.W(8);
        int iP = f3.b.p(j0Var.q());
        if (iP == 0) {
            String str3 = (String) androidx.media3.common.util.a.e(j0Var.B());
            String str4 = (String) androidx.media3.common.util.a.e(j0Var.B());
            long J2 = j0Var.J();
            jE1 = a1.e1(j0Var.J(), 1000000L, J2);
            long j11 = this.B;
            long j12 = j11 != C.TIME_UNSET ? j11 + jE1 : -9223372036854775807L;
            str = str3;
            jE2 = a1.e1(j0Var.J(), 1000L, J2);
            str2 = str4;
            J = j0Var.J();
            jA = j12;
        } else {
            if (iP != 1) {
                androidx.media3.common.util.u.h("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iP);
                return;
            }
            long J3 = j0Var.J();
            jA = a1.e1(j0Var.O(), 1000000L, J3);
            long jE3 = a1.e1(j0Var.J(), 1000L, J3);
            long J4 = j0Var.J();
            str = (String) androidx.media3.common.util.a.e(j0Var.B());
            jE2 = jE3;
            J = J4;
            str2 = (String) androidx.media3.common.util.a.e(j0Var.B());
            jE1 = -9223372036854775807L;
        }
        byte[] bArr = new byte[j0Var.a()];
        j0Var.l(bArr, 0, j0Var.a());
        j0 j0Var2 = new j0(this.f62212l.a(new w2.a(str, str2, jE2, J, bArr)));
        int iA = j0Var2.a();
        for (s0 s0Var : this.J) {
            j0Var2.W(0);
            s0Var.b(j0Var2, iA);
        }
        if (jA == C.TIME_UNSET) {
            this.f62215o.addLast(new a(jE1, true, iA));
            this.f62225y += iA;
            return;
        }
        if (!this.f62215o.isEmpty()) {
            this.f62215o.addLast(new a(jA, false, iA));
            this.f62225y += iA;
            return;
        }
        p0 p0Var = this.f62211k;
        if (p0Var != null && !p0Var.g()) {
            this.f62215o.addLast(new a(jA, false, iA));
            this.f62225y += iA;
            return;
        }
        p0 p0Var2 = this.f62211k;
        if (p0Var2 != null) {
            jA = p0Var2.a(jA);
        }
        for (s0 s0Var2 : this.J) {
            s0Var2.d(jA, 1, iA, 0, null);
        }
    }

    private void w(androidx.media3.container.d.c cVar, long j11) throws ParserException {
        if (!this.f62214n.isEmpty()) {
            ((androidx.media3.container.d.b) this.f62214n.peek()).c(cVar);
            return;
        }
        int i11 = cVar.f10583a;
        if (i11 != 1936286840) {
            if (i11 == 1701671783) {
                v(cVar.f10587b);
            }
        } else {
            Pair pairH = H(cVar.f10587b, j11);
            this.B = ((Long) pairH.first).longValue();
            this.I.f((m0) pairH.second);
            this.L = true;
        }
    }

    private void x(androidx.media3.container.d.b bVar) throws ParserException {
        B(bVar, this.f62205e, this.f62203c != null, this.f62202b, this.f62209i);
        DrmInitData drmInitDataM = m(bVar.f10585c);
        if (drmInitDataM != null) {
            int size = this.f62205e.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((b) this.f62205e.valueAt(i11)).n(drmInitDataM);
            }
        }
        if (this.f62226z != C.TIME_UNSET) {
            int size2 = this.f62205e.size();
            for (int i12 = 0; i12 < size2; i12++) {
                ((b) this.f62205e.valueAt(i12)).l(this.f62226z);
            }
            this.f62226z = C.TIME_UNSET;
        }
    }

    private void y(androidx.media3.container.d.b bVar) {
        int i11 = 0;
        androidx.media3.common.util.a.h(this.f62203c == null, "Unexpected moov box.");
        DrmInitData drmInitDataM = m(bVar.f10585c);
        androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar.d(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = bVar2.f10585c.size();
        long jA = -9223372036854775807L;
        for (int i12 = 0; i12 < size; i12++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) bVar2.f10585c.get(i12);
            int i13 = cVar.f10583a;
            if (i13 == 1953654136) {
                Pair pairL = L(cVar.f10587b);
                sparseArray.put(((Integer) pairL.first).intValue(), (c) pairL.second);
            } else if (i13 == 1835362404) {
                jA = A(cVar.f10587b);
            }
        }
        List listG = f3.b.G(bVar, new e0(), jA, drmInitDataM, (this.f62202b & 16) != 0, false, new com.google.common.base.f() { // from class: f3.e
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return this.f62199a.t((t) obj);
            }
        });
        int size2 = listG.size();
        if (this.f62205e.size() != 0) {
            androidx.media3.common.util.a.g(this.f62205e.size() == size2);
            while (i11 < size2) {
                w wVar = (w) listG.get(i11);
                t tVar = wVar.f62326a;
                ((b) this.f62205e.get(tVar.f62291a)).j(wVar, l(sparseArray, tVar.f62291a));
                i11++;
            }
            return;
        }
        String strB = k.b(listG);
        while (i11 < size2) {
            w wVar2 = (w) listG.get(i11);
            t tVar2 = wVar2.f62326a;
            s0 s0VarTrack = this.I.track(i11, tVar2.f62292b);
            s0VarTrack.f(tVar2.f62295e);
            this.f62205e.put(tVar2.f62291a, new b(s0VarTrack, wVar2, l(sparseArray, tVar2.f62291a), strB));
            this.A = Math.max(this.A, tVar2.f62295e);
            i11++;
        }
        this.I.endTracks();
    }

    private void z(long j11) {
        while (!this.f62215o.isEmpty()) {
            a aVar = (a) this.f62215o.removeFirst();
            this.f62225y -= aVar.f62229c;
            long jA = aVar.f62227a;
            if (aVar.f62228b) {
                jA += j11;
            }
            p0 p0Var = this.f62211k;
            if (p0Var != null) {
                jA = p0Var.a(jA);
            }
            for (s0 s0Var : this.J) {
                s0Var.d(jA, 1, aVar.f62229c, this.f62225y, null);
            }
        }
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        if ((this.f62202b & 32) == 0) {
            tVar = new i3.t(tVar, this.f62201a);
        }
        this.I = tVar;
        k();
        p();
        t tVar2 = this.f62203c;
        if (tVar2 != null) {
            this.f62205e.put(0, new b(this.I.track(0, tVar2.f62292b), new w(this.f62203c, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0), k.a(this.f62203c.f62297g)));
            this.I.endTracks();
        }
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        while (true) {
            int i11 = this.f62219s;
            if (i11 != 0) {
                if (i11 == 1) {
                    R(sVar);
                } else if (i11 == 2) {
                    S(sVar);
                } else if (T(sVar)) {
                    return 0;
                }
            } else if (!Q(sVar)) {
                this.f62216p.d();
                return -1;
            }
        }
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        q0 q0VarB = s.b(sVar);
        this.f62218r = q0VarB != null ? ImmutableList.of(q0VarB) : ImmutableList.of();
        return q0VarB == null;
    }

    @Override // l2.r
    public /* synthetic */ l2.r e() {
        return l2.q.b(this);
    }

    @Override // l2.r
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public ImmutableList f() {
        return this.f62218r;
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        int size = this.f62205e.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((b) this.f62205e.valueAt(i11)).k();
        }
        this.f62215o.clear();
        this.f62225y = 0;
        this.f62216p.b();
        this.f62226z = j12;
        this.f62214n.clear();
        k();
    }

    protected t t(t tVar) {
        return tVar;
    }
}
