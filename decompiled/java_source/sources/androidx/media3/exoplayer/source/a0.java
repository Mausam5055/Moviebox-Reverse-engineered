package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import l2.m0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
final class a0 implements q, l2.t, Loader.b, Loader.e, e0.d {
    private static final Map R = B();
    private static final androidx.media3.common.r S = new androidx.media3.common.r.b().f0("icy").u0("application/x-icy").N();
    private boolean A;
    private f B;
    private m0 C;
    private long D;
    private boolean E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private boolean K;
    private long L;
    private long M;
    private boolean N;
    private int O;
    private boolean P;
    private boolean Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f12633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.datasource.a f12634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.t f12635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f12636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s.a f12637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.r.a f12638f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f12639g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.b f12640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f12641i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f12642j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f12643k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.media3.common.r f12644l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f12645m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Loader f12646n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final v f12647o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.media3.common.util.l f12648p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f12649q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Runnable f12650r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Handler f12651s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private q.a f12652t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private y2.b f12653u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private e0[] f12654v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private e[] f12655w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f12656x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f12657y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f12658z;

    class a extends l2.d0 {
        a(m0 m0Var) {
            super(m0Var);
        }

        @Override // l2.d0, l2.m0
        public long getDurationUs() {
            return a0.this.D;
        }
    }

    final class b implements Loader.d, n.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Uri f12661b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final w1.l f12662c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final v f12663d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final l2.t f12664e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final androidx.media3.common.util.l f12665f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private volatile boolean f12667h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f12669j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private s0 f12671l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f12672m;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final l2.l0 f12666g = new l2.l0();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f12668i = true;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f12660a = g2.i.a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private w1.h f12670k = g(0);

        public b(Uri uri, androidx.media3.datasource.a aVar, v vVar, l2.t tVar, androidx.media3.common.util.l lVar) {
            this.f12661b = uri;
            this.f12662c = new w1.l(aVar);
            this.f12663d = vVar;
            this.f12664e = tVar;
            this.f12665f = lVar;
        }

