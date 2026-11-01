package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public class a0 implements g9.e0 {
    private o1 A;
    private o1 B;
    private int C;
    private boolean D;
    private boolean E;
    private long F;
    private boolean G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y f25685a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f25688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.s.a f25689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f25690f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private o1 f25691g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DrmSession f25692h;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25700p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25701q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f25702r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25703s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f25707w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f25710z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f25686b = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f25693i = 1000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f25694j = new int[1000];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long[] f25695k = new long[1000];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long[] f25698n = new long[1000];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int[] f25697m = new int[1000];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int[] f25696l = new int[1000];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private g9.e0.a[] f25699o = new g9.e0.a[1000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f0 f25687c = new f0(new com.google.android.exoplayer2.util.i() { // from class: com.google.android.exoplayer2.source.z
        @Override // com.google.android.exoplayer2.util.i
        public final void accept(Object obj) {
            a0.L((a0.c) obj);
        }
    });

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f25704t = Long.MIN_VALUE;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f25705u = Long.MIN_VALUE;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f25706v = Long.MIN_VALUE;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f25709y = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f25708x = true;

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f25711a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f25712b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public g9.e0.a f25713c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final o1 f25714a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.exoplayer2.drm.u.b f25715b;

        private c(o1 o1Var, com.google.android.exoplayer2.drm.u.b bVar) {
            this.f25714a = o1Var;
            this.f25715b = bVar;
        }
    }

    public interface d {
        void c(o1 o1Var);
    }

    protected a0(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.drm.s.a aVar) {
        this.f25688d = uVar;
        this.f25689e = aVar;
        this.f25685a = new y(bVar);
    }

    private long B(int i11) {
        long jMax = Long.MIN_VALUE;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int iD = D(i11 - 1);
        for (int i12 = 0; i12 < i11; i12++) {
            jMax = Math.max(jMax, this.f25698n[iD]);
            if ((this.f25697m[iD] & 1) != 0) {
                break;
            }
            iD--;
            if (iD == -1) {
                iD = this.f25693i - 1;
            }
        }
        return jMax;
    }

    private int D(int i11) {
        int i12 = this.f25702r + i11;
        int i13 = this.f25693i;
        return i12 < i13 ? i12 : i12 - i13;
    }

    private boolean H() {
        return this.f25703s != this.f25700p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L(c cVar) {
        cVar.f25715b.release();
    }

    private boolean M(int i11) {
        DrmSession drmSession = this.f25692h;
        return drmSession == null || drmSession.getState() == 4 || ((this.f25697m[i11] & 1073741824) == 0 && this.f25692h.b());
    }

    private void O(o1 o1Var, p1 p1Var) {
        o1 o1Var2 = this.f25691g;
        boolean z10 = o1Var2 == null;
        DrmInitData drmInitData = z10 ? null : o1Var2.f25499o;
        this.f25691g = o1Var;
        DrmInitData drmInitData2 = o1Var.f25499o;
        com.google.android.exoplayer2.drm.u uVar = this.f25688d;
        p1Var.f25598b = uVar != null ? o1Var.c(uVar.a(o1Var)) : o1Var;
        p1Var.f25597a = this.f25692h;
        if (this.f25688d == null) {
            return;
        }
        if (z10 || !p0.c(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f25692h;
            DrmSession drmSessionC = this.f25688d.c(this.f25689e, o1Var);
            this.f25692h = drmSessionC;
            p1Var.f25597a = drmSessionC;
            if (drmSession != null) {
                drmSession.f(this.f25689e);
            }
        }
    }

    private synchronized int P(p1 p1Var, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, b bVar) {
        try {
            decoderInputBuffer.f24844d = false;
            if (!H()) {
                if (!z11 && !this.f25707w) {
                    o1 o1Var = this.B;
                    if (o1Var == null || (!z10 && o1Var == this.f25691g)) {
                        return -3;
                    }
                    O((o1) com.google.android.exoplayer2.util.a.e(o1Var), p1Var);
                    return -5;
                }
                decoderInputBuffer.k(4);
                return -4;
            }
            o1 o1Var2 = ((c) this.f25687c.f(C())).f25714a;
            if (!z10 && o1Var2 == this.f25691g) {
                int iD = D(this.f25703s);
                if (!M(iD)) {
                    decoderInputBuffer.f24844d = true;
                    return -3;
                }
                decoderInputBuffer.k(this.f25697m[iD]);
                long j11 = this.f25698n[iD];
                decoderInputBuffer.f24845e = j11;
                if (j11 < this.f25704t) {
                    decoderInputBuffer.a(Integer.MIN_VALUE);
                }
                bVar.f25711a = this.f25696l[iD];
                bVar.f25712b = this.f25695k[iD];
                bVar.f25713c = this.f25699o[iD];
                return -4;
            }
            O(o1Var2, p1Var);
            return -5;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void U() {
        DrmSession drmSession = this.f25692h;
        if (drmSession != null) {
            drmSession.f(this.f25689e);
            this.f25692h = null;
            this.f25691g = null;
        }
    }

    private synchronized void X() {
        this.f25703s = 0;
        this.f25685a.o();
    }

    private synchronized boolean c0(o1 o1Var) {
        try {
            this.f25709y = false;
            if (p0.c(o1Var, this.B)) {
                return false;
            }
            if (this.f25687c.h() || !((c) this.f25687c.g()).f25714a.equals(o1Var)) {
                this.B = o1Var;
            } else {
                this.B = ((c) this.f25687c.g()).f25714a;
            }
            o1 o1Var2 = this.B;
            this.D = com.google.android.exoplayer2.util.w.a(o1Var2.f25496l, o1Var2.f25493i);
            this.E = false;
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean h(long j11) {
        if (this.f25700p == 0) {
            return j11 > this.f25705u;
        }
        if (A() >= j11) {
            return false;
        }
        t(this.f25701q + j(j11));
        return true;
    }

    private synchronized void i(long j11, int i11, long j12, int i12, g9.e0.a aVar) {
        try {
            int i13 = this.f25700p;
            if (i13 > 0) {
                int iD = D(i13 - 1);
                com.google.android.exoplayer2.util.a.a(this.f25695k[iD] + ((long) this.f25696l[iD]) <= j12);
            }
            this.f25707w = (536870912 & i11) != 0;
            this.f25706v = Math.max(this.f25706v, j11);
            int iD2 = D(this.f25700p);
            this.f25698n[iD2] = j11;
            this.f25695k[iD2] = j12;
            this.f25696l[iD2] = i12;
            this.f25697m[iD2] = i11;
            this.f25699o[iD2] = aVar;
            this.f25694j[iD2] = this.C;
            if (this.f25687c.h() || !((c) this.f25687c.g()).f25714a.equals(this.B)) {
                com.google.android.exoplayer2.drm.u uVar = this.f25688d;
                this.f25687c.b(G(), new c((o1) com.google.android.exoplayer2.util.a.e(this.B), uVar != null ? uVar.d(this.f25689e, this.B) : com.google.android.exoplayer2.drm.u.b.f25019a));
            }
            int i14 = this.f25700p + 1;
            this.f25700p = i14;
            int i15 = this.f25693i;
            if (i14 == i15) {
                int i16 = i15 + 1000;
                int[] iArr = new int[i16];
                long[] jArr = new long[i16];
                long[] jArr2 = new long[i16];
                int[] iArr2 = new int[i16];
                int[] iArr3 = new int[i16];
                g9.e0.a[] aVarArr = new g9.e0.a[i16];
                int i17 = this.f25702r;
                int i18 = i15 - i17;
                System.arraycopy(this.f25695k, i17, jArr, 0, i18);
                System.arraycopy(this.f25698n, this.f25702r, jArr2, 0, i18);
                System.arraycopy(this.f25697m, this.f25702r, iArr2, 0, i18);
                System.arraycopy(this.f25696l, this.f25702r, iArr3, 0, i18);
                System.arraycopy(this.f25699o, this.f25702r, aVarArr, 0, i18);
                System.arraycopy(this.f25694j, this.f25702r, iArr, 0, i18);
                int i19 = this.f25702r;
                System.arraycopy(this.f25695k, 0, jArr, i18, i19);
                System.arraycopy(this.f25698n, 0, jArr2, i18, i19);
                System.arraycopy(this.f25697m, 0, iArr2, i18, i19);
                System.arraycopy(this.f25696l, 0, iArr3, i18, i19);
                System.arraycopy(this.f25699o, 0, aVarArr, i18, i19);
                System.arraycopy(this.f25694j, 0, iArr, i18, i19);
                this.f25695k = jArr;
                this.f25698n = jArr2;
                this.f25697m = iArr2;
                this.f25696l = iArr3;
                this.f25699o = aVarArr;
                this.f25694j = iArr;
                this.f25702r = 0;
                this.f25693i = i16;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private int j(long j11) {
        int i11 = this.f25700p;
        int iD = D(i11 - 1);
        while (i11 > this.f25703s && this.f25698n[iD] >= j11) {
            i11--;
            iD--;
            if (iD == -1) {
                iD = this.f25693i - 1;
            }
        }
        return i11;
    }

    public static a0 k(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.drm.s.a aVar) {
        return new a0(bVar, (com.google.android.exoplayer2.drm.u) com.google.android.exoplayer2.util.a.e(uVar), (com.google.android.exoplayer2.drm.s.a) com.google.android.exoplayer2.util.a.e(aVar));
    }

    public static a0 l(com.google.android.exoplayer2.upstream.b bVar) {
        return new a0(bVar, null, null);
    }

    private synchronized long m(long j11, boolean z10, boolean z11) {
        int i11;
        try {
            int i12 = this.f25700p;
            if (i12 != 0) {
                long[] jArr = this.f25698n;
                int i13 = this.f25702r;
                if (j11 >= jArr[i13]) {
                    if (z11 && (i11 = this.f25703s) != i12) {
                        i12 = i11 + 1;
                    }
                    int iV = v(i13, i12, j11, z10);
                    if (iV == -1) {
                        return -1L;
                    }
                    return p(iV);
                }
            }
            return -1L;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized long n() {
        int i11 = this.f25700p;
        if (i11 == 0) {
            return -1L;
        }
        return p(i11);
    }

    private long p(int i11) {
        this.f25705u = Math.max(this.f25705u, B(i11));
        this.f25700p -= i11;
        int i12 = this.f25701q + i11;
        this.f25701q = i12;
        int i13 = this.f25702r + i11;
        this.f25702r = i13;
        int i14 = this.f25693i;
        if (i13 >= i14) {
            this.f25702r = i13 - i14;
        }
        int i15 = this.f25703s - i11;
        this.f25703s = i15;
        if (i15 < 0) {
            this.f25703s = 0;
        }
        this.f25687c.e(i12);
        if (this.f25700p != 0) {
            return this.f25695k[this.f25702r];
        }
        int i16 = this.f25702r;
        if (i16 == 0) {
            i16 = this.f25693i;
        }
        int i17 = i16 - 1;
        return this.f25695k[i17] + ((long) this.f25696l[i17]);
    }

    private long t(int i11) {
        int iG = G() - i11;
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.a(iG >= 0 && iG <= this.f25700p - this.f25703s);
        int i12 = this.f25700p - iG;
        this.f25700p = i12;
        this.f25706v = Math.max(this.f25705u, B(i12));
        if (iG == 0 && this.f25707w) {
            z10 = true;
        }
        this.f25707w = z10;
        this.f25687c.d(i11);
        int i13 = this.f25700p;
        if (i13 == 0) {
            return 0L;
        }
        int iD = D(i13 - 1);
        return this.f25695k[iD] + ((long) this.f25696l[iD]);
    }

    private int v(int i11, int i12, long j11, boolean z10) {
        int i13 = -1;
        for (int i14 = 0; i14 < i12; i14++) {
            long j12 = this.f25698n[i11];
            if (j12 > j11) {
                return i13;
            }
            if (!z10 || (this.f25697m[i11] & 1) != 0) {
                if (j12 == j11) {
                    return i14;
                }
                i13 = i14;
            }
            i11++;
            if (i11 == this.f25693i) {
                i11 = 0;
            }
        }
        return i13;
    }

    public final synchronized long A() {
        return Math.max(this.f25705u, B(this.f25703s));
    }

    public final int C() {
        return this.f25701q + this.f25703s;
    }

    public final synchronized int E(long j11, boolean z10) {
        int iD = D(this.f25703s);
        if (H() && j11 >= this.f25698n[iD]) {
            if (j11 > this.f25706v && z10) {
                return this.f25700p - this.f25703s;
            }
            int iV = v(iD, this.f25700p - this.f25703s, j11, true);
            if (iV == -1) {
                return 0;
            }
            return iV;
        }
        return 0;
    }

    public final synchronized o1 F() {
        return this.f25709y ? null : this.B;
    }

    public final int G() {
        return this.f25701q + this.f25700p;
    }

    protected final void I() {
        this.f25710z = true;
    }

    public final synchronized boolean J() {
        return this.f25707w;
    }

    public synchronized boolean K(boolean z10) {
        o1 o1Var;
        boolean z11 = true;
        if (H()) {
            if (((c) this.f25687c.f(C())).f25714a != this.f25691g) {
                return true;
            }
            return M(D(this.f25703s));
        }
        if (!z10 && !this.f25707w && ((o1Var = this.B) == null || o1Var == this.f25691g)) {
            z11 = false;
        }
        return z11;
    }

    public void N() throws DrmSession.DrmSessionException {
        DrmSession drmSession = this.f25692h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(this.f25692h.getError()));
        }
    }

    public final synchronized int Q() {
        try {
        } catch (Throwable th2) {
            throw th2;
        }
        return H() ? this.f25694j[D(this.f25703s)] : this.C;
    }

    public void R() {
        r();
        U();
    }

    public int S(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11, boolean z10) {
        int iP = P(p1Var, decoderInputBuffer, (i11 & 2) != 0, z10, this.f25686b);
        if (iP == -4 && !decoderInputBuffer.h()) {
            boolean z11 = (i11 & 1) != 0;
            if ((i11 & 4) == 0) {
                if (z11) {
                    this.f25685a.f(decoderInputBuffer, this.f25686b);
                } else {
                    this.f25685a.m(decoderInputBuffer, this.f25686b);
                }
            }
            if (!z11) {
                this.f25703s++;
            }
        }
        return iP;
    }

    public void T() {
        W(true);
        U();
    }

    public final void V() {
        W(false);
    }

    public void W(boolean z10) {
        this.f25685a.n();
        this.f25700p = 0;
        this.f25701q = 0;
        this.f25702r = 0;
        this.f25703s = 0;
        this.f25708x = true;
        this.f25704t = Long.MIN_VALUE;
        this.f25705u = Long.MIN_VALUE;
        this.f25706v = Long.MIN_VALUE;
        this.f25707w = false;
        this.f25687c.c();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f25709y = true;
        }
    }

    public final synchronized boolean Y(int i11) {
        X();
        int i12 = this.f25701q;
        if (i11 >= i12 && i11 <= this.f25700p + i12) {
            this.f25704t = Long.MIN_VALUE;
            this.f25703s = i11 - i12;
            return true;
        }
        return false;
    }

    public final synchronized boolean Z(long j11, boolean z10) {
        X();
        int iD = D(this.f25703s);
        if (H() && j11 >= this.f25698n[iD] && (j11 <= this.f25706v || z10)) {
            int iV = v(iD, this.f25700p - this.f25703s, j11, true);
            if (iV == -1) {
                return false;
            }
            this.f25704t = j11;
            this.f25703s += iV;
            return true;
        }
        return false;
    }

    @Override // g9.e0
    public final int a(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10, int i12) {
        return this.f25685a.p(gVar, i11, z10);
    }

    public final void a0(long j11) {
        if (this.F != j11) {
            this.F = j11;
            I();
        }
    }

    @Override // g9.e0
    public /* synthetic */ int b(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10) {
        return g9.d0.a(this, gVar, i11, z10);
    }

    public final void b0(long j11) {
        this.f25704t = j11;
    }

    @Override // g9.e0
    public /* synthetic */ void c(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        g9.d0.b(this, d0Var, i11);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    @Override // g9.e0
    public void d(long j11, int i11, int i12, int i13, g9.e0.a aVar) {
        int i14;
        if (this.f25710z) {
            e((o1) com.google.android.exoplayer2.util.a.i(this.A));
        }
        int i15 = i11 & 1;
        boolean z10 = i15 != 0;
        if (this.f25708x) {
            if (!z10) {
                return;
            } else {
                this.f25708x = false;
            }
        }
        long j12 = this.F + j11;
        if (!this.D) {
            i14 = i11;
        } else {
            if (j12 < this.f25704t) {
                return;
            }
            if (i15 == 0) {
                if (!this.E) {
                    com.google.android.exoplayer2.util.s.i("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.B);
                    this.E = true;
                }
                i14 = i11 | 1;
            } else {
                i14 = i11;
            }
        }
        if (this.G) {
            if (!z10 || !h(j12)) {
                return;
            } else {
                this.G = false;
            }
        }
        i(j12, i14, (this.f25685a.e() - ((long) i12)) - ((long) i13), i12, aVar);
    }

    public final void d0(d dVar) {
        this.f25690f = dVar;
    }

    @Override // g9.e0
    public final void e(o1 o1Var) {
        o1 o1VarW = w(o1Var);
        this.f25710z = false;
        this.A = o1Var;
        boolean zC0 = c0(o1VarW);
        d dVar = this.f25690f;
        if (dVar == null || !zC0) {
            return;
        }
        dVar.c(o1VarW);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void e0(int i11) {
        boolean z10;
        if (i11 >= 0) {
            try {
                if (this.f25703s + i11 <= this.f25700p) {
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
        com.google.android.exoplayer2.util.a.a(z10);
        this.f25703s += i11;
    }

    @Override // g9.e0
    public final void f(com.google.android.exoplayer2.util.d0 d0Var, int i11, int i12) {
        this.f25685a.q(d0Var, i11);
    }

    public final void f0(int i11) {
        this.C = i11;
    }

    public final void g0() {
        this.G = true;
    }

    public synchronized long o() {
        int i11 = this.f25703s;
        if (i11 == 0) {
            return -1L;
        }
        return p(i11);
    }

    public final void q(long j11, boolean z10, boolean z11) {
        this.f25685a.b(m(j11, z10, z11));
    }

    public final void r() {
        this.f25685a.b(n());
    }

    public final void s() {
        this.f25685a.b(o());
    }

    public final void u(int i11) {
        this.f25685a.c(t(i11));
    }

    protected o1 w(o1 o1Var) {
        return (this.F == 0 || o1Var.f25500p == Long.MAX_VALUE) ? o1Var : o1Var.b().i0(o1Var.f25500p + this.F).E();
    }

    public final int x() {
        return this.f25701q;
    }

    public final synchronized long y() {
        return this.f25700p == 0 ? Long.MIN_VALUE : this.f25698n[this.f25702r];
    }

    public final synchronized long z() {
        return this.f25706v;
    }
}
