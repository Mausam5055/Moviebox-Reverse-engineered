package androidx.media3.exoplayer.source;

import androidx.media3.common.DrmInitData;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import java.util.Objects;
import l2.r0;
import l2.s0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class e0 implements s0 {
    private androidx.media3.common.r A;
    private androidx.media3.common.r B;
    private long C;
    private boolean E;
    private long F;
    private boolean G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c0 f12740a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.t f12743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.r.a f12744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f12745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.media3.common.r f12746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DrmSession f12747h;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f12755p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f12756q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f12757r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f12758s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f12762w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f12765z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f12741b = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f12748i = 1000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long[] f12749j = new long[1000];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long[] f12750k = new long[1000];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long[] f12753n = new long[1000];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int[] f12752m = new int[1000];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int[] f12751l = new int[1000];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private s0.a[] f12754o = new s0.a[1000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f12742c = new j0(new androidx.media3.common.util.m() { // from class: androidx.media3.exoplayer.source.d0
        @Override // androidx.media3.common.util.m
        public final void accept(Object obj) {
            e0.O((e0.c) obj);
        }
    });

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f12759t = Long.MIN_VALUE;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f12760u = Long.MIN_VALUE;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f12761v = Long.MIN_VALUE;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f12764y = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f12763x = true;
    private boolean D = true;

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f12766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f12767b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public s0.a f12768c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.r f12769a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.media3.exoplayer.drm.t.b f12770b;

        private c(androidx.media3.common.r rVar, androidx.media3.exoplayer.drm.t.b bVar) {
            this.f12769a = rVar;
            this.f12770b = bVar;
        }
    }

    public interface d {
        void c(androidx.media3.common.r rVar);
    }

    protected e0(androidx.media3.exoplayer.upstream.b bVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar) {
        this.f12743d = tVar;
        this.f12744e = aVar;
        this.f12740a = new c0(bVar);
    }

    private long E(int i11) {
        long jMax = Long.MIN_VALUE;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int iG = G(i11 - 1);
        for (int i12 = 0; i12 < i11; i12++) {
            jMax = Math.max(jMax, this.f12753n[iG]);
            if ((this.f12752m[iG] & 1) != 0) {
                break;
            }
            iG--;
            if (iG == -1) {
                iG = this.f12748i - 1;
            }
        }
        return jMax;
    }

    private int G(int i11) {
        int i12 = this.f12757r + i11;
        int i13 = this.f12748i;
        return i12 < i13 ? i12 : i12 - i13;
    }

    private boolean K() {
        return this.f12758s != this.f12755p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O(c cVar) {
        cVar.f12770b.release();
    }

    private boolean P(int i11) {
        DrmSession drmSession = this.f12747h;
        return drmSession == null || drmSession.getState() == 4 || ((this.f12752m[i11] & 1073741824) == 0 && this.f12747h.b());
    }

    private void R(androidx.media3.common.r rVar, s2 s2Var) {
        androidx.media3.common.r rVar2 = this.f12746g;
        boolean z10 = rVar2 == null;
        DrmInitData drmInitData = rVar2 == null ? null : rVar2.f10165s;
        this.f12746g = rVar;
        DrmInitData drmInitData2 = rVar.f10165s;
        androidx.media3.exoplayer.drm.t tVar = this.f12743d;
        s2Var.f12570b = tVar != null ? rVar.c(tVar.b(rVar)) : rVar;
        s2Var.f12569a = this.f12747h;
        if (this.f12743d == null) {
            return;
        }
        if (z10 || !Objects.equals(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f12747h;
            DrmSession drmSessionA = this.f12743d.a(this.f12744e, rVar);
            this.f12747h = drmSessionA;
            s2Var.f12569a = drmSessionA;
            if (drmSession != null) {
                drmSession.f(this.f12744e);
            }
        }
    }

    private synchronized int S(s2 s2Var, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, b bVar) {
        try {
            decoderInputBuffer.f10919d = false;
            if (!K()) {
                if (!z11 && !this.f12762w) {
                    androidx.media3.common.r rVar = this.B;
                    if (rVar == null || (!z10 && rVar == this.f12746g)) {
                        return -3;
                    }
                    R((androidx.media3.common.r) androidx.media3.common.util.a.e(rVar), s2Var);
                    return -5;
                }
                decoderInputBuffer.setFlags(4);
                decoderInputBuffer.f10920e = Long.MIN_VALUE;
                return -4;
            }
            androidx.media3.common.r rVar2 = ((c) this.f12742c.f(F())).f12769a;
            if (!z10 && rVar2 == this.f12746g) {
                int iG = G(this.f12758s);
                if (!P(iG)) {
                    decoderInputBuffer.f10919d = true;
                    return -3;
                }
                decoderInputBuffer.setFlags(this.f12752m[iG]);
                if (this.f12758s == this.f12755p - 1 && (z11 || this.f12762w)) {
                    decoderInputBuffer.addFlag(ASTNode.DISCARD);
                }
                decoderInputBuffer.f10920e = this.f12753n[iG];
                bVar.f12766a = this.f12751l[iG];
                bVar.f12767b = this.f12750k[iG];
                bVar.f12768c = this.f12754o[iG];
                return -4;
            }
            R(rVar2, s2Var);
            return -5;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void X() {
        DrmSession drmSession = this.f12747h;
        if (drmSession != null) {
            drmSession.f(this.f12744e);
            this.f12747h = null;
            this.f12746g = null;
        }
    }

    private synchronized void a0() {
        this.f12758s = 0;
        this.f12740a.o();
    }

    private synchronized boolean f0(androidx.media3.common.r rVar) {
        try {
            this.f12764y = false;
            if (Objects.equals(rVar, this.B)) {
                return false;
            }
            if (this.f12742c.h() || !((c) this.f12742c.g()).f12769a.equals(rVar)) {
                this.B = rVar;
            } else {
                this.B = ((c) this.f12742c.g()).f12769a;
            }
            boolean z10 = this.D;
            androidx.media3.common.r rVar2 = this.B;
            this.D = z10 & androidx.media3.common.y.a(rVar2.f10161o, rVar2.f10157k);
            this.E = false;
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean i(long j11) {
        if (this.f12755p == 0) {
            return j11 > this.f12760u;
        }
        if (D() >= j11) {
            return false;
        }
        v(this.f12756q + k(j11));
        return true;
    }

    private synchronized void j(long j11, int i11, long j12, int i12, s0.a aVar) {
        try {
            int i13 = this.f12755p;
            if (i13 > 0) {
                int iG = G(i13 - 1);
                androidx.media3.common.util.a.a(this.f12750k[iG] + ((long) this.f12751l[iG]) <= j12);
            }
            this.f12762w = (536870912 & i11) != 0;
            this.f12761v = Math.max(this.f12761v, j11);
            int iG2 = G(this.f12755p);
            this.f12753n[iG2] = j11;
            this.f12750k[iG2] = j12;
            this.f12751l[iG2] = i12;
            this.f12752m[iG2] = i11;
            this.f12754o[iG2] = aVar;
            this.f12749j[iG2] = this.C;
            if (this.f12742c.h() || !((c) this.f12742c.g()).f12769a.equals(this.B)) {
                androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.B);
                androidx.media3.exoplayer.drm.t tVar = this.f12743d;
                this.f12742c.b(J(), new c(rVar, tVar != null ? tVar.d(this.f12744e, rVar) : androidx.media3.exoplayer.drm.t.b.f11613a));
            }
            int i14 = this.f12755p + 1;
            this.f12755p = i14;
            int i15 = this.f12748i;
            if (i14 == i15) {
                int i16 = i15 + 1000;
                long[] jArr = new long[i16];
                long[] jArr2 = new long[i16];
                long[] jArr3 = new long[i16];
                int[] iArr = new int[i16];
                int[] iArr2 = new int[i16];
                s0.a[] aVarArr = new s0.a[i16];
                int i17 = this.f12757r;
                int i18 = i15 - i17;
                System.arraycopy(this.f12750k, i17, jArr2, 0, i18);
                System.arraycopy(this.f12753n, this.f12757r, jArr3, 0, i18);
                System.arraycopy(this.f12752m, this.f12757r, iArr, 0, i18);
                System.arraycopy(this.f12751l, this.f12757r, iArr2, 0, i18);
                System.arraycopy(this.f12754o, this.f12757r, aVarArr, 0, i18);
                System.arraycopy(this.f12749j, this.f12757r, jArr, 0, i18);
                int i19 = this.f12757r;
                System.arraycopy(this.f12750k, 0, jArr2, i18, i19);
                System.arraycopy(this.f12753n, 0, jArr3, i18, i19);
                System.arraycopy(this.f12752m, 0, iArr, i18, i19);
                System.arraycopy(this.f12751l, 0, iArr2, i18, i19);
                System.arraycopy(this.f12754o, 0, aVarArr, i18, i19);
                System.arraycopy(this.f12749j, 0, jArr, i18, i19);
                this.f12750k = jArr2;
                this.f12753n = jArr3;
                this.f12752m = iArr;
                this.f12751l = iArr2;
                this.f12754o = aVarArr;
                this.f12749j = jArr;
                this.f12757r = 0;
                this.f12748i = i16;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private int k(long j11) {
        int i11 = this.f12755p;
        int iG = G(i11 - 1);
        while (i11 > this.f12758s && this.f12753n[iG] >= j11) {
            i11--;
            iG--;
            if (iG == -1) {
                iG = this.f12748i - 1;
            }
        }
        return i11;
    }

    public static e0 l(androidx.media3.exoplayer.upstream.b bVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar) {
        return new e0(bVar, (androidx.media3.exoplayer.drm.t) androidx.media3.common.util.a.e(tVar), (androidx.media3.exoplayer.drm.r.a) androidx.media3.common.util.a.e(aVar));
    }

    public static e0 m(androidx.media3.exoplayer.upstream.b bVar) {
        return new e0(bVar, null, null);
    }

    private synchronized long n(long j11, boolean z10, boolean z11) {
        int i11;
        try {
            int i12 = this.f12755p;
            if (i12 != 0) {
                long[] jArr = this.f12753n;
                int i13 = this.f12757r;
                if (j11 >= jArr[i13]) {
                    if (z11 && (i11 = this.f12758s) != i12) {
                        i12 = i11 + 1;
                    }
                    int iY = y(i13, i12, j11, z10);
                    if (iY == -1) {
                        return -1L;
                    }
                    return q(iY);
                }
            }
            return -1L;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized long o() {
        int i11 = this.f12755p;
        if (i11 == 0) {
            return -1L;
        }
        return q(i11);
    }

    private long q(int i11) {
        this.f12760u = Math.max(this.f12760u, E(i11));
        this.f12755p -= i11;
        int i12 = this.f12756q + i11;
        this.f12756q = i12;
        int i13 = this.f12757r + i11;
        this.f12757r = i13;
        int i14 = this.f12748i;
        if (i13 >= i14) {
            this.f12757r = i13 - i14;
        }
        int i15 = this.f12758s - i11;
        this.f12758s = i15;
        if (i15 < 0) {
            this.f12758s = 0;
        }
        this.f12742c.e(i12);
        if (this.f12755p != 0) {
            return this.f12750k[this.f12757r];
        }
        int i16 = this.f12757r;
        if (i16 == 0) {
            i16 = this.f12748i;
        }
        int i17 = i16 - 1;
        return this.f12750k[i17] + ((long) this.f12751l[i17]);
    }

    private long v(int i11) {
        int iJ = J() - i11;
        boolean z10 = false;
        androidx.media3.common.util.a.a(iJ >= 0 && iJ <= this.f12755p - this.f12758s);
        int i12 = this.f12755p - iJ;
        this.f12755p = i12;
        this.f12761v = Math.max(this.f12760u, E(i12));
        if (iJ == 0 && this.f12762w) {
            z10 = true;
        }
        this.f12762w = z10;
        this.f12742c.d(i11);
        int i13 = this.f12755p;
        if (i13 == 0) {
            return 0L;
        }
        int iG = G(i13 - 1);
        return this.f12750k[iG] + ((long) this.f12751l[iG]);
    }

    private int x(int i11, int i12, long j11, boolean z10) {
        for (int i13 = 0; i13 < i12; i13++) {
            if (this.f12753n[i11] >= j11) {
                return i13;
            }
            i11++;
            if (i11 == this.f12748i) {
                i11 = 0;
            }
        }
        if (z10) {
            return i12;
        }
        return -1;
    }

    private int y(int i11, int i12, long j11, boolean z10) {
        int i13 = -1;
        for (int i14 = 0; i14 < i12; i14++) {
            long j12 = this.f12753n[i11];
            if (j12 > j11) {
                return i13;
            }
            if (!z10 || (this.f12752m[i11] & 1) != 0) {
                if (j12 == j11) {
                    return i14;
                }
                i13 = i14;
            }
            i11++;
            if (i11 == this.f12748i) {
                i11 = 0;
            }
        }
        return i13;
    }

    public final int A() {
        return this.f12756q;
    }

    public final synchronized long B() {
        return this.f12755p == 0 ? Long.MIN_VALUE : this.f12753n[this.f12757r];
    }

    public final synchronized long C() {
        return this.f12761v;
    }

    public final synchronized long D() {
        return Math.max(this.f12760u, E(this.f12758s));
    }

    public final int F() {
        return this.f12756q + this.f12758s;
    }

    public final synchronized int H(long j11, boolean z10) {
        int iG = G(this.f12758s);
        if (K() && j11 >= this.f12753n[iG]) {
            if (j11 > this.f12761v && z10) {
                return this.f12755p - this.f12758s;
            }
            int iY = y(iG, this.f12755p - this.f12758s, j11, true);
            if (iY == -1) {
                return 0;
            }
            return iY;
        }
        return 0;
    }

    public final synchronized androidx.media3.common.r I() {
        return this.f12764y ? null : this.B;
    }

    public final int J() {
        return this.f12756q + this.f12755p;
    }

    protected final void L() {
        this.f12765z = true;
    }

    public final synchronized boolean M() {
        return this.f12762w;
    }

    public synchronized boolean N(boolean z10) {
        androidx.media3.common.r rVar;
        boolean z11 = true;
        if (K()) {
            if (((c) this.f12742c.f(F())).f12769a != this.f12746g) {
                return true;
            }
            return P(G(this.f12758s));
        }
        if (!z10 && !this.f12762w && ((rVar = this.B) == null || rVar == this.f12746g)) {
            z11 = false;
        }
        return z11;
    }

    public void Q() throws DrmSession.DrmSessionException {
        DrmSession drmSession = this.f12747h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) androidx.media3.common.util.a.e(this.f12747h.getError()));
        }
    }

    public final synchronized long T() {
        try {
        } catch (Throwable th2) {
            throw th2;
        }
        return K() ? this.f12749j[G(this.f12758s)] : this.C;
    }

    public void U() {
        s();
        X();
    }

    public int V(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11, boolean z10) {
        int iS = S(s2Var, decoderInputBuffer, (i11 & 2) != 0, z10, this.f12741b);
        if (iS == -4 && !decoderInputBuffer.isEndOfStream()) {
            boolean z11 = (i11 & 1) != 0;
            if ((i11 & 4) == 0) {
                if (z11) {
                    this.f12740a.f(decoderInputBuffer, this.f12741b);
                } else {
                    this.f12740a.m(decoderInputBuffer, this.f12741b);
                }
            }
            if (!z11) {
                this.f12758s++;
            }
        }
        return iS;
    }

    public void W() {
        Z(true);
        X();
    }

    public final void Y() {
        Z(false);
    }

    public void Z(boolean z10) {
        this.f12740a.n();
        this.f12755p = 0;
        this.f12756q = 0;
        this.f12757r = 0;
        this.f12758s = 0;
        this.f12763x = true;
        this.f12759t = Long.MIN_VALUE;
        this.f12760u = Long.MIN_VALUE;
        this.f12761v = Long.MIN_VALUE;
        this.f12762w = false;
        this.f12742c.c();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f12764y = true;
            this.D = true;
        }
    }

    @Override // l2.s0
    public final void a(androidx.media3.common.util.j0 j0Var, int i11, int i12) {
        this.f12740a.q(j0Var, i11);
    }

    @Override // l2.s0
    public /* synthetic */ void b(androidx.media3.common.util.j0 j0Var, int i11) {
        r0.c(this, j0Var, i11);
    }

    public final synchronized boolean b0(int i11) {
        a0();
        int i12 = this.f12756q;
        if (i11 >= i12 && i11 <= this.f12755p + i12) {
            this.f12759t = Long.MIN_VALUE;
            this.f12758s = i11 - i12;
            return true;
        }
        return false;
    }

    @Override // l2.s0
    public final void c(androidx.media3.common.r rVar) {
        androidx.media3.common.r rVarZ = z(rVar);
        this.f12765z = false;
        this.A = rVar;
        boolean zF0 = f0(rVarZ);
        d dVar = this.f12745f;
        if (dVar == null || !zF0) {
            return;
        }
        dVar.c(rVarZ);
    }

    public final synchronized boolean c0(long j11, boolean z10) {
        try {
            a0();
            int iG = G(this.f12758s);
            if (K() && j11 >= this.f12753n[iG] && (j11 <= this.f12761v || z10)) {
                int iX = this.D ? x(iG, this.f12755p - this.f12758s, j11, z10) : y(iG, this.f12755p - this.f12758s, j11, true);
                if (iX == -1) {
                    return false;
                }
                this.f12759t = j11;
                this.f12758s += iX;
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    @Override // l2.s0
    public void d(long j11, int i11, int i12, int i13, s0.a aVar) {
        int i14;
        if (this.f12765z) {
            c((androidx.media3.common.r) androidx.media3.common.util.a.i(this.A));
        }
        int i15 = i11 & 1;
        boolean z10 = i15 != 0;
        if (this.f12763x) {
            if (!z10) {
                return;
            } else {
                this.f12763x = false;
            }
        }
        long j12 = this.F + j11;
        if (!this.D) {
            i14 = i11;
        } else {
            if (j12 < this.f12759t) {
                return;
            }
            if (i15 == 0) {
                if (!this.E) {
                    androidx.media3.common.util.u.h("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.B);
                    this.E = true;
                }
                i14 = i11 | 1;
            } else {
                i14 = i11;
            }
        }
        if (this.G) {
            if (!z10 || !i(j12)) {
                return;
            } else {
                this.G = false;
            }
        }
        j(j12, i14, (this.f12740a.e() - ((long) i12)) - ((long) i13), i12, aVar);
    }

    public final void d0(long j11) {
        if (this.F != j11) {
            this.F = j11;
            L();
        }
    }

    @Override // l2.s0
    public /* synthetic */ int e(androidx.media3.common.j jVar, int i11, boolean z10) {
        return r0.b(this, jVar, i11, z10);
    }

    public final void e0(long j11) {
        this.f12759t = j11;
    }

    @Override // l2.s0
    public /* synthetic */ void f(long j11) {
        r0.a(this, j11);
    }

    @Override // l2.s0
    public final int g(androidx.media3.common.j jVar, int i11, boolean z10, int i12) {
        return this.f12740a.p(jVar, i11, z10);
    }

    public final void g0(d dVar) {
        this.f12745f = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void h0(int i11) {
        boolean z10;
        if (i11 >= 0) {
            try {
                if (this.f12758s + i11 <= this.f12755p) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        } else {
            z10 = false;
        }
        androidx.media3.common.util.a.a(z10);
        this.f12758s += i11;
    }

    public final void i0(long j11) {
        this.C = j11;
    }

    public final void j0() {
        this.G = true;
    }

    public synchronized long p() {
        int i11 = this.f12758s;
        if (i11 == 0) {
            return -1L;
        }
        return q(i11);
    }

    public final void r(long j11, boolean z10, boolean z11) {
        this.f12740a.b(n(j11, z10, z11));
    }

    public final void s() {
        this.f12740a.b(o());
    }

    public final void t() {
        this.f12740a.b(p());
    }

    public final void u(long j11) {
        if (this.f12755p == 0) {
            return;
        }
        androidx.media3.common.util.a.a(j11 > D());
        w(this.f12756q + k(j11));
    }

    public final void w(int i11) {
        this.f12740a.c(v(i11));
    }

    protected androidx.media3.common.r z(androidx.media3.common.r rVar) {
        return (this.F == 0 || rVar.f10166t == Long.MAX_VALUE) ? rVar : rVar.b().y0(rVar.f10166t + this.F).N();
    }
}