        private w1.h g(long j11) {
            return new w1.h.b().i(this.f12661b).h(j11).f(a0.this.f12641i).b(6).e(a0.R).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(long j11, long j12) {
            this.f12666g.f68620a = j11;
            this.f12669j = j12;
            this.f12668i = true;
            this.f12672m = false;
        }

        @Override // androidx.media3.exoplayer.source.n.a
        public void a(androidx.media3.common.util.j0 j0Var) {
            long jMax = !this.f12672m ? this.f12669j : Math.max(a0.this.D(true), this.f12669j);
            int iA = j0Var.a();
            s0 s0Var = (s0) androidx.media3.common.util.a.e(this.f12671l);
            s0Var.b(j0Var, iA);
            s0Var.d(jMax, 1, iA, 0, null);
            this.f12672m = true;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.d
        public void cancelLoad() {
            this.f12667h = true;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x004b */
        @Override // androidx.media3.exoplayer.upstream.Loader.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load() {
            int iD = 0;
            while (iD == 0 && !this.f12667h) {
                long j11 = this.f12666g.f68620a;
                w1.h hVarG = g(j11);
                this.f12670k = hVarG;
                long jA = this.f12662c.a(hVarG);
                if (this.f12667h) {
                    if (iD != 1 && this.f12663d.b() != -1) {
                        this.f12666g.f68620a = this.f12663d.b();
                    }
                    w1.g.a(this.f12662c);
                    return;
                }
                if (jA != -1) {
                    jA += j11;
                    a0.this.P();
                }
                long j12 = jA;
                a0.this.f12653u = y2.b.b(this.f12662c.getResponseHeaders());
                androidx.media3.common.j nVar = this.f12662c;
                if (a0.this.f12653u != null && a0.this.f12653u.f78819f != -1) {
                    nVar = new n(this.f12662c, a0.this.f12653u.f78819f, this);
                    s0 s0VarE = a0.this.E();
                    this.f12671l = s0VarE;
                    s0VarE.c(a0.S);
                }
                long jB = j11;
                this.f12663d.c(nVar, this.f12661b, this.f12662c.getResponseHeaders(), j11, j12, this.f12664e);
                if (a0.this.f12653u != null) {
                    this.f12663d.a();
                }
                if (this.f12668i) {
                    this.f12663d.seek(jB, this.f12669j);
                    this.f12668i = false;
                }
                while (true) {
                    long j13 = jB;
                    while (true) {
                        if (iD != 0 || this.f12667h) {
                            break;
                        }
                        try {
                            this.f12665f.a();
                            iD = this.f12663d.d(this.f12666g);
                            jB = this.f12663d.b();
                            if (jB > a0.this.f12642j + j13) {
                                this.f12665f.d();
                                a0.this.f12651s.post(a0.this.f12650r);
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                }
                if (iD == 1) {
                    iD = 0;
                } else if (this.f12663d.b() != -1) {
                    this.f12666g.f68620a = this.f12663d.b();
                }
                w1.g.a(this.f12662c);
            }
        }
    }

    interface c {
        void p(long j11, m0 m0Var, boolean z10);
    }

    private final class d implements g2.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f12674a;

        public d(int i11) {
            this.f12674a = i11;
        }

        @Override // g2.u
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            return a0.this.V(this.f12674a, s2Var, decoderInputBuffer, i11);
        }

        @Override // g2.u
        public boolean isReady() {
            return a0.this.G(this.f12674a);
        }

        @Override // g2.u
        public void maybeThrowError() throws IOException {
            a0.this.O(this.f12674a);
        }

        @Override // g2.u
        public int skipData(long j11) {
            return a0.this.Z(this.f12674a, j11);
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f12677b;

        public e(int i11, boolean z10) {
            this.f12676a = i11;
            this.f12677b = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f12676a == eVar.f12676a && this.f12677b == eVar.f12677b;
        }

        public int hashCode() {
            return (this.f12676a * 31) + (this.f12677b ? 1 : 0);
        }
    }

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g2.z f12678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f12679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean[] f12680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean[] f12681d;

        public f(g2.z zVar, boolean[] zArr) {
            this.f12678a = zVar;
            this.f12679b = zArr;
            int i11 = zVar.f63266a;
            this.f12680c = new boolean[i11];
            this.f12681d = new boolean[i11];
        }
    }

    public a0(Uri uri, androidx.media3.datasource.a aVar, v vVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar2, androidx.media3.exoplayer.upstream.m mVar, s.a aVar3, c cVar, androidx.media3.exoplayer.upstream.b bVar, String str, int i11, int i12, androidx.media3.common.r rVar, long j11, androidx.media3.exoplayer.util.c cVar2) {
        this.f12633a = uri;
        this.f12634b = aVar;
        this.f12635c = tVar;
        this.f12638f = aVar2;
        this.f12636d = mVar;
        this.f12637e = aVar3;
        this.f12639g = cVar;
        this.f12640h = bVar;
        this.f12641i = str;
        this.f12642j = i11;
        this.f12643k = i12;
        this.f12644l = rVar;
        this.f12646n = cVar2 != null ? new Loader(cVar2) : new Loader("ProgressiveMediaPeriod");
        this.f12647o = vVar;
        this.f12645m = j11;
        this.f12648p = new androidx.media3.common.util.l();
        this.f12649q = new Runnable() { // from class: androidx.media3.exoplayer.source.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f12906a.K();
            }
        };
        this.f12650r = new Runnable() { // from class: androidx.media3.exoplayer.source.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f12907a.H();
            }
        };
        this.f12651s = a1.A();
        this.f12655w = new e[0];
        this.f12654v = new e0[0];
        this.M = C.TIME_UNSET;
        this.F = 1;
    }

    private boolean A(b bVar, int i11) {
        m0 m0Var;
        if (this.K || !((m0Var = this.C) == null || m0Var.getDurationUs() == C.TIME_UNSET)) {
            this.O = i11;
            return true;
        }
        if (this.f12657y && !b0()) {
            this.N = true;
            return false;
        }
        this.H = this.f12657y;
        this.L = 0L;
        this.O = 0;
        for (e0 e0Var : this.f12654v) {
            e0Var.Y();
        }
        bVar.h(0L, 0L);
        return true;
    }

    private static Map B() {
        HashMap map = new HashMap();
        map.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(map);
    }

