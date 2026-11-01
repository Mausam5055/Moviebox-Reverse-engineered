package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class r2 implements Handler.Callback, androidx.media3.exoplayer.source.q.a, j2.e0.a, q3.d, n.a, t3.a, androidx.media3.exoplayer.h.a {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final long f12488e0 = androidx.media3.common.util.a1.y1(10000);
    private final boolean A;
    private final androidx.media3.exoplayer.h B;
    private c4 C;
    private r3 D;
    private e E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean K;
    private int L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    private int Q;
    private h R;
    private long S;
    private long T;
    private int U;
    private boolean V;
    private ExoPlaybackException W;
    private long X;
    private ExoPlayer.c Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a4[] f12489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y3[] f12491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean[] f12493c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean f12494c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j2.e0 f12495d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j2.f0 f12497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final u2 f12498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.e f12499g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.media3.common.util.p f12500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final s3 f12501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Looper f12502j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.media3.common.e0.c f12503k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.media3.common.e0.b f12504l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f12505m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f12506n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final n f12507o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList f12508p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.media3.common.util.i f12509q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final f f12510r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b3 f12511s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final q3 f12512t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final t2 f12513u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final long f12514v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final y1.f4 f12515w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final boolean f12516x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final y1.a f12517y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final androidx.media3.common.util.p f12518z;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private long f12492b0 = C.TIME_UNSET;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private float f12496d0 = 1.0f;
    private long Y = C.TIME_UNSET;
    private long J = C.TIME_UNSET;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private androidx.media3.common.e0 f12490a0 = androidx.media3.common.e0.f9925a;

    class a implements w3.a {
        a() {
        }

        @Override // androidx.media3.exoplayer.w3.a
        public void a() {
            r2.this.O = true;
        }

        @Override // androidx.media3.exoplayer.w3.a
        public void b() {
            if (r2.this.f12516x || r2.this.P) {
                r2.this.f12500h.sendEmptyMessage(2);
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f12520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final g2.v f12521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f12522c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f12523d;

        private b(List list, g2.v vVar, int i11, long j11) {
            this.f12520a = list;
            this.f12521b = vVar;
            this.f12522c = i11;
            this.f12523d = j11;
        }

        /* synthetic */ b(List list, g2.v vVar, int i11, long j11, a aVar) {
            this(list, vVar, i11, j11);
        }
    }

    private static class c {
    }

    private static final class d implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t3 f12524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f12526c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Object f12527d;

        public d(t3 t3Var) {
            this.f12524a = t3Var;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            Object obj = this.f12527d;
            if ((obj == null) != (dVar.f12527d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i11 = this.f12525b - dVar.f12525b;
            return i11 != 0 ? i11 : androidx.media3.common.util.a1.n(this.f12526c, dVar.f12526c);
        }

        public void b(int i11, long j11, Object obj) {
            this.f12525b = i11;
            this.f12526c = j11;
            this.f12527d = obj;
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f12528a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public r3 f12529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f12530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f12531d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f12532e;

        public e(r3 r3Var) {
            this.f12529b = r3Var;
        }

        public void b(int i11) {
            this.f12528a |= i11 > 0;
            this.f12530c += i11;
        }

        public void c(r3 r3Var) {
            this.f12528a |= this.f12529b != r3Var;
            this.f12529b = r3Var;
        }

        public void d(int i11) {
            if (this.f12531d && this.f12532e != 5) {
                androidx.media3.common.util.a.a(i11 == 5);
                return;
            }
            this.f12528a = true;
            this.f12531d = true;
            this.f12532e = i11;
        }
    }

    public interface f {
        void a(e eVar);
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.r.b f12533a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f12534b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f12535c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f12536d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f12537e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f12538f;

        public g(androidx.media3.exoplayer.source.r.b bVar, long j11, long j12, boolean z10, boolean z11, boolean z12) {
            this.f12533a = bVar;
            this.f12534b = j11;
            this.f12535c = j12;
            this.f12536d = z10;
            this.f12537e = z11;
            this.f12538f = z12;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.e0 f12539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12540b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f12541c;

        public h(androidx.media3.common.e0 e0Var, int i11, long j11) {
            this.f12539a = e0Var;
            this.f12540b = i11;
            this.f12541c = j11;
        }
    }

    public r2(Context context, w3[] w3VarArr, w3[] w3VarArr2, j2.e0 e0Var, j2.f0 f0Var, u2 u2Var, androidx.media3.exoplayer.upstream.e eVar, int i11, boolean z10, y1.a aVar, c4 c4Var, t2 t2Var, long j11, boolean z11, boolean z12, Looper looper, androidx.media3.common.util.i iVar, f fVar, y1.f4 f4Var, s3 s3Var, ExoPlayer.c cVar) {
        this.f12510r = fVar;
        this.f12495d = e0Var;
        this.f12497e = f0Var;
        this.f12498f = u2Var;
        this.f12499g = eVar;
        this.L = i11;
        this.M = z10;
        this.C = c4Var;
        this.f12513u = t2Var;
        this.f12514v = j11;
        this.X = j11;
        this.G = z11;
        this.f12516x = z12;
        this.f12509q = iVar;
        this.f12515w = f4Var;
        this.Z = cVar;
        this.f12517y = aVar;
        this.f12505m = u2Var.h(f4Var);
        this.f12506n = u2Var.i(f4Var);
        r3 r3VarK = r3.k(f0Var);
        this.D = r3VarK;
        this.E = new e(r3VarK);
        this.f12491b = new y3[w3VarArr.length];
        this.f12493c = new boolean[w3VarArr.length];
        y3.a aVarD = e0Var.d();
        this.f12489a = new a4[w3VarArr.length];
        boolean z13 = false;
        for (int i12 = 0; i12 < w3VarArr.length; i12++) {
            w3VarArr[i12].g(i12, f4Var, iVar);
            this.f12491b[i12] = w3VarArr[i12].getCapabilities();
            if (aVarD != null) {
                this.f12491b[i12].n(aVarD);
            }
            w3 w3Var = w3VarArr2[i12];
            if (w3Var != null) {
                w3Var.g(w3VarArr.length + i12, f4Var, iVar);
                z13 = true;
            }
            this.f12489a[i12] = new a4(w3VarArr[i12], w3VarArr2[i12], i12);
        }
        this.A = z13;
        this.f12507o = new n(this, iVar);
        this.f12508p = new ArrayList();
        this.f12503k = new androidx.media3.common.e0.c();
        this.f12504l = new androidx.media3.common.e0.b();
        e0Var.e(this, eVar);
        this.V = true;
        androidx.media3.common.util.p pVarCreateHandler = iVar.createHandler(looper, null);
        this.f12518z = pVarCreateHandler;
        this.f12511s = new b3(aVar, pVarCreateHandler, new y2.a() { // from class: androidx.media3.exoplayer.o2
            @Override // androidx.media3.exoplayer.y2.a
            public final y2 a(z2 z2Var, long j12) {
                return this.f12299a.v(z2Var, j12);
            }
        }, cVar);
        this.f12512t = new q3(this, aVar, pVarCreateHandler, f4Var);
        s3 s3Var2 = s3Var == null ? new s3() : s3Var;
        this.f12501i = s3Var2;
        Looper looperA = s3Var2.a();
        this.f12502j = looperA;
        this.f12500h = iVar.createHandler(looperA, this);
        this.B = new androidx.media3.exoplayer.h(context, looperA, this);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0188  */
    private void A() throws ExoPlaybackException {
        boolean z10;
        boolean z11;
        int i11;
        long jUptimeMillis = this.f12509q.uptimeMillis();
        this.f12500h.removeMessages(2);
        O1();
        int i12 = this.D.f12547e;
        if (i12 == 1 || i12 == 4) {
            return;
        }
        y2 y2VarU = this.f12511s.u();
        if (y2VarU == null) {
            T0(jUptimeMillis);
            return;
        }
        androidx.media3.common.util.q0.a("doSomeWork");
        T1();
        if (y2VarU.f13373f) {
            this.T = androidx.media3.common.util.a1.R0(this.f12509q.elapsedRealtime());
            y2VarU.f13368a.discardBuffer(this.D.f12561s - this.f12505m, this.f12506n);
            z10 = true;
            z11 = true;
            int i13 = 0;
            while (true) {
                a4[] a4VarArr = this.f12489a;
                if (i13 >= a4VarArr.length) {
                    break;
                }
                a4 a4Var = a4VarArr[i13];
                if (a4Var.h() == 0) {
                    m0(i13, false);
                } else {
                    a4Var.I(this.S, this.T);
                    z10 = z10 && a4Var.t();
                    boolean zA = a4Var.a(y2VarU);
                    m0(i13, zA);
                    z11 = z11 && zA;
                    if (!zA) {
                        l0(i13);
                    }
                }
                i13++;
            }
        } else {
            y2VarU.f13368a.maybeThrowPrepareError();
            z10 = true;
            z11 = true;
        }
        long j11 = y2VarU.f13375h.f13392e;
        boolean z12 = z10 && y2VarU.f13373f && (j11 == C.TIME_UNSET || j11 <= this.D.f12561s);
        if (z12 && this.H) {
            this.H = false;
            m1(false, this.D.f12556n, false, 5);
        }
        if (z12 && y2VarU.f13375h.f13397j) {
            w1(4);
            J1();
        } else if (this.D.f12547e == 2 && E1(z11)) {
            w1(3);
            this.W = null;
            if (D1()) {
                W1(false, false);
                this.f12507o.f();
                G1();
            }
        } else if (this.D.f12547e == 3 && (this.Q != 0 ? !z11 : !b0())) {
            W1(D1(), false);
            w1(2);
            if (this.I) {
                z0();
                this.f12513u.c();
            }
            J1();
        }
        if (this.D.f12547e == 2) {
            int i14 = 0;
            while (true) {
                a4[] a4VarArr2 = this.f12489a;
                if (i14 >= a4VarArr2.length) {
                    break;
                }
                if (a4VarArr2[i14].w(y2VarU)) {
                    l0(i14);
                }
                i14++;
            }
            r3 r3Var = this.D;
            if (r3Var.f12549g || r3Var.f12560r >= 500000 || !a0(this.f12511s.n()) || !D1()) {
                this.Y = C.TIME_UNSET;
            } else if (this.Y == C.TIME_UNSET) {
                this.Y = this.f12509q.elapsedRealtime();
            } else if (this.f12509q.elapsedRealtime() - this.Y >= 4000) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.Y = C.TIME_UNSET;
        }
        boolean z13 = D1() && this.D.f12547e == 3;
        boolean z14 = this.P && this.O && z13;
        r3 r3Var2 = this.D;
        if (r3Var2.f12558p != z14) {
            this.D = r3Var2.i(z14);
        }
        this.O = false;
        if (!z14 && (i11 = this.D.f12547e) != 4 && (z13 || i11 == 2 || (i11 == 3 && this.Q != 0))) {
            T0(jUptimeMillis);
        }
        androidx.media3.common.util.q0.b();
    }

    private void A1(float f11) {
        this.f12496d0 = f11;
        float f12 = f11 * this.B.f();
        for (a4 a4Var : this.f12489a) {
            a4Var.T(f12);
        }
    }

    private void B(y2 y2Var, int i11, boolean z10, long j11) throws ExoPlaybackException {
        a4 a4Var = this.f12489a[i11];
        if (a4Var.x()) {
            return;
        }
        boolean z11 = y2Var == this.f12511s.u();
        j2.f0 f0VarP = y2Var.p();
        z3 z3Var = f0VarP.f65755b[i11];
        j2.z zVar = f0VarP.f65756c[i11];
        boolean z12 = D1() && this.D.f12547e == 3;
        boolean z13 = !z10 && z12;
        this.Q++;
        a4Var.e(z3Var, zVar, y2Var.f13370c[i11], this.S, z13, z11, j11, y2Var.m(), y2Var.f13375h.f13388a, this.f12507o);
        a4Var.n(11, new a(), y2Var);
        if (z12 && z11) {
            a4Var.U();
        }
    }

    private boolean B1() {
        y2 y2VarU;
        y2 y2VarK;
        return D1() && !this.H && (y2VarU = this.f12511s.u()) != null && (y2VarK = y2VarU.k()) != null && this.S >= y2VarK.n() && y2VarK.f13376i;
    }

    private void C() throws ExoPlaybackException {
        D(new boolean[this.f12489a.length], this.f12511s.y().n());
    }

    private void C0() {
        this.E.b(1);
        K0(false, false, false, true);
        this.f12498f.c(this.f12515w);
        w1(this.D.f12543a.q() ? 4 : 2);
        Q1();
        this.f12512t.w(this.f12499g.b());
        this.f12500h.sendEmptyMessage(2);
    }

    private boolean C1() {
        if (!a0(this.f12511s.n())) {
            return false;
        }
        y2 y2VarN = this.f12511s.n();
        long jM = M(y2VarN.l());
        u2.a aVar = new u2.a(this.f12515w, this.D.f12543a, y2VarN.f13375h.f13388a, y2VarN == this.f12511s.u() ? y2VarN.C(this.S) : y2VarN.C(this.S) - y2VarN.f13375h.f13389b, jM, this.f12507o.getPlaybackParameters().f10566a, this.D.f12554l, this.I, F1(this.D.f12543a, y2VarN.f13375h.f13388a) ? this.f12513u.b() : C.TIME_UNSET, this.J);
        boolean zF = this.f12498f.f(aVar);
        y2 y2VarU = this.f12511s.u();
        if (zF || !y2VarU.f13373f || jM >= 500000) {
            return zF;
        }
        if (this.f12505m <= 0 && !this.f12506n) {
            return zF;
        }
        y2VarU.f13368a.discardBuffer(this.D.f12561s, false);
        return this.f12498f.f(aVar);
    }

    private void D(boolean[] zArr, long j11) throws ExoPlaybackException {
        y2 y2VarY = this.f12511s.y();
        j2.f0 f0VarP = y2VarY.p();
        for (int i11 = 0; i11 < this.f12489a.length; i11++) {
            if (!f0VarP.c(i11)) {
                this.f12489a[i11].L();
            }
        }
        for (int i12 = 0; i12 < this.f12489a.length; i12++) {
            if (f0VarP.c(i12) && !this.f12489a[i12].w(y2VarY)) {
                B(y2VarY, i12, zArr[i12], j11);
            }
        }
    }

    private boolean D1() {
        r3 r3Var = this.D;
        return r3Var.f12554l && r3Var.f12556n == 0;
    }

    private void E0() {
        try {
            K0(true, false, true, false);
            F0();
            this.f12498f.b(this.f12515w);
            this.B.i();
            this.f12495d.j();
            w1(1);
            this.f12501i.b();
            synchronized (this) {
                this.F = true;
                notifyAll();
            }
        } catch (Throwable th2) {
            this.f12501i.b();
            synchronized (this) {
                this.F = true;
                notifyAll();
                throw th2;
            }
        }
    }

    private boolean E1(boolean z10) {
        if (this.Q == 0) {
            return b0();
        }
        boolean z11 = false;
        if (!z10) {
            return false;
        }
        if (!this.D.f12549g) {
            return true;
        }
        y2 y2VarU = this.f12511s.u();
        long jB = F1(this.D.f12543a, y2VarU.f13375h.f13388a) ? this.f12513u.b() : C.TIME_UNSET;
        y2 y2VarN = this.f12511s.n();
        boolean z12 = y2VarN.s() && y2VarN.f13375h.f13397j;
        if (y2VarN.f13375h.f13388a.b() && !y2VarN.f13373f) {
            z11 = true;
        }
        if (z12 || z11) {
            return true;
        }
        return this.f12498f.a(new u2.a(this.f12515w, this.D.f12543a, y2VarU.f13375h.f13388a, y2VarU.C(this.S), M(y2VarN.j()), this.f12507o.getPlaybackParameters().f10566a, this.D.f12554l, this.I, jB, this.J));
    }

    private ImmutableList F(j2.z[] zVarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z10 = false;
        for (j2.z zVar : zVarArr) {
            if (zVar != null) {
                androidx.media3.common.x xVar = zVar.getFormat(0).f10158l;
                if (xVar == null) {
                    aVar.a(new androidx.media3.common.x(new androidx.media3.common.x.a[0]));
                } else {
                    aVar.a(xVar);
                    z10 = true;
                }
            }
        }
        return z10 ? aVar.e() : ImmutableList.of();
    }

    private void F0() {
        for (int i11 = 0; i11 < this.f12489a.length; i11++) {
            this.f12491b[i11].f();
            this.f12489a[i11].H();
        }
    }

    private boolean F1(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        if (bVar.b() || e0Var.q()) {
            return false;
        }
        e0Var.n(e0Var.h(bVar.f12883a, this.f12504l).f9936c, this.f12503k);
        if (!this.f12503k.f()) {
            return false;
        }
        androidx.media3.common.e0.c cVar = this.f12503k;
        return cVar.f9959i && cVar.f9956f != C.TIME_UNSET;
    }

    private long G() {
        r3 r3Var = this.D;
        return H(r3Var.f12543a, r3Var.f12544b.f12883a, r3Var.f12561s);
    }

    private void G0(int i11, int i12, g2.v vVar) throws Throwable {
        this.E.b(1);
        T(this.f12512t.A(i11, i12, vVar), false);
    }

    private void G1() {
        y2 y2VarU = this.f12511s.u();
        if (y2VarU == null) {
            return;
        }
        j2.f0 f0VarP = y2VarU.p();
        for (int i11 = 0; i11 < this.f12489a.length; i11++) {
            if (f0VarP.c(i11)) {
                this.f12489a[i11].U();
            }
        }
    }

    private long H(androidx.media3.common.e0 e0Var, Object obj, long j11) {
        e0Var.n(e0Var.h(obj, this.f12504l).f9936c, this.f12503k);
        androidx.media3.common.e0.c cVar = this.f12503k;
        if (cVar.f9956f != C.TIME_UNSET && cVar.f()) {
            androidx.media3.common.e0.c cVar2 = this.f12503k;
            if (cVar2.f9959i) {
                return androidx.media3.common.util.a1.R0(cVar2.a() - this.f12503k.f9956f) - (j11 + this.f12504l.o());
            }
        }
        return C.TIME_UNSET;
    }

    private long I(y2 y2Var) {
        if (y2Var == null) {
            return 0L;
        }
        long jM = y2Var.m();
        if (!y2Var.f13373f) {
            return jM;
        }
        int i11 = 0;
        while (true) {
            a4[] a4VarArr = this.f12489a;
            if (i11 >= a4VarArr.length) {
                return jM;
            }
            if (a4VarArr[i11].w(y2Var)) {
                long jK = this.f12489a[i11].k(y2Var);
                if (jK == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jM = Math.max(jK, jM);
            }
            i11++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void I0() throws ExoPlaybackException {
        boolean z10;
        float f11 = this.f12507o.getPlaybackParameters().f10566a;
        y2 y2VarU = this.f12511s.u();
        y2 y2VarY = this.f12511s.y();
        int i11 = 1;
        j2.f0 f0Var = null;
        boolean z11 = true;
        while (y2VarU != null && y2VarU.f13373f) {
            r3 r3Var = this.D;
            j2.f0 f0VarZ = y2VarU.z(f11, r3Var.f12543a, r3Var.f12554l);
            if (y2VarU == this.f12511s.u()) {
                f0Var = f0VarZ;
            }
            if (!f0VarZ.a(y2VarU.p())) {
                if (z11) {
                    y2 y2VarU2 = this.f12511s.u();
                    boolean z12 = (this.f12511s.O(y2VarU2) & i11) != 0 ? i11 : false;
                    boolean[] zArr = new boolean[this.f12489a.length];
                    long jB = y2VarU2.b((j2.f0) androidx.media3.common.util.a.e(f0Var), this.D.f12561s, z12, zArr);
                    r3 r3Var2 = this.D;
                    int i12 = (r3Var2.f12547e == 4 || jB == r3Var2.f12561s) ? 0 : i11;
                    r3 r3Var3 = this.D;
                    this.D = X(r3Var3.f12544b, jB, r3Var3.f12545c, r3Var3.f12546d, i12, 5);
                    if (i12 != 0) {
                        M0(jB);
                    }
                    x();
                    boolean[] zArr2 = new boolean[this.f12489a.length];
                    int i13 = 0;
                    while (true) {
                        a4[] a4VarArr = this.f12489a;
                        if (i13 >= a4VarArr.length) {
                            break;
                        }
                        int iH = a4VarArr[i13].h();
                        zArr2[i13] = this.f12489a[i13].x();
                        this.f12489a[i13].B(y2VarU2.f13370c[i13], this.f12507o, this.S, zArr[i13]);
                        if (iH - this.f12489a[i13].h() > 0) {
                            m0(i13, false);
                        }
                        this.Q -= iH - this.f12489a[i13].h();
                        i13++;
                    }
                    D(zArr2, this.S);
                    y2VarU2.f13376i = true;
                    z10 = true;
                } else {
                    this.f12511s.O(y2VarU);
                    if (y2VarU.f13373f) {
                        long jMax = Math.max(y2VarU.f13375h.f13389b, y2VarU.C(this.S));
                        if (this.A && r() && this.f12511s.x() == y2VarU) {
                            x();
                        }
                        y2VarU.a(f0VarZ, jMax, false);
                    }
                    z10 = true;
                }
                R(z10);
                if (this.D.f12547e != 4) {
                    g0();
                    T1();
                    this.f12500h.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            int i14 = i11;
            if (y2VarU == y2VarY) {
                z11 = false;
            }
            y2VarU = y2VarU.k();
            i11 = i14;
        }
    }

    private void I1(boolean z10, boolean z11) {
        K0(z10 || !this.N, false, true, false);
        this.E.b(z11 ? 1 : 0);
        this.f12498f.d(this.f12515w);
        this.B.o(this.D.f12554l, 1);
        w1(1);
    }

    private Pair J(androidx.media3.common.e0 e0Var) {
        if (e0Var.q()) {
            return Pair.create(r3.l(), 0L);
        }
        Pair pairJ = e0Var.j(this.f12503k, this.f12504l, e0Var.a(this.M), C.TIME_UNSET);
        androidx.media3.exoplayer.source.r.b bVarR = this.f12511s.R(e0Var, pairJ.first, 0L);
        long jLongValue = ((Long) pairJ.second).longValue();
        if (bVarR.b()) {
            e0Var.h(bVarR.f12883a, this.f12504l);
            jLongValue = bVarR.f12885c == this.f12504l.l(bVarR.f12884b) ? this.f12504l.g() : 0L;
        }
        return Pair.create(bVarR, Long.valueOf(jLongValue));
    }

    private void J0() throws ExoPlaybackException {
        I0();
        V0(true);
    }

    private void J1() {
        this.f12507o.g();
        for (a4 a4Var : this.f12489a) {
            a4Var.W();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0093 A[PHI: r2 r6 r8
  0x0093: PHI (r2v2 androidx.media3.exoplayer.source.r$b) = (r2v1 androidx.media3.exoplayer.source.r$b), (r2v11 androidx.media3.exoplayer.source.r$b) binds: [B:25:0x0068, B:27:0x008d] A[DONT_GENERATE, DONT_INLINE]
  0x0093: PHI (r6v3 long) = (r6v2 long), (r6v10 long) binds: [B:25:0x0068, B:27:0x008d] A[DONT_GENERATE, DONT_INLINE]
  0x0093: PHI (r8v2 long) = (r8v1 long), (r8v5 long) binds: [B:25:0x0068, B:27:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00db A[PHI: r0
  0x00db: PHI (r0v11 androidx.media3.common.e0) = 
  (r0v10 androidx.media3.common.e0)
  (r0v10 androidx.media3.common.e0)
  (r0v16 androidx.media3.common.e0)
  (r0v16 androidx.media3.common.e0)
 binds: [B:31:0x00a0, B:33:0x00a4, B:35:0x00b5, B:37:0x00cc] A[DONT_GENERATE, DONT_INLINE]] */
    private void K0(boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        androidx.media3.common.e0 e0Var;
        androidx.media3.exoplayer.source.r.b bVar;
        this.f12500h.removeMessages(2);
        this.W = null;
        W1(false, true);
        this.f12507o.g();
        this.S = 1000000000000L;
        try {
            z();
        } catch (ExoPlaybackException | RuntimeException e11) {
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Disable failed.", e11);
        }
        if (z10) {
            for (a4 a4Var : this.f12489a) {
                try {
                    a4Var.L();
                } catch (RuntimeException e12) {
                    androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Reset failed.", e12);
                }
            }
        }
        this.Q = 0;
        r3 r3Var = this.D;
        androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12544b;
        long jLongValue = r3Var.f12561s;
        long j11 = (this.D.f12544b.b() || c0(this.D, this.f12504l)) ? this.D.f12545c : this.D.f12561s;
        if (z11) {
            this.R = null;
            Pair pairJ = J(this.D.f12543a);
            bVar2 = (androidx.media3.exoplayer.source.r.b) pairJ.first;
            jLongValue = ((Long) pairJ.second).longValue();
            boolean zEquals = bVar2.equals(this.D.f12544b);
            j11 = C.TIME_UNSET;
            z14 = zEquals ? false : true;
        }
        long j12 = jLongValue;
        long j13 = j11;
        this.f12511s.g();
        this.K = false;
        androidx.media3.common.e0 e0VarE = this.D.f12543a;
        if (z12 && (e0VarE instanceof u3)) {
            e0VarE = ((u3) e0VarE).E(this.f12512t.q());
            if (bVar2.f12884b != -1) {
                e0VarE.h(bVar2.f12883a, this.f12504l);
                if (e0VarE.n(this.f12504l.f9936c, this.f12503k).f()) {
                    e0Var = e0VarE;
                    bVar = new androidx.media3.exoplayer.source.r.b(bVar2.f12883a, bVar2.f12886d);
                } else {
                    e0Var = e0VarE;
                    bVar = bVar2;
                }
            } else {
                e0Var = e0VarE;
                bVar = bVar2;
            }
        } else {
            e0Var = e0VarE;
            bVar = bVar2;
        }
        r3 r3Var2 = this.D;
        int i11 = r3Var2.f12547e;
        ExoPlaybackException exoPlaybackException = z13 ? null : r3Var2.f12548f;
        g2.z zVar = z14 ? g2.z.f63264d : r3Var2.f12550h;
        j2.f0 f0Var = z14 ? this.f12497e : r3Var2.f12551i;
        List listOf = z14 ? ImmutableList.of() : r3Var2.f12552j;
        r3 r3Var3 = this.D;
        this.D = new r3(e0Var, bVar, j13, j12, i11, exoPlaybackException, false, zVar, f0Var, listOf, bVar, r3Var3.f12554l, r3Var3.f12555m, r3Var3.f12556n, r3Var3.f12557o, j12, 0L, j12, 0L, false);
        if (z12) {
            this.f12511s.N();
            this.f12512t.y();
        }
    }

    private void K1() {
        y2 y2VarN = this.f12511s.n();
        boolean z10 = this.K || (y2VarN != null && y2VarN.f13368a.isLoading());
        r3 r3Var = this.D;
        if (z10 != r3Var.f12549g) {
            this.D = r3Var.b(z10);
        }
    }

    private long L() {
        return M(this.D.f12559q);
    }

    private void L0() {
        y2 y2VarU = this.f12511s.u();
        this.H = y2VarU != null && y2VarU.f13375h.f13396i && this.G;
    }

    private void L1(androidx.media3.exoplayer.source.r.b bVar, g2.z zVar, j2.f0 f0Var) {
        y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12511s.n());
        this.f12498f.g(new u2.a(this.f12515w, this.D.f12543a, bVar, y2Var == this.f12511s.u() ? y2Var.C(this.S) : y2Var.C(this.S) - y2Var.f13375h.f13389b, M(y2Var.j()), this.f12507o.getPlaybackParameters().f10566a, this.D.f12554l, this.I, F1(this.D.f12543a, y2Var.f13375h.f13388a) ? this.f12513u.b() : C.TIME_UNSET, this.J), zVar, f0Var.f65756c);
    }

    private long M(long j11) {
        y2 y2VarN = this.f12511s.n();
        if (y2VarN == null) {
            return 0L;
        }
        return Math.max(0L, j11 - y2VarN.C(this.S));
    }

    private void M0(long j11) {
        y2 y2VarU = this.f12511s.u();
        long jD = y2VarU == null ? j11 + 1000000000000L : y2VarU.D(j11);
        this.S = jD;
        this.f12507o.d(jD);
        for (a4 a4Var : this.f12489a) {
            a4Var.M(y2VarU, this.S);
        }
        x0();
    }

    private void N(int i11) {
        r3 r3Var = this.D;
        S1(r3Var.f12554l, i11, r3Var.f12556n, r3Var.f12555m);
    }

    private static void N0(androidx.media3.common.e0 e0Var, d dVar, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        int i11 = e0Var.n(e0Var.h(dVar.f12527d, bVar).f9936c, cVar).f9965o;
        Object obj = e0Var.g(i11, bVar, true).f9935b;
        long j11 = bVar.f9937d;
        dVar.b(i11, j11 != C.TIME_UNSET ? j11 - 1 : Long.MAX_VALUE, obj);
    }

    private void N1(int i11, int i12, List list) throws Throwable {
        this.E.b(1);
        T(this.f12512t.E(i11, i12, list), false);
    }

    private void O() {
        A1(this.f12496d0);
    }

    private static boolean O0(d dVar, androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2, int i11, boolean z10, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        Object obj = dVar.f12527d;
        if (obj == null) {
            Pair pairR0 = R0(e0Var, new h(dVar.f12524a.g(), dVar.f12524a.c(), dVar.f12524a.e() == Long.MIN_VALUE ? C.TIME_UNSET : androidx.media3.common.util.a1.R0(dVar.f12524a.e())), false, i11, z10, cVar, bVar);
            if (pairR0 == null) {
                return false;
            }
            dVar.b(e0Var.b(pairR0.first), ((Long) pairR0.second).longValue(), pairR0.first);
            if (dVar.f12524a.e() == Long.MIN_VALUE) {
                N0(e0Var, dVar, cVar, bVar);
            }
            return true;
        }
        int iB = e0Var.b(obj);
        if (iB == -1) {
            return false;
        }
        if (dVar.f12524a.e() == Long.MIN_VALUE) {
            N0(e0Var, dVar, cVar, bVar);
            return true;
        }
        dVar.f12525b = iB;
        e0Var2.h(dVar.f12527d, bVar);
        if (bVar.f9939f && e0Var2.n(bVar.f9936c, cVar).f9964n == e0Var2.b(dVar.f12527d)) {
            Pair pairJ = e0Var.j(cVar, bVar, e0Var.h(dVar.f12527d, bVar).f9936c, dVar.f12526c + bVar.o());
            dVar.b(e0Var.b(pairJ.first), ((Long) pairJ.second).longValue(), pairJ.first);
        }
        return true;
    }

    private void O1() throws ExoPlaybackException {
        if (this.D.f12543a.q() || !this.f12512t.t()) {
            return;
        }
        boolean zO0 = o0();
        s0();
        t0();
        u0();
        q0();
        r0(zO0);
    }

    private void P(androidx.media3.exoplayer.source.q qVar) {
        if (this.f12511s.F(qVar)) {
            this.f12511s.L(this.S);
            g0();
        } else if (this.f12511s.G(qVar)) {
            h0();
        }
    }

    private void P0(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2) {
        if (e0Var.q() && e0Var2.q()) {
            return;
        }
        for (int size = this.f12508p.size() - 1; size >= 0; size--) {
            if (!O0((d) this.f12508p.get(size), e0Var, e0Var2, this.L, this.M, this.f12503k, this.f12504l)) {
                ((d) this.f12508p.get(size)).f12524a.j(false);
                this.f12508p.remove(size);
            }
        }
        Collections.sort(this.f12508p);
    }

    private static int P1(int i11, int i12) {
        if (i11 == -1) {
            return 2;
        }
        if (i12 == 2) {
            return 1;
        }
        return i12;
    }

    private void Q(IOException iOException, int i11) {
        ExoPlaybackException exoPlaybackExceptionCreateForSource = ExoPlaybackException.createForSource(iOException, i11);
        y2 y2VarU = this.f12511s.u();
        if (y2VarU != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(y2VarU.f13375h.f13388a);
        }
        androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForSource);
        I1(false, false);
        this.D = this.D.f(exoPlaybackExceptionCreateForSource);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0150  */
    /* JADX WARN: Code duplicated, block: B:52:0x016e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0184  */
    /* JADX WARN: Code duplicated, block: B:69:0x019d  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x01d9  */
    private static g Q0(androidx.media3.common.e0 e0Var, r3 r3Var, h hVar, b3 b3Var, int i11, boolean z10, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        androidx.media3.exoplayer.source.r.b bVar2;
        int i12;
        androidx.media3.exoplayer.source.r.b bVar3;
        int i13;
        long jLongValue;
        boolean z11;
        boolean z12;
        boolean z13;
        int iA;
        boolean z14;
        long j11;
        androidx.media3.exoplayer.source.r.b bVarR;
        int i14;
        boolean z15;
        boolean z16;
        androidx.media3.exoplayer.source.r.b bVar4;
        int i15;
        int iA2;
        boolean z17;
        boolean z18;
        boolean z19;
        if (e0Var.q()) {
            return new g(r3.l(), 0L, C.TIME_UNSET, false, true, false);
        }
        androidx.media3.exoplayer.source.r.b bVar5 = r3Var.f12544b;
        Object obj = bVar5.f12883a;
        boolean zC0 = c0(r3Var, bVar);
        long j12 = (r3Var.f12544b.b() || zC0) ? r3Var.f12545c : r3Var.f12561s;
        if (hVar != null) {
            bVar2 = bVar5;
            i12 = -1;
            Pair pairR0 = R0(e0Var, hVar, true, i11, z10, cVar, bVar);
            if (pairR0 == null) {
                iA2 = e0Var.a(z10);
                jLongValue = j12;
                z17 = false;
                z18 = false;
                z19 = true;
            } else {
                if (hVar.f12541c == C.TIME_UNSET) {
                    iA2 = e0Var.h(pairR0.first, bVar).f9936c;
                    jLongValue = j12;
                    z17 = false;
                } else {
                    obj = pairR0.first;
                    jLongValue = ((Long) pairR0.second).longValue();
                    iA2 = -1;
                    z17 = true;
                }
                z18 = r3Var.f12547e == 4;
                z19 = false;
            }
            z13 = z17;
            z11 = z18;
            z12 = z19;
            i13 = iA2;
        } else {
            bVar2 = bVar5;
            i12 = -1;
            if (!r3Var.f12543a.q()) {
                if (e0Var.b(obj) == -1) {
                    int iS0 = S0(cVar, bVar, i11, z10, obj, r3Var.f12543a, e0Var);
                    if (iS0 == -1) {
                        iS0 = e0Var.a(z10);
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    i13 = iS0;
                    z12 = z14;
                    jLongValue = j12;
                    z11 = false;
                    z13 = false;
                } else if (j12 == C.TIME_UNSET) {
                    iA = e0Var.h(obj, bVar).f9936c;
                } else if (zC0) {
                    bVar3 = bVar2;
                    r3Var.f12543a.h(bVar3.f12883a, bVar);
                    if (r3Var.f12543a.n(bVar.f9936c, cVar).f9964n == r3Var.f12543a.b(bVar3.f12883a)) {
                        Pair pairJ = e0Var.j(cVar, bVar, e0Var.h(obj, bVar).f9936c, j12 + bVar.o());
                        obj = pairJ.first;
                        jLongValue = ((Long) pairJ.second).longValue();
                    } else {
                        jLongValue = j12;
                    }
                    i13 = -1;
                    z11 = false;
                    z12 = false;
                    z13 = true;
                } else {
                    bVar3 = bVar2;
                    i13 = -1;
                    jLongValue = j12;
                    z11 = false;
                    z12 = false;
                    z13 = false;
                }
                if (i13 != i12) {
                    Pair pairJ2 = e0Var.j(cVar, bVar, i13, C.TIME_UNSET);
                    obj = pairJ2.first;
                    jLongValue = ((Long) pairJ2.second).longValue();
                    j11 = -9223372036854775807L;
                } else {
                    j11 = jLongValue;
                }
                bVarR = b3Var.R(e0Var, obj, jLongValue);
                i14 = bVarR.f12887e;
                if (i14 != i12 || ((i15 = bVar3.f12887e) != i12 && i14 >= i15)) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = (bVar3.f12883a.equals(obj) || bVar3.b() || bVarR.b() || !z15) ? false : true;
                bVar4 = bVar3;
                boolean Z = Z(zC0, bVar3, j12, bVarR, e0Var.h(obj, bVar), j11);
                if (z16 || Z) {
                    bVarR = bVar4;
                }
                if (bVarR.b()) {
                    if (bVarR.equals(bVar4)) {
                        jLongValue = r3Var.f12561s;
                    } else {
                        e0Var.h(bVarR.f12883a, bVar);
                        if (bVarR.f12885c == bVar.l(bVarR.f12884b)) {
                            jLongValue = bVar.g();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new g(bVarR, jLongValue, j11, z11, z12, z13);
            }
            iA = e0Var.a(z10);
            i13 = iA;
            jLongValue = j12;
            z11 = false;
            z12 = false;
            z13 = false;
        }
        bVar3 = bVar2;
        if (i13 != i12) {
            Pair pairJ3 = e0Var.j(cVar, bVar, i13, C.TIME_UNSET);
            obj = pairJ3.first;
            jLongValue = ((Long) pairJ3.second).longValue();
            j11 = -9223372036854775807L;
        } else {
            j11 = jLongValue;
        }
        bVarR = b3Var.R(e0Var, obj, jLongValue);
        i14 = bVarR.f12887e;
        if (i14 != i12) {
            z15 = true;
        } else {
            z15 = true;
        }
        if (bVar3.f12883a.equals(obj)) {
        }
        bVar4 = bVar3;
        boolean Z2 = Z(zC0, bVar3, j12, bVarR, e0Var.h(obj, bVar), j11);
        if (z16) {
            bVarR = bVar4;
        } else {
            bVarR = bVar4;
        }
        if (bVarR.b()) {
            if (bVarR.equals(bVar4)) {
                jLongValue = r3Var.f12561s;
            } else {
                e0Var.h(bVarR.f12883a, bVar);
                if (bVarR.f12885c == bVar.l(bVarR.f12884b)) {
                    jLongValue = bVar.g();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new g(bVarR, jLongValue, j11, z11, z12, z13);
    }

    private void Q1() {
        r3 r3Var = this.D;
        R1(r3Var.f12554l, r3Var.f12556n, r3Var.f12555m);
    }

    private void R(boolean z10) {
        y2 y2VarN = this.f12511s.n();
        androidx.media3.exoplayer.source.r.b bVar = y2VarN == null ? this.D.f12544b : y2VarN.f13375h.f13388a;
        boolean zEquals = this.D.f12553k.equals(bVar);
        if (!zEquals) {
            this.D = this.D.c(bVar);
        }
        r3 r3Var = this.D;
        r3Var.f12559q = y2VarN == null ? r3Var.f12561s : y2VarN.j();
        this.D.f12560r = L();
        if ((!zEquals || z10) && y2VarN != null && y2VarN.f13373f) {
            L1(y2VarN.f13375h.f13388a, y2VarN.o(), y2VarN.p());
        }
    }

    private static Pair R0(androidx.media3.common.e0 e0Var, h hVar, boolean z10, int i11, boolean z11, androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar) {
        int iS0;
        androidx.media3.common.e0 e0Var2 = hVar.f12539a;
        if (e0Var.q()) {
            return null;
        }
        androidx.media3.common.e0 e0Var3 = e0Var2.q() ? e0Var : e0Var2;
        try {
            Pair pairJ = e0Var3.j(cVar, bVar, hVar.f12540b, hVar.f12541c);
            if (e0Var.equals(e0Var3)) {
                return pairJ;
            }
            if (e0Var.b(pairJ.first) != -1) {
                return (e0Var3.h(pairJ.first, bVar).f9939f && e0Var3.n(bVar.f9936c, cVar).f9964n == e0Var3.b(pairJ.first)) ? e0Var.j(cVar, bVar, e0Var.h(pairJ.first, bVar).f9936c, hVar.f12541c) : pairJ;
            }
            if (z10 && (iS0 = S0(cVar, bVar, i11, z11, pairJ.first, e0Var3, e0Var)) != -1) {
                return e0Var.j(cVar, bVar, iS0, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    private void R1(boolean z10, int i11, int i12) {
        S1(z10, this.B.o(z10, this.D.f12547e), i11, i12);
    }

    private void S(y2 y2Var) throws ExoPlaybackException {
        if (!y2Var.f13373f) {
            float f11 = this.f12507o.getPlaybackParameters().f10566a;
            r3 r3Var = this.D;
            y2Var.q(f11, r3Var.f12543a, r3Var.f12554l);
        }
        L1(y2Var.f13375h.f13388a, y2Var.o(), y2Var.p());
        if (y2Var == this.f12511s.u()) {
            M0(y2Var.f13375h.f13389b);
            C();
            y2Var.f13376i = true;
            r3 r3Var2 = this.D;
            androidx.media3.exoplayer.source.r.b bVar = r3Var2.f12544b;
            long j11 = y2Var.f13375h.f13389b;
            this.D = X(bVar, j11, r3Var2.f12545c, j11, false, 5);
        }
        g0();
    }

    static int S0(androidx.media3.common.e0.c cVar, androidx.media3.common.e0.b bVar, int i11, boolean z10, Object obj, androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2) {
        Object obj2 = e0Var.n(e0Var.h(obj, bVar).f9936c, cVar).f9951a;
        for (int i12 = 0; i12 < e0Var2.p(); i12++) {
            if (e0Var2.n(i12, cVar).f9951a.equals(obj2)) {
                return i12;
            }
        }
        int iB = e0Var.b(obj);
        int i13 = e0Var.i();
        int iD = iB;
        int iB2 = -1;
        for (int i14 = 0; i14 < i13 && iB2 == -1; i14++) {
            iD = e0Var.d(iD, bVar, cVar, i11, z10);
            if (iD == -1) {
                break;
            }
            iB2 = e0Var2.b(e0Var.m(iD));
        }
        if (iB2 == -1) {
            return -1;
        }
        return e0Var2.f(iB2, bVar).f9936c;
    }

    private void S1(boolean z10, int i11, int i12, int i13) {
        boolean z11 = z10 && i11 != -1;
        int iP1 = P1(i11, i13);
        int iV1 = V1(i11, i12);
        r3 r3Var = this.D;
        if (r3Var.f12554l == z11 && r3Var.f12556n == iV1 && r3Var.f12555m == iP1) {
            return;
        }
        this.D = r3Var.e(z11, iP1, iV1);
        W1(false, false);
        y0(z11);
        if (!D1()) {
            J1();
            T1();
            this.f12511s.L(this.S);
            return;
        }
        int i14 = this.D.f12547e;
        if (i14 == 3) {
            this.f12507o.f();
            G1();
            this.f12500h.sendEmptyMessage(2);
        } else if (i14 == 2) {
            this.f12500h.sendEmptyMessage(2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:106:0x01df  */
    /* JADX WARN: Code duplicated, block: B:110:0x0207  */
    /* JADX WARN: Code duplicated, block: B:89:0x019c  */
    /* JADX WARN: Code duplicated, block: B:90:0x019e  */
    /* JADX WARN: Code duplicated, block: B:95:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:97:0x01bf A[ADDED_TO_REGION] */
    private void T(androidx.media3.common.e0 e0Var, boolean z10) throws Throwable {
        int i11;
        h hVar;
        long j11;
        h hVar2;
        boolean z11;
        int i12;
        boolean z12;
        long j12;
        long jX0;
        g gVarQ0 = Q0(e0Var, this.D, this.R, this.f12511s, this.L, this.M, this.f12503k, this.f12504l);
        androidx.media3.exoplayer.source.r.b bVar = gVarQ0.f12533a;
        long j13 = gVarQ0.f12535c;
        boolean z13 = gVarQ0.f12536d;
        long j14 = gVarQ0.f12534b;
        boolean z14 = (this.D.f12544b.equals(bVar) && j14 == this.D.f12561s) ? false : true;
        try {
            if (gVarQ0.f12537e) {
                if (this.D.f12547e != 1) {
                    w1(4);
                }
                K0(false, false, false, true);
            }
            try {
                for (a4 a4Var : this.f12489a) {
                    a4Var.R(e0Var);
                }
                try {
                    if (z14) {
                        z12 = false;
                        j12 = j13;
                        i12 = 4;
                        jX0 = j14;
                        if (!e0Var.q()) {
                            for (y2 y2VarU = this.f12511s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
                                if (y2VarU.f13375h.f13388a.equals(bVar)) {
                                    y2VarU.f13375h = this.f12511s.z(e0Var, y2VarU.f13375h);
                                    y2VarU.E();
                                }
                            }
                            jX0 = X0(bVar, jX0, z13);
                        }
                    } else {
                        try {
                            i12 = 4;
                            z12 = false;
                            j12 = j13;
                            jX0 = j14;
                            int iX = this.f12511s.X(e0Var, this.S, this.f12511s.y() == null ? 0L : I(this.f12511s.y()), (!r() || this.f12511s.x() == null) ? 0L : I(this.f12511s.x()));
                            if ((iX & 1) != 0) {
                                V0(false);
                            } else if ((iX & 2) != 0) {
                                x();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            j13 = j13;
                            i11 = 4;
                            j13 = j14;
                            hVar = null;
                            r3 r3Var = this.D;
                            androidx.media3.common.e0 e0Var2 = r3Var.f12543a;
                            androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12544b;
                            if (gVarQ0.f12538f) {
                                j11 = j13;
                            } else {
                                j11 = -9223372036854775807L;
                            }
                            hVar2 = hVar;
                            U1(e0Var, bVar, e0Var2, bVar2, j11, false);
                            if (z14 || j13 != this.D.f12545c) {
                                r3 r3Var2 = this.D;
                                Object obj = r3Var2.f12544b.f12883a;
                                androidx.media3.common.e0 e0Var3 = r3Var2.f12543a;
                                if (z14 || !z10 || e0Var3.q() || e0Var3.h(obj, this.f12504l).f9939f) {
                                    z11 = false;
                                } else {
                                    z11 = true;
                                }
                                this.D = X(bVar, j13, j13, this.D.f12546d, z11, e0Var.b(obj) == -1 ? i11 : 3);
                            }
                            L0();
                            P0(e0Var, this.D.f12543a);
                            this.D = this.D.j(e0Var);
                            if (!e0Var.q()) {
                                this.R = hVar2;
                            }
                            R(false);
                            this.f12500h.sendEmptyMessage(2);
                            throw th;
                        }
                    }
                    r3 r3Var3 = this.D;
                    U1(e0Var, bVar, r3Var3.f12543a, r3Var3.f12544b, gVarQ0.f12538f ? jX0 : -9223372036854775807L, false);
                    if (z14 || j12 != this.D.f12545c) {
                        r3 r3Var4 = this.D;
                        Object obj2 = r3Var4.f12544b.f12883a;
                        androidx.media3.common.e0 e0Var4 = r3Var4.f12543a;
                        this.D = X(bVar, jX0, j12, this.D.f12546d, (!z14 || !z10 || e0Var4.q() || e0Var4.h(obj2, this.f12504l).f9939f) ? z12 : true, e0Var.b(obj2) == -1 ? i12 : 3);
                    }
                    L0();
                    P0(e0Var, this.D.f12543a);
                    this.D = this.D.j(e0Var);
                    if (!e0Var.q()) {
                        this.R = null;
                    }
                    R(z12);
                    this.f12500h.sendEmptyMessage(2);
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                i11 = 4;
                j13 = j14;
                hVar = null;
                r3 r3Var5 = this.D;
                androidx.media3.common.e0 e0Var5 = r3Var5.f12543a;
                androidx.media3.exoplayer.source.r.b bVar3 = r3Var5.f12544b;
                if (gVarQ0.f12538f) {
                    j11 = j13;
                } else {
                    j11 = -9223372036854775807L;
                }
                hVar2 = hVar;
                U1(e0Var, bVar, e0Var5, bVar3, j11, false);
                if (z14) {
                    r3 r3Var6 = this.D;
                    Object obj3 = r3Var6.f12544b.f12883a;
                    androidx.media3.common.e0 e0Var6 = r3Var6.f12543a;
                    if (z14) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    this.D = X(bVar, j13, j13, this.D.f12546d, z11, e0Var.b(obj3) == -1 ? i11 : 3);
                } else {
                    r3 r3Var7 = this.D;
                    Object obj4 = r3Var7.f12544b.f12883a;
                    androidx.media3.common.e0 e0Var7 = r3Var7.f12543a;
                    if (z14) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    this.D = X(bVar, j13, j13, this.D.f12546d, z11, e0Var.b(obj4) == -1 ? i11 : 3);
                }
                L0();
                P0(e0Var, this.D.f12543a);
                this.D = this.D.j(e0Var);
                if (!e0Var.q()) {
                    this.R = hVar2;
                }
                R(false);
                this.f12500h.sendEmptyMessage(2);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            i11 = 4;
        }
    }

    private void T0(long j11) {
        long jMin = (this.D.f12547e != 3 || (!this.f12516x && D1())) ? f12488e0 : 1000L;
        if (this.f12516x && D1()) {
            for (a4 a4Var : this.f12489a) {
                jMin = Math.min(jMin, androidx.media3.common.util.a1.y1(a4Var.j(this.S, this.T)));
            }
            y2 y2VarK = this.f12511s.u() != null ? this.f12511s.u().k() : null;
            if (y2VarK != null && this.S + (androidx.media3.common.util.a1.R0(jMin) * this.D.f12557o.f10566a) >= y2VarK.n()) {
                jMin = Math.min(jMin, f12488e0);
            }
        }
        this.f12500h.sendEmptyMessageAtTime(2, j11 + jMin);
    }

    private void T1() {
        y2 y2VarU = this.f12511s.u();
        if (y2VarU == null) {
            return;
        }
        long discontinuity = y2VarU.f13373f ? y2VarU.f13368a.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            if (!y2VarU.s()) {
                this.f12511s.O(y2VarU);
                R(false);
                g0();
            }
            M0(discontinuity);
            if (discontinuity != this.D.f12561s) {
                r3 r3Var = this.D;
                this.D = X(r3Var.f12544b, discontinuity, r3Var.f12545c, discontinuity, true, 5);
            }
        } else {
            long jH = this.f12507o.h(y2VarU != this.f12511s.y());
            this.S = jH;
            long jC = y2VarU.C(jH);
            n0(this.D.f12561s, jC);
            if (this.f12507o.i()) {
                boolean z10 = !this.E.f12531d;
                r3 r3Var2 = this.D;
                this.D = X(r3Var2.f12544b, jC, r3Var2.f12545c, jC, z10, 6);
            } else {
                this.D.o(jC);
            }
        }
        this.D.f12559q = this.f12511s.n().j();
        this.D.f12560r = L();
        r3 r3Var3 = this.D;
        if (r3Var3.f12554l && r3Var3.f12547e == 3 && F1(r3Var3.f12543a, r3Var3.f12544b) && this.D.f12557o.f10566a == 1.0f) {
            float fA = this.f12513u.a(G(), this.D.f12560r);
            if (this.f12507o.getPlaybackParameters().f10566a != fA) {
                g1(this.D.f12557o.b(fA));
                V(this.D.f12557o, this.f12507o.getPlaybackParameters().f10566a, false, false);
            }
        }
    }

    private void U(androidx.media3.exoplayer.source.q qVar) throws ExoPlaybackException {
        if (this.f12511s.F(qVar)) {
            S((y2) androidx.media3.common.util.a.e(this.f12511s.n()));
            return;
        }
        y2 y2VarV = this.f12511s.v(qVar);
        if (y2VarV != null) {
            androidx.media3.common.util.a.g(!y2VarV.f13373f);
            float f11 = this.f12507o.getPlaybackParameters().f10566a;
            r3 r3Var = this.D;
            y2VarV.q(f11, r3Var.f12543a, r3Var.f12554l);
            if (this.f12511s.G(qVar)) {
                h0();
            }
        }
    }

    private void U1(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var2, androidx.media3.exoplayer.source.r.b bVar2, long j11, boolean z10) {
        if (!F1(e0Var, bVar)) {
            androidx.media3.common.z zVar = bVar.b() ? androidx.media3.common.z.f10563d : this.D.f12557o;
            if (this.f12507o.getPlaybackParameters().equals(zVar)) {
                return;
            }
            g1(zVar);
            V(this.D.f12557o, zVar.f10566a, false, false);
            return;
        }
        e0Var.n(e0Var.h(bVar.f12883a, this.f12504l).f9936c, this.f12503k);
        this.f12513u.e((androidx.media3.common.t.g) androidx.media3.common.util.a1.i(this.f12503k.f9960j));
        if (j11 != C.TIME_UNSET) {
            this.f12513u.d(H(e0Var, bVar.f12883a, j11));
            return;
        }
        if (!Objects.equals(!e0Var2.q() ? e0Var2.n(e0Var2.h(bVar2.f12883a, this.f12504l).f9936c, this.f12503k).f9951a : null, this.f12503k.f9951a) || z10) {
            this.f12513u.d(C.TIME_UNSET);
        }
    }

    private void V(androidx.media3.common.z zVar, float f11, boolean z10, boolean z11) {
        if (z10) {
            if (z11) {
                this.E.b(1);
            }
            this.D = this.D.g(zVar);
        }
        Y1(zVar.f10566a);
        for (a4 a4Var : this.f12489a) {
            a4Var.Q(f11, zVar.f10566a);
        }
    }

    private void V0(boolean z10) throws ExoPlaybackException {
        androidx.media3.exoplayer.source.r.b bVar = this.f12511s.u().f13375h.f13388a;
        long jY0 = Y0(bVar, this.D.f12561s, true, false);
        if (jY0 != this.D.f12561s) {
            r3 r3Var = this.D;
            this.D = X(bVar, jY0, r3Var.f12545c, r3Var.f12546d, z10, 5);
        }
    }

    private static int V1(int i11, int i12) {
        if (i11 == 0) {
            return 1;
        }
        if (i12 == 1) {
            return 0;
        }
        return i12;
    }

    private void W(androidx.media3.common.z zVar, boolean z10) {
        V(zVar, zVar.f10566a, true, z10);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c5 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cf A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0127  */
    private void W0(h hVar) throws Throwable {
        long jLongValue;
        long j11;
        boolean z10;
        androidx.media3.exoplayer.source.r.b bVar;
        long jG;
        long j12;
        long j13;
        long jB;
        boolean z11;
        long jX0;
        long j14;
        y2 y2VarU;
        r3 r3Var;
        int i11;
        this.E.b(1);
        Pair pairR0 = R0(this.D.f12543a, hVar, true, this.L, this.M, this.f12503k, this.f12504l);
        try {
            if (pairR0 != null) {
                Object obj = pairR0.first;
                jLongValue = ((Long) pairR0.second).longValue();
                long j15 = hVar.f12541c == C.TIME_UNSET ? -9223372036854775807L : jLongValue;
                androidx.media3.exoplayer.source.r.b bVarR = this.f12511s.R(this.D.f12543a, obj, jLongValue);
                if (bVarR.b()) {
                    this.D.f12543a.h(bVarR.f12883a, this.f12504l);
                    jG = this.f12504l.l(bVarR.f12884b) == bVarR.f12885c ? this.f12504l.g() : 0L;
                    j12 = j15;
                    bVar = bVarR;
                    z10 = true;
                } else {
                    j11 = j15;
                    z10 = hVar.f12541c == C.TIME_UNSET;
                    bVar = bVarR;
                }
                if (this.D.f12543a.q()) {
                    if (pairR0 == null) {
                        if (this.D.f12547e != 1) {
                            w1(4);
                        }
                        K0(false, true, false, true);
                    } else {
                        if (bVar.equals(this.D.f12544b)) {
                            y2VarU = this.f12511s.u();
                            if (y2VarU == null && y2VarU.f13373f && jG != 0) {
                                jB = y2VarU.f13368a.b(jG, this.C);
                            } else {
                                jB = jG;
                            }
                            if (androidx.media3.common.util.a1.y1(jB) == androidx.media3.common.util.a1.y1(this.D.f12561s) && ((i11 = (r3Var = this.D).f12547e) == 2 || i11 == 3)) {
                                long j16 = r3Var.f12561s;
                                this.D = X(bVar, j16, j12, j16, z10, 2);
                                return;
                            }
                        } else {
                            jB = jG;
                        }
                        if (this.D.f12547e == 4) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        jX0 = X0(bVar, jB, z11);
                        z10 |= jG != jX0;
                        try {
                            r3 r3Var2 = this.D;
                            androidx.media3.common.e0 e0Var = r3Var2.f12543a;
                            U1(e0Var, bVar, e0Var, r3Var2.f12544b, j12, true);
                            j14 = jX0;
                        } catch (Throwable th2) {
                            th = th2;
                            j13 = jX0;
                            this.D = X(bVar, j13, j12, j13, z10, 2);
                            throw th;
                        }
                    }
                    this.D = X(bVar, j14, j12, j14, z10, 2);
                    return;
                }
                this.R = hVar;
                j14 = jG;
                this.D = X(bVar, j14, j12, j14, z10, 2);
                return;
            }
            Pair pairJ = J(this.D.f12543a);
            bVar = (androidx.media3.exoplayer.source.r.b) pairJ.first;
            jLongValue = ((Long) pairJ.second).longValue();
            z10 = !this.D.f12543a.q();
            j11 = -9223372036854775807L;
            if (this.D.f12543a.q()) {
                if (pairR0 == null) {
                    if (this.D.f12547e != 1) {
                        w1(4);
                    }
                    K0(false, true, false, true);
                } else {
                    if (bVar.equals(this.D.f12544b)) {
                        y2VarU = this.f12511s.u();
                        if (y2VarU == null) {
                            jB = jG;
                        } else {
                            jB = jG;
                        }
                        if (androidx.media3.common.util.a1.y1(jB) == androidx.media3.common.util.a1.y1(this.D.f12561s)) {
                            long j17 = r3Var.f12561s;
                            this.D = X(bVar, j17, j12, j17, z10, 2);
                            return;
                        }
                    } else {
                        jB = jG;
                    }
                    if (this.D.f12547e == 4) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    jX0 = X0(bVar, jB, z11);
                    z10 |= jG != jX0;
                    r3 r3Var3 = this.D;
                    androidx.media3.common.e0 e0Var2 = r3Var3.f12543a;
                    U1(e0Var2, bVar, e0Var2, r3Var3.f12544b, j12, true);
                    j14 = jX0;
                }
                this.D = X(bVar, j14, j12, j14, z10, 2);
                return;
            }
            this.R = hVar;
            j14 = jG;
            this.D = X(bVar, j14, j12, j14, z10, 2);
            return;
        } catch (Throwable th3) {
            th = th3;
            j13 = jG;
        }
        jG = jLongValue;
        j12 = j11;
    }

    private void W1(boolean z10, boolean z11) {
        this.I = z10;
        this.J = (!z10 || z11) ? C.TIME_UNSET : this.f12509q.elapsedRealtime();
    }

    private r3 X(androidx.media3.exoplayer.source.r.b bVar, long j11, long j12, long j13, boolean z10, int i11) {
        List listOf;
        g2.z zVar;
        j2.f0 f0Var;
        this.V = (!this.V && j11 == this.D.f12561s && bVar.equals(this.D.f12544b)) ? false : true;
        L0();
        r3 r3Var = this.D;
        g2.z zVar2 = r3Var.f12550h;
        j2.f0 f0Var2 = r3Var.f12551i;
        List list = r3Var.f12552j;
        if (this.f12512t.t()) {
            y2 y2VarU = this.f12511s.u();
            g2.z zVarO = y2VarU == null ? g2.z.f63264d : y2VarU.o();
            j2.f0 f0VarP = y2VarU == null ? this.f12497e : y2VarU.p();
            ImmutableList immutableListF = F(f0VarP.f65756c);
            if (y2VarU != null) {
                z2 z2Var = y2VarU.f13375h;
                if (z2Var.f13390c != j12) {
                    y2VarU.f13375h = z2Var.a(j12);
                }
            }
            p0();
            zVar = zVarO;
            f0Var = f0VarP;
            listOf = immutableListF;
        } else if (bVar.equals(this.D.f12544b)) {
            listOf = list;
            zVar = zVar2;
            f0Var = f0Var2;
        } else {
            zVar = g2.z.f63264d;
            f0Var = this.f12497e;
            listOf = ImmutableList.of();
        }
        if (z10) {
            this.E.d(i11);
        }
        return this.D.d(bVar, j11, j12, j13, L(), zVar, f0Var, listOf);
    }

    private long X0(androidx.media3.exoplayer.source.r.b bVar, long j11, boolean z10) {
        return Y0(bVar, j11, this.f12511s.u() != this.f12511s.y(), z10);
    }

    private boolean X1() throws ExoPlaybackException {
        y2 y2VarY = this.f12511s.y();
        j2.f0 f0VarP = y2VarY.p();
        boolean z10 = true;
        int i11 = 0;
        while (true) {
            a4[] a4VarArr = this.f12489a;
            if (i11 >= a4VarArr.length) {
                break;
            }
            int iH = a4VarArr[i11].h();
            int iJ = this.f12489a[i11].J(y2VarY, f0VarP, this.f12507o);
            if ((iJ & 2) != 0 && this.P) {
                j1(false);
            }
            this.Q -= iH - this.f12489a[i11].h();
            z10 &= (iJ & 1) != 0;
            i11++;
        }
        if (z10) {
            for (int i12 = 0; i12 < this.f12489a.length; i12++) {
                if (f0VarP.c(i12) && !this.f12489a[i12].w(y2VarY)) {
                    B(y2VarY, i12, false, y2VarY.n());
                }
            }
        }
        return z10;
    }

    private boolean Y() {
        y2 y2VarY = this.f12511s.y();
        if (!y2VarY.f13373f) {
            return false;
        }
        int i11 = 0;
        while (true) {
            a4[] a4VarArr = this.f12489a;
            if (i11 >= a4VarArr.length) {
                return true;
            }
            if (!a4VarArr[i11].o(y2VarY)) {
                return false;
            }
            i11++;
        }
    }

    private long Y0(androidx.media3.exoplayer.source.r.b bVar, long j11, boolean z10, boolean z11) throws ExoPlaybackException {
        J1();
        W1(false, true);
        if (z11 || this.D.f12547e == 3) {
            w1(2);
        }
        y2 y2VarU = this.f12511s.u();
        y2 y2VarK = y2VarU;
        while (y2VarK != null && !bVar.equals(y2VarK.f13375h.f13388a)) {
            y2VarK = y2VarK.k();
        }
        if (z10 || y2VarU != y2VarK || (y2VarK != null && y2VarK.D(j11) < 0)) {
            z();
            if (y2VarK != null) {
                while (this.f12511s.u() != y2VarK) {
                    this.f12511s.b();
                }
                this.f12511s.O(y2VarK);
                y2VarK.B(1000000000000L);
                C();
                y2VarK.f13376i = true;
            }
        }
        x();
        if (y2VarK != null) {
            this.f12511s.O(y2VarK);
            if (!y2VarK.f13373f) {
                y2VarK.f13375h = y2VarK.f13375h.b(j11);
            } else if (y2VarK.f13374g) {
                j11 = y2VarK.f13368a.seekToUs(j11);
                y2VarK.f13368a.discardBuffer(j11 - this.f12505m, this.f12506n);
            }
            M0(j11);
            g0();
        } else {
            this.f12511s.g();
            M0(j11);
        }
        R(false);
        this.f12500h.sendEmptyMessage(2);
        return j11;
    }

    private void Y1(float f11) {
        for (y2 y2VarU = this.f12511s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (j2.z zVar : y2VarU.p().f65756c) {
                if (zVar != null) {
                    zVar.onPlaybackSpeed(f11);
                }
            }
        }
    }

    private static boolean Z(boolean z10, androidx.media3.exoplayer.source.r.b bVar, long j11, androidx.media3.exoplayer.source.r.b bVar2, androidx.media3.common.e0.b bVar3, long j12) {
        if (z10 || j11 != j12 || !bVar.f12883a.equals(bVar2.f12883a)) {
            return false;
        }
        if (bVar.b() && bVar3.s(bVar.f12884b)) {
            return (bVar3.h(bVar.f12884b, bVar.f12885c) == 4 || bVar3.h(bVar.f12884b, bVar.f12885c) == 2) ? false : true;
        }
        return bVar2.b() && bVar3.s(bVar2.f12884b);
    }

    private void Z0(t3 t3Var) {
        if (t3Var.e() == C.TIME_UNSET) {
            a1(t3Var);
            return;
        }
        if (this.D.f12543a.q()) {
            this.f12508p.add(new d(t3Var));
            return;
        }
        d dVar = new d(t3Var);
        androidx.media3.common.e0 e0Var = this.D.f12543a;
        if (!O0(dVar, e0Var, e0Var, this.L, this.M, this.f12503k, this.f12504l)) {
            t3Var.j(false);
        } else {
            this.f12508p.add(dVar);
            Collections.sort(this.f12508p);
        }
    }

    private synchronized void Z1(com.google.common.base.q qVar, long j11) {
        long jElapsedRealtime = this.f12509q.elapsedRealtime() + j11;
        boolean z10 = false;
        while (!((Boolean) qVar.get()).booleanValue() && j11 > 0) {
            try {
                this.f12509q.a();
                wait(j11);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j11 = jElapsedRealtime - this.f12509q.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private boolean a0(y2 y2Var) {
        return (y2Var == null || y2Var.r() || y2Var.l() == Long.MIN_VALUE) ? false : true;
    }

    private void a1(t3 t3Var) {
        if (t3Var.b() != this.f12502j) {
            this.f12500h.obtainMessage(15, t3Var).a();
            return;
        }
        w(t3Var);
        int i11 = this.D.f12547e;
        if (i11 == 3 || i11 == 2) {
            this.f12500h.sendEmptyMessage(2);
        }
    }

    private boolean b0() {
        y2 y2VarU = this.f12511s.u();
        long j11 = y2VarU.f13375h.f13392e;
        return y2VarU.f13373f && (j11 == C.TIME_UNSET || this.D.f12561s < j11 || !D1());
    }

    private void b1(final t3 t3Var) {
        Looper looperB = t3Var.b();
        if (looperB.getThread().isAlive()) {
            this.f12509q.createHandler(looperB, null).post(new Runnable() { // from class: androidx.media3.exoplayer.q2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12458a.f0(t3Var);
                }
            });
        } else {
            androidx.media3.common.util.u.h("TAG", "Trying to send message on a dead thread.");
            t3Var.j(false);
        }
    }

    private static boolean c0(r3 r3Var, androidx.media3.common.e0.b bVar) {
        androidx.media3.exoplayer.source.r.b bVar2 = r3Var.f12544b;
        androidx.media3.common.e0 e0Var = r3Var.f12543a;
        return e0Var.q() || e0Var.h(bVar2.f12883a, bVar).f9939f;
    }

    private void c1(long j11) {
        for (a4 a4Var : this.f12489a) {
            a4Var.N(j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(int i11, boolean z10) {
        this.f12517y.B(i11, this.f12489a[i11].m(), z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean e0() {
        return Boolean.valueOf(this.F);
    }

    private void e1(androidx.media3.common.c cVar, boolean z10) {
        this.f12495d.l(cVar);
        androidx.media3.exoplayer.h hVar = this.B;
        if (!z10) {
            cVar = null;
        }
        hVar.l(cVar);
        Q1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(t3 t3Var) {
        try {
            w(t3Var);
        } catch (ExoPlaybackException e11) {
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e11);
            throw new RuntimeException(e11);
        }
    }

    private void f1(boolean z10, AtomicBoolean atomicBoolean) {
        if (this.N != z10) {
            this.N = z10;
            if (!z10) {
                for (a4 a4Var : this.f12489a) {
                    a4Var.L();
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void g0() {
        boolean zC1 = C1();
        this.K = zC1;
        if (zC1) {
            y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12511s.n());
            y2Var.e(new v2.b().f(y2Var.C(this.S)).g(this.f12507o.getPlaybackParameters().f10566a).e(this.J).d());
        }
        K1();
    }

    private void g1(androidx.media3.common.z zVar) {
        this.f12500h.removeMessages(16);
        this.f12507o.b(zVar);
    }

    private void h0() {
        this.f12511s.J();
        y2 y2VarW = this.f12511s.w();
        if (y2VarW != null) {
            if ((!y2VarW.f13372e || y2VarW.f13373f) && !y2VarW.f13368a.isLoading()) {
                if (this.f12498f.e(this.D.f12543a, y2VarW.f13375h.f13388a, y2VarW.f13373f ? y2VarW.f13368a.getBufferedPositionUs() : 0L)) {
                    if (y2VarW.f13372e) {
                        y2VarW.e(new v2.b().f(y2VarW.C(this.S)).g(this.f12507o.getPlaybackParameters().f10566a).e(this.J).d());
                    } else {
                        y2VarW.v(this, y2VarW.f13375h.f13389b);
                    }
                }
            }
        }
    }

    private void h1(b bVar) throws Throwable {
        this.E.b(1);
        if (bVar.f12522c != -1) {
            this.R = new h(new u3(bVar.f12520a, bVar.f12521b), bVar.f12522c, bVar.f12523d);
        }
        T(this.f12512t.C(bVar.f12520a, bVar.f12521b), false);
    }

    private void i0() {
        for (a4 a4Var : this.f12489a) {
            a4Var.D();
        }
    }

    private void j0() {
        this.E.c(this.D);
        if (this.E.f12528a) {
            this.f12510r.a(this.E);
            this.E = new e(this.D);
        }
    }

    private void j1(boolean z10) {
        if (z10 == this.P) {
            return;
        }
        this.P = z10;
        if (z10 || !this.D.f12558p) {
            return;
        }
        this.f12500h.sendEmptyMessage(2);
    }

    private void k0() throws ExoPlaybackException {
        y2 y2VarX = this.f12511s.x();
        if (y2VarX == null) {
            return;
        }
        j2.f0 f0VarP = y2VarX.p();
        for (int i11 = 0; i11 < this.f12489a.length; i11++) {
            if (f0VarP.c(i11) && this.f12489a[i11].s() && !this.f12489a[i11].u()) {
                this.f12489a[i11].V();
                B(y2VarX, i11, false, y2VarX.n());
            }
        }
        if (r()) {
            this.f12492b0 = y2VarX.f13368a.readDiscontinuity();
            if (y2VarX.s()) {
                return;
            }
            this.f12511s.O(y2VarX);
            R(false);
            g0();
        }
    }

    private void k1(boolean z10) throws ExoPlaybackException {
        this.G = z10;
        L0();
        if (!this.H || this.f12511s.y() == this.f12511s.u()) {
            return;
        }
        V0(true);
        R(false);
    }

    private void l0(int i11) {
        a4 a4Var = this.f12489a[i11];
        try {
            a4Var.G((y2) androidx.media3.common.util.a.e(this.f12511s.u()));
        } catch (IOException | RuntimeException e11) {
            int iM = a4Var.m();
            if (iM != 3 && iM != 5) {
                throw e11;
            }
            j2.f0 f0VarP = this.f12511s.u().p();
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Disabling track due to error: " + androidx.media3.common.r.i(f0VarP.f65756c[i11].getSelectedFormat()), e11);
            j2.f0 f0Var = new j2.f0((z3[]) f0VarP.f65755b.clone(), (j2.z[]) f0VarP.f65756c.clone(), f0VarP.f65757d, f0VarP.f65758e);
            f0Var.f65755b[i11] = null;
            f0Var.f65756c[i11] = null;
            y(i11);
            this.f12511s.u().a(f0Var, this.D.f12561s, false);
        }
    }

    private void m0(final int i11, final boolean z10) {
        boolean[] zArr = this.f12493c;
        if (zArr[i11] != z10) {
            zArr[i11] = z10;
            this.f12518z.post(new Runnable() { // from class: androidx.media3.exoplayer.n2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12276a.d0(i11, z10);
                }
            });
        }
    }

    private void m1(boolean z10, int i11, boolean z11, int i12) {
        this.E.b(z11 ? 1 : 0);
        R1(z10, i11, i12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void n0(long j11, long j12) {
        if (this.f12508p.isEmpty() || this.D.f12544b.b()) {
            return;
        }
        if (this.V) {
            j11--;
            this.V = false;
        }
        r3 r3Var = this.D;
        int iB = r3Var.f12543a.b(r3Var.f12544b.f12883a);
        int iMin = Math.min(this.U, this.f12508p.size());
        d dVar = iMin > 0 ? (d) this.f12508p.get(iMin - 1) : null;
        while (dVar != null) {
            int i11 = dVar.f12525b;
            if (i11 <= iB && (i11 != iB || dVar.f12526c <= j11)) {
                break;
            }
            int i12 = iMin - 1;
            dVar = i12 > 0 ? (d) this.f12508p.get(iMin - 2) : null;
            iMin = i12;
        }
        if (iMin < this.f12508p.size()) {
            d dVar2 = (d) this.f12508p.get(iMin);
            while (dVar2 != null && dVar2.f12527d != null) {
                int i13 = dVar2.f12525b;
                if (i13 >= iB && (i13 != iB || dVar2.f12526c > j11)) {
                    break;
                }
                iMin++;
                dVar2 = iMin < this.f12508p.size() ? (d) this.f12508p.get(iMin) : null;
            }
            while (dVar2 != null && dVar2.f12527d != null && dVar2.f12525b == iB) {
                long j13 = dVar2.f12526c;
                if (j13 <= j11 || j13 > j12) {
                    break;
                }
                try {
                    a1(dVar2.f12524a);
                    if (dVar2.f12524a.a() || dVar2.f12524a.i()) {
                        this.f12508p.remove(iMin);
                    } else {
                        iMin++;
                    }
                    dVar2 = iMin < this.f12508p.size() ? (d) this.f12508p.get(iMin) : null;
                } catch (Throwable th2) {
                    if (dVar2.f12524a.a() || dVar2.f12524a.i()) {
                        this.f12508p.remove(iMin);
                    }
                    throw th2;
                }
            }
            this.U = iMin;
        }
    }

    private void o(b bVar, int i11) throws Throwable {
        this.E.b(1);
        q3 q3Var = this.f12512t;
        if (i11 == -1) {
            i11 = q3Var.r();
        }
        T(q3Var.f(i11, bVar.f12520a, bVar.f12521b), false);
    }

    private boolean o0() {
        z2 z2VarT;
        this.f12511s.L(this.S);
        boolean z10 = false;
        if (this.f12511s.U() && (z2VarT = this.f12511s.t(this.S, this.D)) != null) {
            y2 y2VarH = this.f12511s.h(z2VarT);
            if (!y2VarH.f13372e) {
                y2VarH.v(this, z2VarT.f13389b);
            } else if (y2VarH.f13373f) {
                this.f12500h.obtainMessage(8, y2VarH.f13368a).a();
            }
            if (this.f12511s.u() == y2VarH) {
                M0(z2VarT.f13389b);
            }
            R(false);
            z10 = true;
        }
        if (this.K) {
            this.K = a0(this.f12511s.n());
            K1();
        } else {
            g0();
        }
        return z10;
    }

    private void o1(androidx.media3.common.z zVar) {
        g1(zVar);
        W(this.f12507o.getPlaybackParameters(), true);
    }

    private void p0() {
        y2 y2VarU;
        boolean z10;
        if (this.f12511s.u() == this.f12511s.y() && (y2VarU = this.f12511s.u()) != null) {
            j2.f0 f0VarP = y2VarU.p();
            boolean z11 = false;
            int i11 = 0;
            boolean z12 = false;
            while (true) {
                if (i11 >= this.f12489a.length) {
                    z10 = true;
                    break;
                }
                if (f0VarP.c(i11)) {
                    if (this.f12489a[i11].m() != 1) {
                        z10 = false;
                        break;
                    } else if (f0VarP.f65755b[i11].f13399a != 0) {
                        z12 = true;
                    }
                }
                i11++;
            }
            if (z12 && z10) {
                z11 = true;
            }
            j1(z11);
        }
    }

    private void p1(ExoPlayer.c cVar) {
        this.Z = cVar;
        this.f12511s.W(this.D.f12543a, cVar);
    }

    private void q() {
        j2.f0 f0VarP = this.f12511s.u().p();
        for (int i11 = 0; i11 < this.f12489a.length; i11++) {
            if (f0VarP.c(i11)) {
                this.f12489a[i11].f();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    private void q0() {
        boolean z10;
        boolean z11 = false;
        while (B1()) {
            if (z11) {
                j0();
            }
            this.f12494c0 = false;
            y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12511s.b());
            if (this.D.f12544b.f12883a.equals(y2Var.f13375h.f13388a.f12883a)) {
                androidx.media3.exoplayer.source.r.b bVar = this.D.f12544b;
                if (bVar.f12884b == -1) {
                    androidx.media3.exoplayer.source.r.b bVar2 = y2Var.f13375h.f13388a;
                    if (bVar2.f12884b != -1 || bVar.f12887e == bVar2.f12887e) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            z2 z2Var = y2Var.f13375h;
            androidx.media3.exoplayer.source.r.b bVar3 = z2Var.f13388a;
            long j11 = z2Var.f13389b;
            this.D = X(bVar3, j11, z2Var.f13390c, j11, !z10, 0);
            L0();
            T1();
            if (r() && y2Var == this.f12511s.x()) {
                i0();
            }
            if (this.D.f12547e == 3) {
                G1();
            }
            q();
            z11 = true;
        }
    }

    private boolean r() {
        if (!this.A) {
            return false;
        }
        for (a4 a4Var : this.f12489a) {
            if (a4Var.u()) {
                return true;
            }
        }
        return false;
    }

    private void r0(boolean z10) {
        if (this.Z.f10986a == C.TIME_UNSET) {
            return;
        }
        if (z10 || !this.D.f12543a.equals(this.f12490a0)) {
            androidx.media3.common.e0 e0Var = this.D.f12543a;
            this.f12490a0 = e0Var;
            this.f12511s.B(e0Var);
        }
        h0();
    }

    private void r1(int i11) throws ExoPlaybackException {
        this.L = i11;
        int iY = this.f12511s.Y(this.D.f12543a, i11);
        if ((iY & 1) != 0) {
            V0(true);
        } else if ((iY & 2) != 0) {
            x();
        }
        R(false);
    }

    private void s0() throws ExoPlaybackException {
        y2 y2VarX;
        if (this.H || !this.A || this.f12494c0 || r() || (y2VarX = this.f12511s.x()) == null || y2VarX != this.f12511s.y() || y2VarX.k() == null || !y2VarX.k().f13373f) {
            return;
        }
        this.f12511s.c();
        k0();
    }

    private void s1(c4 c4Var) {
        this.C = c4Var;
    }

    private void t() throws ExoPlaybackException {
        J0();
    }

    private void t0() {
        y2 y2VarY = this.f12511s.y();
        if (y2VarY == null) {
            return;
        }
        int i11 = 0;
        if (y2VarY.k() == null || this.H) {
            if (y2VarY.f13375h.f13397j || this.H) {
                a4[] a4VarArr = this.f12489a;
                int length = a4VarArr.length;
                while (i11 < length) {
                    a4 a4Var = a4VarArr[i11];
                    if (a4Var.w(y2VarY) && a4Var.r(y2VarY)) {
                        long j11 = y2VarY.f13375h.f13392e;
                        a4Var.O(y2VarY, (j11 == C.TIME_UNSET || j11 == Long.MIN_VALUE) ? -9223372036854775807L : y2VarY.m() + y2VarY.f13375h.f13392e);
                    }
                    i11++;
                }
                return;
            }
            return;
        }
        if (Y()) {
            if (r() && this.f12511s.x() == this.f12511s.y()) {
                return;
            }
            if (y2VarY.k().f13373f || this.S >= y2VarY.k().n()) {
                j2.f0 f0VarP = y2VarY.p();
                y2 y2VarD = this.f12511s.d();
                j2.f0 f0VarP2 = y2VarD.p();
                androidx.media3.common.e0 e0Var = this.D.f12543a;
                U1(e0Var, y2VarD.f13375h.f13388a, e0Var, y2VarY.f13375h.f13388a, C.TIME_UNSET, false);
                if (y2VarD.f13373f && ((this.A && this.f12492b0 != C.TIME_UNSET) || y2VarD.f13368a.readDiscontinuity() != C.TIME_UNSET)) {
                    this.f12492b0 = C.TIME_UNSET;
                    boolean z10 = this.A && !this.f12494c0;
                    if (z10) {
                        for (int i12 = 0; i12 < this.f12489a.length; i12++) {
                            if (f0VarP2.c(i12) && !androidx.media3.common.y.a(f0VarP2.f65756c[i12].getSelectedFormat().f10161o, f0VarP2.f65756c[i12].getSelectedFormat().f10157k) && !this.f12489a[i12].u()) {
                                z10 = false;
                                break;
                            }
                        }
                    }
                    if (!z10) {
                        c1(y2VarD.n());
                        if (y2VarD.s()) {
                            return;
                        }
                        this.f12511s.O(y2VarD);
                        R(false);
                        g0();
                        return;
                    }
                }
                a4[] a4VarArr2 = this.f12489a;
                int length2 = a4VarArr2.length;
                while (i11 < length2) {
                    a4VarArr2[i11].F(f0VarP, f0VarP2, y2VarD.n());
                    i11++;
                }
            }
        }
    }

    private void u0() {
        y2 y2VarY = this.f12511s.y();
        if (y2VarY == null || this.f12511s.u() == y2VarY || y2VarY.f13376i || !X1()) {
            return;
        }
        this.f12511s.y().f13376i = true;
    }

    private void u1(boolean z10) throws ExoPlaybackException {
        this.M = z10;
        int iZ = this.f12511s.Z(this.D.f12543a, z10);
        if ((iZ & 1) != 0) {
            V0(true);
        } else if ((iZ & 2) != 0) {
            x();
        }
        R(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y2 v(z2 z2Var, long j11) {
        return new y2(this.f12491b, j11, this.f12495d, this.f12498f.getAllocator(), this.f12512t, z2Var, this.f12497e, this.Z.f10986a);
    }

    private void v0() throws Throwable {
        T(this.f12512t.i(), true);
    }

    private void v1(g2.v vVar) throws Throwable {
        this.E.b(1);
        T(this.f12512t.D(vVar), false);
    }

    private void w(t3 t3Var) {
        if (t3Var.i()) {
            return;
        }
        try {
            t3Var.f().handleMessage(t3Var.h(), t3Var.d());
        } finally {
            t3Var.j(true);
        }
    }

    private void w0(c cVar) {
        this.E.b(1);
        throw null;
    }

    private void w1(int i11) {
        r3 r3Var = this.D;
        if (r3Var.f12547e != i11) {
            if (i11 != 2) {
                this.Y = C.TIME_UNSET;
            }
            this.D = r3Var.h(i11);
        }
    }

    private void x() {
        if (this.A && r()) {
            for (a4 a4Var : this.f12489a) {
                int iH = a4Var.h();
                a4Var.c(this.f12507o);
                this.Q -= iH - a4Var.h();
            }
            this.f12492b0 = C.TIME_UNSET;
        }
    }

    private void x0() {
        for (y2 y2VarU = this.f12511s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (j2.z zVar : y2VarU.p().f65756c) {
                if (zVar != null) {
                    zVar.a();
                }
            }
        }
    }

    private void y(int i11) {
        int iH = this.f12489a[i11].h();
        this.f12489a[i11].b(this.f12507o);
        m0(i11, false);
        this.Q -= iH;
    }

    private void y0(boolean z10) {
        for (y2 y2VarU = this.f12511s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (j2.z zVar : y2VarU.p().f65756c) {
                if (zVar != null) {
                    zVar.b(z10);
                }
            }
        }
    }

    private void y1(Object obj, AtomicBoolean atomicBoolean) {
        for (a4 a4Var : this.f12489a) {
            a4Var.S(obj);
        }
        int i11 = this.D.f12547e;
        if (i11 == 3 || i11 == 2) {
            this.f12500h.sendEmptyMessage(2);
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void z() {
        for (int i11 = 0; i11 < this.f12489a.length; i11++) {
            y(i11);
        }
        this.f12492b0 = C.TIME_UNSET;
    }

    private void z0() {
        for (y2 y2VarU = this.f12511s.u(); y2VarU != null; y2VarU = y2VarU.k()) {
            for (j2.z zVar : y2VarU.p().f65756c) {
                if (zVar != null) {
                    zVar.c();
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.f0.a
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public void f(androidx.media3.exoplayer.source.q qVar) {
        this.f12500h.obtainMessage(9, qVar).a();
    }

    public void B0() {
        this.f12500h.obtainMessage(29).a();
    }

    public synchronized boolean D0() {
        if (!this.F && this.f12502j.getThread().isAlive()) {
            this.f12500h.sendEmptyMessage(7);
            Z1(new com.google.common.base.q() { // from class: androidx.media3.exoplayer.m2
                @Override // com.google.common.base.q
                public final Object get() {
                    return this.f12129a.e0();
                }
            }, this.f12514v);
            return this.F;
        }
        return true;
    }

    public void E(long j11) {
        this.X = j11;
    }

    public void H0(int i11, int i12, g2.v vVar) {
        this.f12500h.obtainMessage(20, i11, i12, vVar).a();
    }

    public void H1() {
        this.f12500h.obtainMessage(6).a();
    }

    public Looper K() {
        return this.f12502j;
    }

    public void M1(int i11, int i12, List list) {
        this.f12500h.obtainMessage(27, i11, i12, list).a();
    }

    public void U0(androidx.media3.common.e0 e0Var, int i11, long j11) {
        this.f12500h.obtainMessage(3, new h(e0Var, i11, j11)).a();
    }

    @Override // androidx.media3.exoplayer.q3.d
    public void a() {
        this.f12500h.removeMessages(2);
        this.f12500h.sendEmptyMessage(22);
    }

    @Override // j2.e0.a
    public void b(w3 w3Var) {
        this.f12500h.sendEmptyMessage(26);
    }

    @Override // androidx.media3.exoplayer.source.q.a
    public void c(androidx.media3.exoplayer.source.q qVar) {
        this.f12500h.obtainMessage(8, qVar).a();
    }

    public void d1(androidx.media3.common.c cVar, boolean z10) {
        this.f12500h.obtainMessage(31, z10 ? 1 : 0, 0, cVar).a();
    }

    @Override // androidx.media3.exoplayer.t3.a
    public synchronized void e(t3 t3Var) {
        if (!this.F && this.f12502j.getThread().isAlive()) {
            this.f12500h.obtainMessage(14, t3Var).a();
            return;
        }
        androidx.media3.common.util.u.h("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        t3Var.j(false);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x023b  */
    /* JADX WARN: Code duplicated, block: B:123:0x023f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0292  */
    /* JADX WARN: Code duplicated, block: B:145:0x02bc  */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        ExoPlaybackException exoPlaybackException;
        ExoPlaybackException exoPlaybackException2;
        int i11;
        y2 y2VarY;
        int i12 = 1000;
        try {
            switch (message.what) {
                case 1:
                    boolean z10 = message.arg1 != 0;
                    int i13 = message.arg2;
                    m1(z10, i13 >> 4, true, i13 & 15);
                    break;
                case 2:
                    A();
                    break;
                case 3:
                    W0((h) message.obj);
                    break;
                case 4:
                    o1((androidx.media3.common.z) message.obj);
                    break;
                case 5:
                    s1((c4) message.obj);
                    break;
                case 6:
                    I1(false, true);
                    break;
                case 7:
                    E0();
                    return true;
                case 8:
                    U((androidx.media3.exoplayer.source.q) message.obj);
                    break;
                case 9:
                    P((androidx.media3.exoplayer.source.q) message.obj);
                    break;
                case 10:
                    I0();
                    break;
                case 11:
                    r1(message.arg1);
                    break;
                case 12:
                    u1(message.arg1 != 0);
                    break;
                case 13:
                    f1(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    Z0((t3) message.obj);
                    break;
                case 15:
                    b1((t3) message.obj);
                    break;
                case 16:
                    W((androidx.media3.common.z) message.obj, false);
                    break;
                case 17:
                    h1((b) message.obj);
                    break;
                case 18:
                    o((b) message.obj, message.arg1);
                    break;
                case 19:
                    android.support.v4.media.session.c.a(message.obj);
                    w0(null);
                    break;
                case 20:
                    G0(message.arg1, message.arg2, (g2.v) message.obj);
                    break;
                case 21:
                    v1((g2.v) message.obj);
                    break;
                case 22:
                    v0();
                    break;
                case 23:
                    k1(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    t();
                    break;
                case 26:
                    J0();
                    break;
                case 27:
                    N1(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    p1((ExoPlayer.c) message.obj);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    C0();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    y1(pair.first, (AtomicBoolean) pair.second);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    e1((androidx.media3.common.c) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    A1(((Float) message.obj).floatValue());
                    break;
                case 33:
                    N(message.arg1);
                    break;
                case 34:
                    O();
                    break;
            }
        } catch (ParserException e11) {
            int i14 = e11.dataType;
            if (i14 == 1) {
                i12 = e11.contentIsMalformed ? 3001 : 3003;
            } else if (i14 == 4) {
                i12 = e11.contentIsMalformed ? 3002 : 3004;
            }
            Q(e11, i12);
        } catch (DataSourceException e12) {
            Q(e12, e12.reason);
        } catch (ExoPlaybackException e13) {
            ExoPlaybackException exoPlaybackExceptionCopyWithMediaPeriodId = e13;
            if (exoPlaybackExceptionCopyWithMediaPeriodId.type == 1 && (y2VarY = this.f12511s.y()) != null) {
                a4[] a4VarArr = this.f12489a;
                int i15 = exoPlaybackExceptionCopyWithMediaPeriodId.rendererIndex;
                exoPlaybackExceptionCopyWithMediaPeriodId = exoPlaybackExceptionCopyWithMediaPeriodId.copyWithMediaPeriodId((!a4VarArr[i15 % a4VarArr.length].z(i15) || y2VarY.k() == null) ? y2VarY.f13375h.f13388a : y2VarY.k().f13375h.f13388a);
            }
            if (exoPlaybackExceptionCopyWithMediaPeriodId.type == 1) {
                a4[] a4VarArr2 = this.f12489a;
                int i16 = exoPlaybackExceptionCopyWithMediaPeriodId.rendererIndex;
                if (a4VarArr2[i16 % a4VarArr2.length].z(i16)) {
                    this.f12494c0 = true;
                    x();
                    y2 y2VarX = this.f12511s.x();
                    y2 y2VarU = this.f12511s.u();
                    if (this.f12511s.u() != y2VarX) {
                        while (y2VarU != null && y2VarU.k() != y2VarX) {
                            y2VarU = y2VarU.k();
                        }
                    }
                    this.f12511s.O(y2VarU);
                    if (this.D.f12547e != 4) {
                        g0();
                        this.f12500h.sendEmptyMessage(2);
                    }
                } else {
                    exoPlaybackException = this.W;
                    if (exoPlaybackException != null) {
                        exoPlaybackException.addSuppressed(exoPlaybackExceptionCopyWithMediaPeriodId);
                        exoPlaybackExceptionCopyWithMediaPeriodId = this.W;
                    }
                    exoPlaybackException2 = exoPlaybackExceptionCopyWithMediaPeriodId;
                    if (exoPlaybackException2.type != 1 && this.f12511s.u() != this.f12511s.y()) {
                        while (this.f12511s.u() != this.f12511s.y()) {
                            this.f12511s.b();
                        }
                        y2 y2Var = (y2) androidx.media3.common.util.a.e(this.f12511s.u());
                        j0();
                        z2 z2Var = y2Var.f13375h;
                        androidx.media3.exoplayer.source.r.b bVar = z2Var.f13388a;
                        long j11 = z2Var.f13389b;
                        this.D = X(bVar, j11, z2Var.f13390c, j11, true, 0);
                    }
                    if (exoPlaybackException2.isRecoverable || !(this.W == null || (i11 = exoPlaybackException2.errorCode) == 5004 || i11 == 5003)) {
                        androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
                        I1(true, false);
                        this.D = this.D.f(exoPlaybackException2);
                    } else {
                        androidx.media3.common.util.u.i("ExoPlayerImplInternal", "Recoverable renderer error", exoPlaybackException2);
                        if (this.W == null) {
                            this.W = exoPlaybackException2;
                        }
                        androidx.media3.common.util.p pVar = this.f12500h;
                        pVar.b(pVar.obtainMessage(25, exoPlaybackException2));
                    }
                }
            } else {
                exoPlaybackException = this.W;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(exoPlaybackExceptionCopyWithMediaPeriodId);
                    exoPlaybackExceptionCopyWithMediaPeriodId = this.W;
                }
                exoPlaybackException2 = exoPlaybackExceptionCopyWithMediaPeriodId;
                if (exoPlaybackException2.type != 1) {
                }
                if (exoPlaybackException2.isRecoverable) {
                    androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
                    I1(true, false);
                    this.D = this.D.f(exoPlaybackException2);
                } else {
                    androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
                    I1(true, false);
                    this.D = this.D.f(exoPlaybackException2);
                }
            }
        } catch (DrmSession.DrmSessionException e14) {
            Q(e14, e14.errorCode);
        } catch (BehindLiveWindowException e15) {
            Q(e15, 1002);
        } catch (IOException e16) {
            Q(e16, 2000);
        } catch (RuntimeException e17) {
            ExoPlaybackException exoPlaybackExceptionCreateForUnexpected = ExoPlaybackException.createForUnexpected(e17, ((e17 instanceof IllegalStateException) || (e17 instanceof IllegalArgumentException)) ? 1004 : 1000);
            androidx.media3.common.util.u.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForUnexpected);
            I1(true, false);
            this.D = this.D.f(exoPlaybackExceptionCreateForUnexpected);
        }
        j0();
        return true;
    }

    public void i1(List list, int i11, long j11, g2.v vVar) {
        this.f12500h.obtainMessage(17, new b(list, vVar, i11, j11, null)).a();
    }

    public void l1(boolean z10, int i11, int i12) {
        this.f12500h.obtainMessage(1, z10 ? 1 : 0, i11 | (i12 << 4)).a();
    }

    public void n1(androidx.media3.common.z zVar) {
        this.f12500h.obtainMessage(4, zVar).a();
    }

    @Override // androidx.media3.exoplayer.n.a
    public void onPlaybackParametersChanged(androidx.media3.common.z zVar) {
        this.f12500h.obtainMessage(16, zVar).a();
    }

    @Override // j2.e0.a
    public void onTrackSelectionsInvalidated() {
        this.f12500h.sendEmptyMessage(10);
    }

    public void p(int i11, List list, g2.v vVar) {
        this.f12500h.obtainMessage(18, i11, 0, new b(list, vVar, -1, C.TIME_UNSET, null)).a();
    }

    public void q1(int i11) {
        this.f12500h.obtainMessage(11, i11, 0).a();
    }

    @Override // androidx.media3.exoplayer.h.a
    public void s(float f11) {
        this.f12500h.sendEmptyMessage(34);
    }

    public void t1(boolean z10) {
        this.f12500h.obtainMessage(12, z10 ? 1 : 0, 0).a();
    }

    @Override // androidx.media3.exoplayer.h.a
    public void u(int i11) {
        this.f12500h.obtainMessage(33, i11, 0).a();
    }

    public synchronized boolean x1(Object obj, long j11) {
        if (!this.F && this.f12502j.getThread().isAlive()) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.f12500h.obtainMessage(30, new Pair(obj, atomicBoolean)).a();
            if (j11 == C.TIME_UNSET) {
                return true;
            }
            Z1(new com.google.common.base.q() { // from class: androidx.media3.exoplayer.p2
                @Override // com.google.common.base.q
                public final Object get() {
                    return Boolean.valueOf(atomicBoolean.get());
                }
            }, j11);
            return atomicBoolean.get();
        }
        return true;
    }

    public void z1(float f11) {
        this.f12500h.obtainMessage(32, Float.valueOf(f11)).a();
    }
}