    private int C() {
        int iJ = 0;
        for (e0 e0Var : this.f12654v) {
            iJ += e0Var.J();
        }
        return iJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long D(boolean z10) {
        long jMax = Long.MIN_VALUE;
        for (int i11 = 0; i11 < this.f12654v.length; i11++) {
            if (z10 || ((f) androidx.media3.common.util.a.e(this.B)).f12680c[i11]) {
                jMax = Math.max(jMax, this.f12654v[i11].C());
            }
        }
        return jMax;
    }

    private boolean F() {
        return this.M != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        if (this.Q) {
            return;
        }
        ((q.a) androidx.media3.common.util.a.e(this.f12652t)).f(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        this.K = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        if (this.Q || this.f12657y || !this.f12656x || this.C == null) {
            return;
        }
        for (e0 e0Var : this.f12654v) {
            if (e0Var.I() == null) {
                return;
            }
        }
        this.f12648p.d();
        int length = this.f12654v.length;
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[length];
        boolean[] zArr = new boolean[length];
        for (int i11 = 0; i11 < length; i11++) {
            androidx.media3.common.r rVarN = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f12654v[i11].I());
            String str = rVarN.f10161o;
            boolean zO = androidx.media3.common.y.o(str);
            boolean z10 = zO || androidx.media3.common.y.t(str);
            zArr[i11] = z10;
            this.f12658z = z10 | this.f12658z;
            this.A = this.f12645m != C.TIME_UNSET && length == 1 && androidx.media3.common.y.q(str);
            y2.b bVar = this.f12653u;
            if (bVar != null) {
                if (zO || this.f12655w[i11].f12677b) {
                    androidx.media3.common.x xVar = rVarN.f10158l;
                    rVarN = rVarN.b().n0(xVar == null ? new androidx.media3.common.x(bVar) : xVar.a(bVar)).N();
                }
                if (zO && rVarN.f10154h == -1 && rVarN.f10155i == -1 && bVar.f78814a != -1) {
                    rVarN = rVarN.b().Q(bVar.f78814a).N();
                }
            }
            androidx.media3.common.r rVarC = rVarN.c(this.f12635c.b(rVarN));
            f0VarArr[i11] = new androidx.media3.common.f0(Integer.toString(i11), rVarC);
            this.I = rVarC.f10167u | this.I;
        }
        this.B = new f(new g2.z(f0VarArr), zArr);
        if (this.A && this.D == C.TIME_UNSET) {
            this.D = this.f12645m;
            this.C = new a(this.C);
        }
        this.f12639g.p(this.D, this.C, this.E);
        this.f12657y = true;
        ((q.a) androidx.media3.common.util.a.e(this.f12652t)).c(this);
    }

    private void L(int i11) {
        z();
        f fVar = this.B;
        boolean[] zArr = fVar.f12681d;
        if (zArr[i11]) {
            return;
        }
        androidx.media3.common.r rVarA = fVar.f12678a.b(i11).a(0);
        this.f12637e.j(androidx.media3.common.y.k(rVarA.f10161o), rVarA, 0, null, this.L);
        zArr[i11] = true;
    }

    private void M(int i11) {
        z();
        if (this.N) {
            if (!this.f12658z || this.B.f12679b[i11]) {
                if (this.f12654v[i11].N(false)) {
                    return;
                }
                this.M = 0L;
                this.N = false;
                this.H = true;
                this.L = 0L;
                this.O = 0;
                for (e0 e0Var : this.f12654v) {
                    e0Var.Y();
                }
                ((q.a) androidx.media3.common.util.a.e(this.f12652t)).f(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        this.f12651s.post(new Runnable() { // from class: androidx.media3.exoplayer.source.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f12905a.I();
            }
        });
    }

    private s0 U(e eVar) {
        int length = this.f12654v.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (eVar.equals(this.f12655w[i11])) {
                return this.f12654v[i11];
            }
        }
        if (this.f12656x) {
            androidx.media3.common.util.u.h("ProgressiveMediaPeriod", "Extractor added new track (id=" + eVar.f12676a + ") after finishing tracks.");
            return new l2.n();
        }
        e0 e0VarL = e0.l(this.f12640h, this.f12635c, this.f12638f);
        e0VarL.g0(this);
        int i12 = length + 1;
        e[] eVarArr = (e[]) Arrays.copyOf(this.f12655w, i12);
        eVarArr[length] = eVar;
        this.f12655w = (e[]) a1.j(eVarArr);
        e0[] e0VarArr = (e0[]) Arrays.copyOf(this.f12654v, i12);
        e0VarArr[length] = e0VarL;
        this.f12654v = (e0[]) a1.j(e0VarArr);
        return e0VarL;
    }

    private boolean X(boolean[] zArr, long j11, boolean z10) {
        int length = this.f12654v.length;
        for (int i11 = 0; i11 < length; i11++) {
            e0 e0Var = this.f12654v[i11];
            if (e0Var.F() != 0 || !z10) {
                if (!(this.A ? e0Var.b0(e0Var.A()) : e0Var.c0(j11, false)) && (zArr[i11] || !this.f12658z)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public void J(m0 m0Var) {
        this.C = this.f12653u == null ? m0Var : new m0.b(C.TIME_UNSET);
        this.D = m0Var.getDurationUs();
        boolean z10 = !this.K && m0Var.getDurationUs() == C.TIME_UNSET;
        this.E = z10;
        this.F = z10 ? 7 : 1;
        if (this.f12657y) {
            this.f12639g.p(this.D, m0Var, z10);
        } else {
            K();
        }
    }

    private void a0() {
        b bVar = new b(this.f12633a, this.f12634b, this.f12647o, this, this.f12648p);
        if (this.f12657y) {
            androidx.media3.common.util.a.g(F());
            long j11 = this.D;
            if (j11 != C.TIME_UNSET && this.M > j11) {
                this.P = true;
                this.M = C.TIME_UNSET;
                return;
            }
            bVar.h(((m0) androidx.media3.common.util.a.e(this.C)).getSeekPoints(this.M).f68644a.f68651b, this.M);
            for (e0 e0Var : this.f12654v) {
                e0Var.e0(this.M);
            }
            this.M = C.TIME_UNSET;
        }
        this.O = C();
        this.f12646n.m(bVar, this, this.f12636d.a(this.F));
    }

    private boolean b0() {
        return this.H || F();
    }

    private void z() {
        androidx.media3.common.util.a.g(this.f12657y);
        androidx.media3.common.util.a.e(this.B);
        androidx.media3.common.util.a.e(this.C);
    }

    s0 E() {
        return U(new e(0, true));
    }

    boolean G(int i11) {
        return !b0() && this.f12654v[i11].N(this.P);
    }

    void N() throws IOException {
        this.f12646n.j(this.f12636d.a(this.F));
    }

    void O(int i11) throws IOException {
        this.f12654v[i11].Q();
        N();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void q(b bVar, long j11, long j12, boolean z10) {
        w1.l lVar = bVar.f12662c;
        g2.i iVar = new g2.i(bVar.f12660a, bVar.f12670k, lVar.e(), lVar.f(), j11, j12, lVar.d());
        this.f12636d.b(bVar.f12660a);
        this.f12637e.t(iVar, 1, -1, null, 0, null, bVar.f12669j, this.D);
        if (z10) {
            return;
        }
        for (e0 e0Var : this.f12654v) {
            e0Var.Y();
        }
        if (this.J > 0) {
            ((q.a) androidx.media3.common.util.a.e(this.f12652t)).f(this);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public void p(b bVar, long j11, long j12) {
        if (this.D == C.TIME_UNSET && this.C != null) {
            long jD = D(true);
            long j13 = jD == Long.MIN_VALUE ? 0L : jD + 10000;
            this.D = j13;
            this.f12639g.p(j13, this.C, this.E);
        }
        w1.l lVar = bVar.f12662c;
        g2.i iVar = new g2.i(bVar.f12660a, bVar.f12670k, lVar.e(), lVar.f(), j11, j12, lVar.d());
        this.f12636d.b(bVar.f12660a);
        this.f12637e.w(iVar, 1, -1, null, 0, null, bVar.f12669j, this.D);
        this.P = true;
        ((q.a) androidx.media3.common.util.a.e(this.f12652t)).f(this);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public Loader.c k(b bVar, long j11, long j12, IOException iOException, int i11) {
        Loader.c cVarG;
        w1.l lVar = bVar.f12662c;
        g2.i iVar = new g2.i(bVar.f12660a, bVar.f12670k, lVar.e(), lVar.f(), j11, j12, lVar.d());
        long jC = this.f12636d.c(new androidx.media3.exoplayer.upstream.m.c(iVar, new g2.j(1, -1, null, 0, null, a1.y1(bVar.f12669j), a1.y1(this.D)), iOException, i11));
        if (jC == C.TIME_UNSET) {
            cVarG = Loader.f12950g;
        } else {
            int iC = C();
            cVarG = A(bVar, iC) ? Loader.g(iC > this.O, jC) : Loader.f12949f;
        }
        boolean zC = cVarG.c();
        this.f12637e.y(iVar, 1, -1, null, 0, null, bVar.f12669j, this.D, iOException, !zC);
        if (!zC) {
            this.f12636d.b(bVar.f12660a);
        }
        return cVarG;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public void o(b bVar, long j11, long j12, int i11) {
        w1.l lVar = bVar.f12662c;
        this.f12637e.C(i11 == 0 ? new g2.i(bVar.f12660a, bVar.f12670k, j11) : new g2.i(bVar.f12660a, bVar.f12670k, lVar.e(), lVar.f(), j11, j12, lVar.d()), 1, -1, null, 0, null, bVar.f12669j, this.D, i11);
    }

    int V(int i11, s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i12) {
        if (b0()) {
            return -3;
        }
        L(i11);
        int iV = this.f12654v[i11].V(s2Var, decoderInputBuffer, i12, this.P);
        if (iV == -3) {
            M(i11);
        }
        return iV;
    }

    public void W() {
        if (this.f12657y) {
            for (e0 e0Var : this.f12654v) {
                e0Var.U();
            }
        }
        this.f12646n.l(this);
        this.f12651s.removeCallbacksAndMessages(null);
        this.f12652t = null;
        this.Q = true;
    }

    int Z(int i11, long j11) {
        if (b0()) {
            return 0;
        }
        L(i11);
        e0 e0Var = this.f12654v[i11];
        int iH = e0Var.H(j11, this.P);
        e0Var.h0(iH);
        if (iH == 0) {
            M(i11);
        }
        return iH;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        if (this.P || this.f12646n.h() || this.N) {
            return false;
        }
        if ((this.f12657y || this.f12644l != null) && this.J == 0) {
            return false;
        }
        boolean zF = this.f12648p.f();
        if (this.f12646n.i()) {
            return zF;
        }
        a0();
        return true;
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        z();
        if (!this.C.isSeekable()) {
            return 0L;
        }
        m0.a seekPoints = this.C.getSeekPoints(j11);
        return c4Var.a(j11, seekPoints.f68644a.f68650a, seekPoints.f68645b.f68650a);
    }

    @Override // androidx.media3.exoplayer.source.e0.d
    public void c(androidx.media3.common.r rVar) {
        this.f12651s.post(this.f12649q);
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
        if (this.A) {
            return;
        }
        z();
        if (F()) {
            return;
        }
        boolean[] zArr = this.B.f12680c;
        int length = this.f12654v.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.f12654v[i11].r(j11, z10, zArr[i11]);
        }
    }

    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        j2.z zVar;
        z();
        f fVar = this.B;
        g2.z zVar2 = fVar.f12678a;
        boolean[] zArr3 = fVar.f12680c;
        int i11 = this.J;
        int i12 = 0;
        for (int i13 = 0; i13 < zVarArr.length; i13++) {
            g2.u uVar = uVarArr[i13];
            if (uVar != null && (zVarArr[i13] == null || !zArr[i13])) {
                int i14 = ((d) uVar).f12674a;
                androidx.media3.common.util.a.g(zArr3[i14]);
                this.J--;
                zArr3[i14] = false;
                uVarArr[i13] = null;
            }
        }
        boolean z10 = !this.G ? j11 == 0 || this.A : i11 != 0;
        for (int i15 = 0; i15 < zVarArr.length; i15++) {
            if (uVarArr[i15] == null && (zVar = zVarArr[i15]) != null) {
                androidx.media3.common.util.a.g(zVar.length() == 1);
                androidx.media3.common.util.a.g(zVar.getIndexInTrackGroup(0) == 0);
                int iD = zVar2.d(zVar.getTrackGroup());
                androidx.media3.common.util.a.g(!zArr3[iD]);
                this.J++;
                zArr3[iD] = true;
                this.I = zVar.getSelectedFormat().f10167u | this.I;
                uVarArr[i15] = new d(iD);
                zArr2[i15] = true;
                if (!z10) {
                    e0 e0Var = this.f12654v[iD];
                    z10 = (e0Var.F() == 0 || e0Var.c0(j11, true)) ? false : true;
                }
            }
        }
        if (this.J == 0) {
            this.N = false;
            this.H = false;
            this.I = false;
            if (this.f12646n.i()) {
                e0[] e0VarArr = this.f12654v;
                int length = e0VarArr.length;
                while (i12 < length) {
                    e0VarArr[i12].s();
                    i12++;
                }
                this.f12646n.e();
            } else {
                this.P = false;
                e0[] e0VarArr2 = this.f12654v;
                int length2 = e0VarArr2.length;
                while (i12 < length2) {
                    e0VarArr2[i12].Y();
                    i12++;
                }
            }
        } else if (z10) {
            j11 = seekToUs(j11);
            while (i12 < uVarArr.length) {
                if (uVarArr[i12] != null) {
                    zArr2[i12] = true;
                }
                i12++;
            }
        }
        this.G = true;
        return j11;
    }

    @Override // l2.t
    public void endTracks() {
        this.f12656x = true;
        this.f12651s.post(this.f12649q);
    }

    @Override // l2.t
    public void f(final m0 m0Var) {
        this.f12651s.post(new Runnable() { // from class: androidx.media3.exoplayer.source.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f12908a.J(m0Var);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        this.f12652t = aVar;
        if (this.f12644l == null) {
            this.f12648p.f();
            a0();
        } else {
            track(this.f12643k, 3).c(this.f12644l);
            J(new l2.h0(new long[]{0}, new long[]{0}, C.TIME_UNSET));
            endTracks();
            this.M = j11;
        }
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        long jD;
        z();
        if (this.P || this.J == 0) {
            return Long.MIN_VALUE;
        }
        if (F()) {
            return this.M;
        }
        if (this.f12658z) {
            int length = this.f12654v.length;
            jD = Long.MAX_VALUE;
            for (int i11 = 0; i11 < length; i11++) {
                f fVar = this.B;
                if (fVar.f12679b[i11] && fVar.f12680c[i11] && !this.f12654v[i11].M()) {
                    jD = Math.min(jD, this.f12654v[i11].C());
                }
            }
        } else {
            jD = Long.MAX_VALUE;
        }
        if (jD == Long.MAX_VALUE) {
            jD = D(false);
        }
        return jD == Long.MIN_VALUE ? this.L : jD;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.q
    public g2.z getTrackGroups() {
        z();
        return this.B.f12678a;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return this.f12646n.i() && this.f12648p.e();
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        N();
        if (this.P && !this.f12657y) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.e
    public void onLoaderReleased() {
        for (e0 e0Var : this.f12654v) {
            e0Var.W();
        }
        this.f12647o.release();
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        if (this.I) {
            this.I = false;
            return this.L;
        }
        if (!this.H) {
            return C.TIME_UNSET;
        }
        if (!this.P && C() <= this.O) {
            return C.TIME_UNSET;
        }
        this.H = false;
        return this.L;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        z();
        boolean[] zArr = this.B.f12679b;
        if (!this.C.isSeekable()) {
            j11 = 0;
        }
        int i11 = 0;
        this.H = false;
        boolean z10 = this.L == j11;
        this.L = j11;
        if (F()) {
            this.M = j11;
            return j11;
        }
        if (this.F != 7 && ((this.P || this.f12646n.i()) && X(zArr, j11, z10))) {
            return j11;
        }
        this.N = false;
        this.M = j11;
        this.P = false;
        this.I = false;
        if (this.f12646n.i()) {
            e0[] e0VarArr = this.f12654v;
            int length = e0VarArr.length;
            while (i11 < length) {
                e0VarArr[i11].s();
                i11++;
            }
            this.f12646n.e();
        } else {
            this.f12646n.f();
            e0[] e0VarArr2 = this.f12654v;
            int length2 = e0VarArr2.length;
            while (i11 < length2) {
                e0VarArr2[i11].Y();
                i11++;
            }
        }
        return j11;
    }

    @Override // l2.t
    public s0 track(int i11, int i12) {
        return U(new e(i11, false));
    }
}
