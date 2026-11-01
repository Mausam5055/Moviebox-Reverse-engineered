package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Sets;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
final class l1 implements Handler.Callback, com.google.android.exoplayer2.source.n.a, la.q.a, h2.d, o.a, s2.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private h K;
    private long L;
    private int M;
    private boolean N;
    private ExoPlaybackException O;
    private long P;
    private long Q = C.TIME_UNSET;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x2[] f25191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f25192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z2[] f25193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final la.q f25194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final la.r f25195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t1 f25196f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f25197g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.o f25198h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final HandlerThread f25199i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Looper f25200j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final k3.d f25201k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final k3.b f25202l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f25203m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f25204n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final o f25205o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList f25206p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.e f25207q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final f f25208r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final e2 f25209s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final h2 f25210t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final s1 f25211u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final long f25212v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private c3 f25213w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private l2 f25214x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private e f25215y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f25216z;

    class a implements x2.a {
        a() {
        }

        @Override // com.google.android.exoplayer2.x2.a
        public void a() {
            l1.this.H = true;
        }

        @Override // com.google.android.exoplayer2.x2.a
        public void b() {
            l1.this.f25198h.sendEmptyMessage(2);
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f25218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final t9.t f25219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f25220c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f25221d;

        private b(List list, t9.t tVar, int i11, long j11) {
            this.f25218a = list;
            this.f25219b = tVar;
            this.f25220c = i11;
            this.f25221d = j11;
        }

        /* synthetic */ b(List list, t9.t tVar, int i11, long j11, a aVar) {
            this(list, tVar, i11, j11);
        }
    }

    private static class c {
    }

    private static final class d implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s2 f25222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f25224c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Object f25225d;

        public d(s2 s2Var) {
            this.f25222a = s2Var;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            Object obj = this.f25225d;
            if ((obj == null) != (dVar.f25225d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i11 = this.f25223b - dVar.f25223b;
            return i11 != 0 ? i11 : com.google.android.exoplayer2.util.p0.o(this.f25224c, dVar.f25224c);
        }

        public void b(int i11, long j11, Object obj) {
            this.f25223b = i11;
            this.f25224c = j11;
            this.f25225d = obj;
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f25226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public l2 f25227b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f25228c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f25229d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f25230e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f25231f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f25232g;

        public e(l2 l2Var) {
            this.f25227b = l2Var;
        }

        public void b(int i11) {
            this.f25226a |= i11 > 0;
            this.f25228c += i11;
        }

        public void c(int i11) {
            this.f25226a = true;
            this.f25231f = true;
            this.f25232g = i11;
        }

        public void d(l2 l2Var) {
            this.f25226a |= this.f25227b != l2Var;
            this.f25227b = l2Var;
        }

        public void e(int i11) {
            if (this.f25229d && this.f25230e != 5) {
                com.google.android.exoplayer2.util.a.a(i11 == 5);
                return;
            }
            this.f25226a = true;
            this.f25229d = true;
            this.f25230e = i11;
        }
    }

    public interface f {
        void a(e eVar);
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.o.b f25233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f25234b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f25235c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f25236d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f25237e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f25238f;

        public g(com.google.android.exoplayer2.source.o.b bVar, long j11, long j12, boolean z10, boolean z11, boolean z12) {
            this.f25233a = bVar;
            this.f25234b = j11;
            this.f25235c = j12;
            this.f25236d = z10;
            this.f25237e = z11;
            this.f25238f = z12;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final k3 f25239a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25240b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f25241c;

        public h(k3 k3Var, int i11, long j11) {
            this.f25239a = k3Var;
            this.f25240b = i11;
            this.f25241c = j11;
        }
    }

    public l1(x2[] x2VarArr, la.q qVar, la.r rVar, t1 t1Var, com.google.android.exoplayer2.upstream.e eVar, int i11, boolean z10, e9.a aVar, c3 c3Var, s1 s1Var, long j11, boolean z11, Looper looper, com.google.android.exoplayer2.util.e eVar2, f fVar, e9.u1 u1Var) {
        this.f25208r = fVar;
        this.f25191a = x2VarArr;
        this.f25194d = qVar;
        this.f25195e = rVar;
        this.f25196f = t1Var;
        this.f25197g = eVar;
        this.E = i11;
        this.F = z10;
        this.f25213w = c3Var;
        this.f25211u = s1Var;
        this.f25212v = j11;
        this.P = j11;
        this.A = z11;
        this.f25207q = eVar2;
        this.f25203m = t1Var.getBackBufferDurationUs();
        this.f25204n = t1Var.retainBackBufferFromKeyframe();
        l2 l2VarJ = l2.j(rVar);
        this.f25214x = l2VarJ;
        this.f25215y = new e(l2VarJ);
        this.f25193c = new z2[x2VarArr.length];
        for (int i12 = 0; i12 < x2VarArr.length; i12++) {
            x2VarArr[i12].g(i12, u1Var);
            this.f25193c[i12] = x2VarArr[i12].getCapabilities();
        }
        this.f25205o = new o(this, eVar2);
        this.f25206p = new ArrayList();
        this.f25192b = Sets.h();
        this.f25201k = new k3.d();
        this.f25202l = new k3.b();
        qVar.c(this, eVar);
        this.N = true;
        Handler handler = new Handler(looper);
        this.f25209s = new e2(aVar, handler);
        this.f25210t = new h2(this, aVar, handler, u1Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f25199i = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f25200j = looper2;
        this.f25198h = eVar2.createHandler(looper2, this);
    }

    private long A() {
        return B(this.f25214x.f25258p);
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
    private void A0(h hVar) throws Throwable {
        long jLongValue;
        long j11;
        boolean z10;
        com.google.android.exoplayer2.source.o.b bVar;
        long j12;
        long j13;
        long j14;
        long jA;
        boolean z11;
        long jB0;
        boolean z12;
        long j15;
        b2 b2VarP;
        l2 l2Var;
        int i11;
        this.f25215y.b(1);
        Pair pairV0 = v0(this.f25214x.f25243a, hVar, true, this.E, this.F, this.f25201k, this.f25202l);
        try {
            if (pairV0 != null) {
                Object obj = pairV0.first;
                jLongValue = ((Long) pairV0.second).longValue();
                long j16 = hVar.f25241c == C.TIME_UNSET ? -9223372036854775807L : jLongValue;
                com.google.android.exoplayer2.source.o.b bVarB = this.f25209s.B(this.f25214x.f25243a, obj, jLongValue);
                if (bVarB.b()) {
                    this.f25214x.f25243a.l(bVarB.f76114a, this.f25202l);
                    j12 = this.f25202l.n(bVarB.f76115b) == bVarB.f76116c ? this.f25202l.j() : 0L;
                    j13 = j16;
                    bVar = bVarB;
                    z10 = true;
                } else {
                    j11 = j16;
                    z10 = hVar.f25241c == C.TIME_UNSET;
                    bVar = bVarB;
                }
                if (this.f25214x.f25243a.u()) {
                    if (pairV0 == null) {
                        if (this.f25214x.f25247e != 1) {
                            X0(4);
                        }
                        o0(false, true, false, true);
                    } else {
                        if (bVar.equals(this.f25214x.f25244b)) {
                            b2VarP = this.f25209s.p();
                            if (b2VarP == null && b2VarP.f24807d && j12 != 0) {
                                jA = b2VarP.f24804a.a(j12, this.f25213w);
                            } else {
                                jA = j12;
                            }
                            if (com.google.android.exoplayer2.util.p0.e1(jA) == com.google.android.exoplayer2.util.p0.e1(this.f25214x.f25260r) && ((i11 = (l2Var = this.f25214x).f25247e) == 2 || i11 == 3)) {
                                long j17 = l2Var.f25260r;
                                this.f25214x = J(bVar, j17, j13, j17, z10, 2);
                                return;
                            }
                        } else {
                            jA = j12;
                        }
                        if (this.f25214x.f25247e == 4) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        jB0 = B0(bVar, jA, z11);
                        z12 = (j12 != jB0) | z10;
                        try {
                            l2 l2Var2 = this.f25214x;
                            k3 k3Var = l2Var2.f25243a;
                            l1(k3Var, bVar, k3Var, l2Var2.f25244b, j13);
                            z10 = z12;
                            j15 = jB0;
                        } catch (Throwable th2) {
                            th = th2;
                            z10 = z12;
                            j14 = jB0;
                            this.f25214x = J(bVar, j14, j13, j14, z10, 2);
                            throw th;
                        }
                    }
                    this.f25214x = J(bVar, j15, j13, j15, z10, 2);
                    return;
                }
                this.K = hVar;
                j15 = j12;
                this.f25214x = J(bVar, j15, j13, j15, z10, 2);
                return;
            }
            Pair pairY = y(this.f25214x.f25243a);
            bVar = (com.google.android.exoplayer2.source.o.b) pairY.first;
            jLongValue = ((Long) pairY.second).longValue();
            z10 = !this.f25214x.f25243a.u();
            j11 = -9223372036854775807L;
            if (this.f25214x.f25243a.u()) {
                if (pairV0 == null) {
                    if (this.f25214x.f25247e != 1) {
                        X0(4);
                    }
                    o0(false, true, false, true);
                } else {
                    if (bVar.equals(this.f25214x.f25244b)) {
                        b2VarP = this.f25209s.p();
                        if (b2VarP == null) {
                            jA = j12;
                        } else {
                            jA = j12;
                        }
                        if (com.google.android.exoplayer2.util.p0.e1(jA) == com.google.android.exoplayer2.util.p0.e1(this.f25214x.f25260r)) {
                            long j18 = l2Var.f25260r;
                            this.f25214x = J(bVar, j18, j13, j18, z10, 2);
                            return;
                        }
                    } else {
                        jA = j12;
                    }
                    if (this.f25214x.f25247e == 4) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    jB0 = B0(bVar, jA, z11);
                    z12 = (j12 != jB0) | z10;
                    l2 l2Var3 = this.f25214x;
                    k3 k3Var2 = l2Var3.f25243a;
                    l1(k3Var2, bVar, k3Var2, l2Var3.f25244b, j13);
                    z10 = z12;
                    j15 = jB0;
                }
                this.f25214x = J(bVar, j15, j13, j15, z10, 2);
                return;
            }
            this.K = hVar;
            j15 = j12;
            this.f25214x = J(bVar, j15, j13, j15, z10, 2);
            return;
        } catch (Throwable th3) {
            th = th3;
            j14 = j12;
        }
        j12 = jLongValue;
        j13 = j11;
    }

    private long B(long j11) {
        b2 b2VarJ = this.f25209s.j();
        if (b2VarJ == null) {
            return 0L;
        }
        return Math.max(0L, j11 - b2VarJ.y(this.L));
    }

    private long B0(com.google.android.exoplayer2.source.o.b bVar, long j11, boolean z10) {
        return C0(bVar, j11, this.f25209s.p() != this.f25209s.q(), z10);
    }

    private void C(com.google.android.exoplayer2.source.n nVar) {
        if (this.f25209s.v(nVar)) {
            this.f25209s.y(this.L);
            T();
        }
    }

    private long C0(com.google.android.exoplayer2.source.o.b bVar, long j11, boolean z10, boolean z11) throws ExoPlaybackException {
        g1();
        this.C = false;
        if (z11 || this.f25214x.f25247e == 3) {
            X0(2);
        }
        b2 b2VarP = this.f25209s.p();
        b2 b2VarJ = b2VarP;
        while (b2VarJ != null && !bVar.equals(b2VarJ.f24809f.f24821a)) {
            b2VarJ = b2VarJ.j();
        }
        if (z10 || b2VarP != b2VarJ || (b2VarJ != null && b2VarJ.z(j11) < 0)) {
            for (x2 x2Var : this.f25191a) {
                m(x2Var);
            }
            if (b2VarJ != null) {
                while (this.f25209s.p() != b2VarJ) {
                    this.f25209s.b();
                }
                this.f25209s.z(b2VarJ);
                b2VarJ.x(1000000000000L);
                p();
            }
        }
        if (b2VarJ != null) {
            this.f25209s.z(b2VarJ);
            if (!b2VarJ.f24807d) {
                b2VarJ.f24809f = b2VarJ.f24809f.b(j11);
            } else if (b2VarJ.f24808e) {
                j11 = b2VarJ.f24804a.seekToUs(j11);
                b2VarJ.f24804a.discardBuffer(j11 - this.f25203m, this.f25204n);
            }
            q0(j11);
            T();
        } else {
            this.f25209s.f();
            q0(j11);
        }
        E(false);
        this.f25198h.sendEmptyMessage(2);
        return j11;
    }

    private void D(IOException iOException, int i11) {
        ExoPlaybackException exoPlaybackExceptionCreateForSource = ExoPlaybackException.createForSource(iOException, i11);
        b2 b2VarP = this.f25209s.p();
        if (b2VarP != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(b2VarP.f24809f.f24821a);
        }
        com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForSource);
        f1(false, false);
        this.f25214x = this.f25214x.e(exoPlaybackExceptionCreateForSource);
    }

    private void D0(s2 s2Var) {
        if (s2Var.f() == C.TIME_UNSET) {
            E0(s2Var);
            return;
        }
        if (this.f25214x.f25243a.u()) {
            this.f25206p.add(new d(s2Var));
            return;
        }
        d dVar = new d(s2Var);
        k3 k3Var = this.f25214x.f25243a;
        if (!s0(dVar, k3Var, k3Var, this.E, this.F, this.f25201k, this.f25202l)) {
            s2Var.k(false);
        } else {
            this.f25206p.add(dVar);
            Collections.sort(this.f25206p);
        }
    }

    private void E(boolean z10) {
        b2 b2VarJ = this.f25209s.j();
        com.google.android.exoplayer2.source.o.b bVar = b2VarJ == null ? this.f25214x.f25244b : b2VarJ.f24809f.f24821a;
        boolean zEquals = this.f25214x.f25253k.equals(bVar);
        if (!zEquals) {
            this.f25214x = this.f25214x.b(bVar);
        }
        l2 l2Var = this.f25214x;
        l2Var.f25258p = b2VarJ == null ? l2Var.f25260r : b2VarJ.i();
        this.f25214x.f25259q = A();
        if ((!zEquals || z10) && b2VarJ != null && b2VarJ.f24807d) {
            i1(b2VarJ.n(), b2VarJ.o());
        }
    }

    private void E0(s2 s2Var) {
        if (s2Var.c() != this.f25200j) {
            this.f25198h.obtainMessage(15, s2Var).a();
            return;
        }
        l(s2Var);
        int i11 = this.f25214x.f25247e;
        if (i11 == 3 || i11 == 2) {
            this.f25198h.sendEmptyMessage(2);
        }
    }

    private void F(k3 k3Var, boolean z10) throws Throwable {
        int i11;
        int i12;
        boolean z11;
        g gVarU0 = u0(k3Var, this.f25214x, this.K, this.f25209s, this.E, this.F, this.f25201k, this.f25202l);
        com.google.android.exoplayer2.source.o.b bVar = gVarU0.f25233a;
        long j11 = gVarU0.f25235c;
        boolean z12 = gVarU0.f25236d;
        long jB0 = gVarU0.f25234b;
        boolean z13 = (this.f25214x.f25244b.equals(bVar) && jB0 == this.f25214x.f25260r) ? false : true;
        h hVar = null;
        long j12 = C.TIME_UNSET;
        try {
            if (gVarU0.f25237e) {
                if (this.f25214x.f25247e != 1) {
                    X0(4);
                }
                o0(false, false, false, true);
            }
            try {
                if (z13) {
                    i12 = 4;
                    z11 = false;
                    if (!k3Var.u()) {
                        for (b2 b2VarP = this.f25209s.p(); b2VarP != null; b2VarP = b2VarP.j()) {
                            if (b2VarP.f24809f.f24821a.equals(bVar)) {
                                b2VarP.f24809f = this.f25209s.r(k3Var, b2VarP.f24809f);
                                b2VarP.A();
                            }
                        }
                        jB0 = B0(bVar, jB0, z12);
                    }
                } else {
                    try {
                        try {
                            i12 = 4;
                            z11 = false;
                            if (!this.f25209s.F(k3Var, this.L, x())) {
                                z0(false);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            i11 = 4;
                            hVar = null;
                            l2 l2Var = this.f25214x;
                            k3 k3Var2 = l2Var.f25243a;
                            com.google.android.exoplayer2.source.o.b bVar2 = l2Var.f25244b;
                            if (gVarU0.f25238f) {
                                j12 = jB0;
                            }
                            h hVar2 = hVar;
                            l1(k3Var, bVar, k3Var2, bVar2, j12);
                            if (z13 || j11 != this.f25214x.f25245c) {
                                l2 l2Var2 = this.f25214x;
                                Object obj = l2Var2.f25244b.f76114a;
                                k3 k3Var3 = l2Var2.f25243a;
                                this.f25214x = J(bVar, jB0, j11, this.f25214x.f25246d, z13 && z10 && !k3Var3.u() && !k3Var3.l(obj, this.f25202l).f25159f, k3Var.f(obj) == -1 ? i11 : 3);
                            }
                            p0();
                            t0(k3Var, this.f25214x.f25243a);
                            this.f25214x = this.f25214x.i(k3Var);
                            if (!k3Var.u()) {
                                this.K = hVar2;
                            }
                            E(false);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i11 = 4;
                    }
                }
                l2 l2Var3 = this.f25214x;
                l1(k3Var, bVar, l2Var3.f25243a, l2Var3.f25244b, gVarU0.f25238f ? jB0 : -9223372036854775807L);
                if (z13 || j11 != this.f25214x.f25245c) {
                    l2 l2Var4 = this.f25214x;
                    Object obj2 = l2Var4.f25244b.f76114a;
                    k3 k3Var4 = l2Var4.f25243a;
                    this.f25214x = J(bVar, jB0, j11, this.f25214x.f25246d, (!z13 || !z10 || k3Var4.u() || k3Var4.l(obj2, this.f25202l).f25159f) ? z11 : true, k3Var.f(obj2) == -1 ? i12 : 3);
                }
                p0();
                t0(k3Var, this.f25214x.f25243a);
                this.f25214x = this.f25214x.i(k3Var);
                if (!k3Var.u()) {
                    this.K = null;
                }
                E(z11);
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            i11 = 4;
        }
    }

    private void F0(final s2 s2Var) {
        Looper looperC = s2Var.c();
        if (looperC.getThread().isAlive()) {
            this.f25207q.createHandler(looperC, null).post(new Runnable() { // from class: com.google.android.exoplayer2.k1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f25149a.S(s2Var);
                }
            });
        } else {
            com.google.android.exoplayer2.util.s.i("TAG", "Trying to send message on a dead thread.");
            s2Var.k(false);
        }
    }

    private void G(com.google.android.exoplayer2.source.n nVar) throws ExoPlaybackException {
        if (this.f25209s.v(nVar)) {
            b2 b2VarJ = this.f25209s.j();
            b2VarJ.p(this.f25205o.getPlaybackParameters().f25475a, this.f25214x.f25243a);
            i1(b2VarJ.n(), b2VarJ.o());
            if (b2VarJ == this.f25209s.p()) {
                q0(b2VarJ.f24809f.f24822b);
                p();
                l2 l2Var = this.f25214x;
                com.google.android.exoplayer2.source.o.b bVar = l2Var.f25244b;
                long j11 = b2VarJ.f24809f.f24822b;
                this.f25214x = J(bVar, j11, l2Var.f25245c, j11, false, 5);
            }
            T();
        }
    }

    private void G0(long j11) {
        for (x2 x2Var : this.f25191a) {
            if (x2Var.getStream() != null) {
                H0(x2Var, j11);
            }
        }
    }

    private void H(n2 n2Var, float f11, boolean z10, boolean z11) {
        if (z10) {
            if (z11) {
                this.f25215y.b(1);
            }
            this.f25214x = this.f25214x.f(n2Var);
        }
        m1(n2Var.f25475a);
        for (x2 x2Var : this.f25191a) {
            if (x2Var != null) {
                x2Var.d(f11, n2Var.f25475a);
            }
        }
    }

    private void H0(x2 x2Var, long j11) {
        x2Var.setCurrentStreamFinal();
        if (x2Var instanceof ba.p) {
            ((ba.p) x2Var).H(j11);
        }
    }

    private void I(n2 n2Var, boolean z10) {
        H(n2Var, n2Var.f25475a, true, z10);
    }

    private void I0(boolean z10, AtomicBoolean atomicBoolean) {
        if (this.G != z10) {
            this.G = z10;
            if (!z10) {
                for (x2 x2Var : this.f25191a) {
                    if (!O(x2Var) && this.f25192b.remove(x2Var)) {
                        x2Var.reset();
                    }
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

    private l2 J(com.google.android.exoplayer2.source.o.b bVar, long j11, long j12, long j13, boolean z10, int i11) {
        List listOf;
        t9.x xVar;
        la.r rVar;
        this.N = (!this.N && j11 == this.f25214x.f25260r && bVar.equals(this.f25214x.f25244b)) ? false : true;
        p0();
        l2 l2Var = this.f25214x;
        t9.x xVar2 = l2Var.f25250h;
        la.r rVar2 = l2Var.f25251i;
        List list = l2Var.f25252j;
        if (this.f25210t.s()) {
            b2 b2VarP = this.f25209s.p();
            t9.x xVarN = b2VarP == null ? t9.x.f76163d : b2VarP.n();
            la.r rVarO = b2VarP == null ? this.f25195e : b2VarP.o();
            ImmutableList immutableListT = t(rVarO.f68802c);
            if (b2VarP != null) {
                c2 c2Var = b2VarP.f24809f;
                if (c2Var.f24823c != j12) {
                    b2VarP.f24809f = c2Var.a(j12);
                }
            }
            xVar = xVarN;
            rVar = rVarO;
            listOf = immutableListT;
        } else if (bVar.equals(this.f25214x.f25244b)) {
            listOf = list;
            xVar = xVar2;
            rVar = rVar2;
        } else {
            xVar = t9.x.f76163d;
            rVar = this.f25195e;
            listOf = ImmutableList.of();
        }
        if (z10) {
            this.f25215y.e(i11);
        }
        return this.f25214x.c(bVar, j11, j12, j13, A(), xVar, rVar, listOf);
    }

    private void J0(b bVar) throws Throwable {
        this.f25215y.b(1);
        if (bVar.f25220c != -1) {
            this.K = new h(new t2(bVar.f25218a, bVar.f25219b), bVar.f25220c, bVar.f25221d);
        }
        F(this.f25210t.B(bVar.f25218a, bVar.f25219b), false);
    }

    private boolean K(x2 x2Var, b2 b2Var) {
        b2 b2VarJ = b2Var.j();
        return b2Var.f24809f.f24826f && b2VarJ.f24807d && ((x2Var instanceof ba.p) || (x2Var instanceof com.google.android.exoplayer2.metadata.f) || x2Var.e() >= b2VarJ.m());
    }

    private boolean L() {
        b2 b2VarQ = this.f25209s.q();
        if (!b2VarQ.f24807d) {
            return false;
        }
        int i11 = 0;
        while (true) {
            x2[] x2VarArr = this.f25191a;
            if (i11 >= x2VarArr.length) {
                return true;
            }
            x2 x2Var = x2VarArr[i11];
            t9.s sVar = b2VarQ.f24806c[i11];
            if (x2Var.getStream() != sVar || (sVar != null && !x2Var.hasReadStreamToEnd() && !K(x2Var, b2VarQ))) {
                return false;
            }
            i11++;
        }
    }

    private void L0(boolean z10) {
        if (z10 == this.I) {
            return;
        }
        this.I = z10;
        if (z10 || !this.f25214x.f25257o) {
            return;
        }
        this.f25198h.sendEmptyMessage(2);
    }

    private static boolean M(boolean z10, com.google.android.exoplayer2.source.o.b bVar, long j11, com.google.android.exoplayer2.source.o.b bVar2, k3.b bVar3, long j12) {
        if (z10 || j11 != j12 || !bVar.f76114a.equals(bVar2.f76114a)) {
            return false;
        }
        if (bVar.b() && bVar3.t(bVar.f76115b)) {
            return (bVar3.k(bVar.f76115b, bVar.f76116c) == 4 || bVar3.k(bVar.f76115b, bVar.f76116c) == 2) ? false : true;
        }
        return bVar2.b() && bVar3.t(bVar2.f76115b);
    }

    private void M0(boolean z10) throws ExoPlaybackException {
        this.A = z10;
        p0();
        if (!this.B || this.f25209s.q() == this.f25209s.p()) {
            return;
        }
        z0(true);
        E(false);
    }

    private boolean N() {
        b2 b2VarJ = this.f25209s.j();
        return (b2VarJ == null || b2VarJ.k() == Long.MIN_VALUE) ? false : true;
    }

    private static boolean O(x2 x2Var) {
        return x2Var.getState() != 0;
    }

    private void O0(boolean z10, int i11, boolean z11, int i12) {
        this.f25215y.b(z11 ? 1 : 0);
        this.f25215y.c(i12);
        this.f25214x = this.f25214x.d(z10, i11);
        this.C = false;
        d0(z10);
        if (!a1()) {
            g1();
            k1();
            return;
        }
        int i13 = this.f25214x.f25247e;
        if (i13 == 3) {
            d1();
            this.f25198h.sendEmptyMessage(2);
        } else if (i13 == 2) {
            this.f25198h.sendEmptyMessage(2);
        }
    }

    private boolean P() {
        b2 b2VarP = this.f25209s.p();
        long j11 = b2VarP.f24809f.f24825e;
        return b2VarP.f24807d && (j11 == C.TIME_UNSET || this.f25214x.f25260r < j11 || !a1());
    }

    private static boolean Q(l2 l2Var, k3.b bVar) {
        com.google.android.exoplayer2.source.o.b bVar2 = l2Var.f25244b;
        k3 k3Var = l2Var.f25243a;
        return k3Var.u() || k3Var.l(bVar2.f76114a, bVar).f25159f;
    }

    private void Q0(n2 n2Var) {
        this.f25205o.b(n2Var);
        I(this.f25205o.getPlaybackParameters(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean R() {
        return Boolean.valueOf(this.f25216z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(s2 s2Var) {
        try {
            l(s2Var);
        } catch (ExoPlaybackException e11) {
            com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e11);
            throw new RuntimeException(e11);
        }
    }

    private void S0(int i11) throws ExoPlaybackException {
        this.E = i11;
        if (!this.f25209s.G(this.f25214x.f25243a, i11)) {
            z0(true);
        }
        E(false);
    }

    private void T() {
        boolean zZ0 = Z0();
        this.D = zZ0;
        if (zZ0) {
            this.f25209s.j().d(this.L);
        }
        h1();
    }

    private void T0(c3 c3Var) {
        this.f25213w = c3Var;
    }

    private void U() {
        this.f25215y.d(this.f25214x);
        if (this.f25215y.f25226a) {
            this.f25208r.a(this.f25215y);
            this.f25215y = new e(this.f25214x);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void V(long j11, long j12) {
        if (this.f25206p.isEmpty() || this.f25214x.f25244b.b()) {
            return;
        }
        if (this.N) {
            j11--;
            this.N = false;
        }
        l2 l2Var = this.f25214x;
        int iF = l2Var.f25243a.f(l2Var.f25244b.f76114a);
        int iMin = Math.min(this.M, this.f25206p.size());
        d dVar = iMin > 0 ? (d) this.f25206p.get(iMin - 1) : null;
        while (dVar != null) {
            int i11 = dVar.f25223b;
            if (i11 <= iF && (i11 != iF || dVar.f25224c <= j11)) {
                break;
            }
            int i12 = iMin - 1;
            dVar = i12 > 0 ? (d) this.f25206p.get(iMin - 2) : null;
            iMin = i12;
        }
        if (iMin < this.f25206p.size()) {
            d dVar2 = (d) this.f25206p.get(iMin);
            while (dVar2 != null && dVar2.f25225d != null) {
                int i13 = dVar2.f25223b;
                if (i13 >= iF && (i13 != iF || dVar2.f25224c > j11)) {
                    break;
                }
                iMin++;
                dVar2 = iMin < this.f25206p.size() ? (d) this.f25206p.get(iMin) : null;
            }
            while (dVar2 != null && dVar2.f25225d != null && dVar2.f25223b == iF) {
                long j13 = dVar2.f25224c;
                if (j13 <= j11 || j13 > j12) {
                    break;
                }
                try {
                    E0(dVar2.f25222a);
                    if (dVar2.f25222a.b() || dVar2.f25222a.j()) {
                        this.f25206p.remove(iMin);
                    } else {
                        iMin++;
                    }
                    dVar2 = iMin < this.f25206p.size() ? (d) this.f25206p.get(iMin) : null;
                } catch (Throwable th2) {
                    if (dVar2.f25222a.b() || dVar2.f25222a.j()) {
                        this.f25206p.remove(iMin);
                    }
                    throw th2;
                }
            }
            this.M = iMin;
        }
    }

    private void V0(boolean z10) throws ExoPlaybackException {
        this.F = z10;
        if (!this.f25209s.H(this.f25214x.f25243a, z10)) {
            z0(true);
        }
        E(false);
    }

    private void W() {
        c2 c2VarO;
        this.f25209s.y(this.L);
        if (this.f25209s.D() && (c2VarO = this.f25209s.o(this.L, this.f25214x)) != null) {
            b2 b2VarG = this.f25209s.g(this.f25193c, this.f25194d, this.f25196f.getAllocator(), this.f25210t, c2VarO, this.f25195e);
            b2VarG.f24804a.e(this, c2VarO.f24822b);
            if (this.f25209s.p() == b2VarG) {
                q0(c2VarO.f24822b);
            }
            E(false);
        }
        if (!this.D) {
            T();
        } else {
            this.D = N();
            h1();
        }
    }

    private void W0(t9.t tVar) throws Throwable {
        this.f25215y.b(1);
        F(this.f25210t.C(tVar), false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    private void X() {
        boolean z10;
        boolean z11 = false;
        while (Y0()) {
            if (z11) {
                U();
            }
            b2 b2Var = (b2) com.google.android.exoplayer2.util.a.e(this.f25209s.b());
            if (this.f25214x.f25244b.f76114a.equals(b2Var.f24809f.f24821a.f76114a)) {
                com.google.android.exoplayer2.source.o.b bVar = this.f25214x.f25244b;
                if (bVar.f76115b == -1) {
                    com.google.android.exoplayer2.source.o.b bVar2 = b2Var.f24809f.f24821a;
                    if (bVar2.f76115b != -1 || bVar.f76118e == bVar2.f76118e) {
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
            c2 c2Var = b2Var.f24809f;
            com.google.android.exoplayer2.source.o.b bVar3 = c2Var.f24821a;
            long j11 = c2Var.f24822b;
            this.f25214x = J(bVar3, j11, c2Var.f24823c, j11, !z10, 0);
            p0();
            k1();
            z11 = true;
        }
    }

    private void X0(int i11) {
        l2 l2Var = this.f25214x;
        if (l2Var.f25247e != i11) {
            if (i11 != 2) {
                this.Q = C.TIME_UNSET;
            }
            this.f25214x = l2Var.g(i11);
        }
    }

    private void Y() {
        b2 b2VarQ = this.f25209s.q();
        if (b2VarQ == null) {
            return;
        }
        int i11 = 0;
        if (b2VarQ.j() != null && !this.B) {
            if (L()) {
                if (b2VarQ.j().f24807d || this.L >= b2VarQ.j().m()) {
                    la.r rVarO = b2VarQ.o();
                    b2 b2VarC = this.f25209s.c();
                    la.r rVarO2 = b2VarC.o();
                    k3 k3Var = this.f25214x.f25243a;
                    l1(k3Var, b2VarC.f24809f.f24821a, k3Var, b2VarQ.f24809f.f24821a, C.TIME_UNSET);
                    if (b2VarC.f24807d && b2VarC.f24804a.readDiscontinuity() != C.TIME_UNSET) {
                        G0(b2VarC.m());
                        return;
                    }
                    for (int i12 = 0; i12 < this.f25191a.length; i12++) {
                        boolean zC = rVarO.c(i12);
                        boolean zC2 = rVarO2.c(i12);
                        if (zC && !this.f25191a[i12].isCurrentStreamFinal()) {
                            boolean z10 = this.f25193c[i12].getTrackType() == -2;
                            a3 a3Var = rVarO.f68801b[i12];
                            a3 a3Var2 = rVarO2.f68801b[i12];
                            if (!zC2 || !a3Var2.equals(a3Var) || z10) {
                                H0(this.f25191a[i12], b2VarC.m());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!b2VarQ.f24809f.f24829i && !this.B) {
            return;
        }
        while (true) {
            x2[] x2VarArr = this.f25191a;
            if (i11 >= x2VarArr.length) {
                return;
            }
            x2 x2Var = x2VarArr[i11];
            t9.s sVar = b2VarQ.f24806c[i11];
            if (sVar != null && x2Var.getStream() == sVar && x2Var.hasReadStreamToEnd()) {
                long j11 = b2VarQ.f24809f.f24825e;
                H0(x2Var, (j11 == C.TIME_UNSET || j11 == Long.MIN_VALUE) ? -9223372036854775807L : b2VarQ.l() + b2VarQ.f24809f.f24825e);
            }
            i11++;
        }
    }

    private boolean Y0() {
        b2 b2VarP;
        b2 b2VarJ;
        return a1() && !this.B && (b2VarP = this.f25209s.p()) != null && (b2VarJ = b2VarP.j()) != null && this.L >= b2VarJ.m() && b2VarJ.f24810g;
    }

    private void Z() throws ExoPlaybackException {
        b2 b2VarQ = this.f25209s.q();
        if (b2VarQ == null || this.f25209s.p() == b2VarQ || b2VarQ.f24810g || !m0()) {
            return;
        }
        p();
    }

    private boolean Z0() {
        if (!N()) {
            return false;
        }
        b2 b2VarJ = this.f25209s.j();
        return this.f25196f.c(b2VarJ == this.f25209s.p() ? b2VarJ.y(this.L) : b2VarJ.y(this.L) - b2VarJ.f24809f.f24822b, B(b2VarJ.k()), this.f25205o.getPlaybackParameters().f25475a);
    }

    private void a0() throws Throwable {
        F(this.f25210t.i(), true);
    }

    private boolean a1() {
        l2 l2Var = this.f25214x;
        return l2Var.f25254l && l2Var.f25255m == 0;
    }

    private void b0(c cVar) {
        this.f25215y.b(1);
        throw null;
    }

    private boolean b1(boolean z10) {
        if (this.J == 0) {
            return P();
        }
        if (!z10) {
            return false;
        }
        l2 l2Var = this.f25214x;
        if (!l2Var.f25249g) {
            return true;
        }
        long jB = c1(l2Var.f25243a, this.f25209s.p().f24809f.f24821a) ? this.f25211u.b() : C.TIME_UNSET;
        b2 b2VarJ = this.f25209s.j();
        return (b2VarJ.q() && b2VarJ.f24809f.f24829i) || (b2VarJ.f24809f.f24821a.b() && !b2VarJ.f24807d) || this.f25196f.a(A(), this.f25205o.getPlaybackParameters().f25475a, this.C, jB);
    }

    private void c0() {
        for (b2 b2VarP = this.f25209s.p(); b2VarP != null; b2VarP = b2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.h hVar : b2VarP.o().f68802c) {
                if (hVar != null) {
                    hVar.a();
                }
            }
        }
    }

    private boolean c1(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar) {
        if (bVar.b() || k3Var.u()) {
            return false;
        }
        k3Var.r(k3Var.l(bVar.f76114a, this.f25202l).f25156c, this.f25201k);
        if (!this.f25201k.i()) {
            return false;
        }
        k3.d dVar = this.f25201k;
        return dVar.f25177i && dVar.f25174f != C.TIME_UNSET;
    }

    private void d0(boolean z10) {
        for (b2 b2VarP = this.f25209s.p(); b2VarP != null; b2VarP = b2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.h hVar : b2VarP.o().f68802c) {
                if (hVar != null) {
                    hVar.b(z10);
                }
            }
        }
    }

    private void d1() {
        this.C = false;
        this.f25205o.f();
        for (x2 x2Var : this.f25191a) {
            if (O(x2Var)) {
                x2Var.start();
            }
        }
    }

    private void e0() {
        for (b2 b2VarP = this.f25209s.p(); b2VarP != null; b2VarP = b2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.h hVar : b2VarP.o().f68802c) {
                if (hVar != null) {
                    hVar.c();
                }
            }
        }
    }

    private void f1(boolean z10, boolean z11) {
        o0(z10 || !this.G, false, true, false);
        this.f25215y.b(z11 ? 1 : 0);
        this.f25196f.onStopped();
        X0(1);
    }

    private void g1() {
        this.f25205o.g();
        for (x2 x2Var : this.f25191a) {
            if (O(x2Var)) {
                r(x2Var);
            }
        }
    }

    private void h0() {
        this.f25215y.b(1);
        o0(false, false, false, true);
        this.f25196f.onPrepared();
        X0(this.f25214x.f25243a.u() ? 4 : 2);
        this.f25210t.v(this.f25197g.b());
        this.f25198h.sendEmptyMessage(2);
    }

    private void h1() {
        b2 b2VarJ = this.f25209s.j();
        boolean z10 = this.D || (b2VarJ != null && b2VarJ.f24804a.isLoading());
        l2 l2Var = this.f25214x;
        if (z10 != l2Var.f25249g) {
            this.f25214x = l2Var.a(z10);
        }
    }

    private void i1(t9.x xVar, la.r rVar) {
        this.f25196f.b(this.f25191a, xVar, rVar.f68802c);
    }

    private void j(b bVar, int i11) throws Throwable {
        this.f25215y.b(1);
        h2 h2Var = this.f25210t;
        if (i11 == -1) {
            i11 = h2Var.q();
        }
        F(h2Var.f(i11, bVar.f25218a, bVar.f25219b), false);
    }

    private void j0() {
        o0(true, false, true, false);
        this.f25196f.onReleased();
        X0(1);
        this.f25199i.quit();
        synchronized (this) {
            this.f25216z = true;
            notifyAll();
        }
    }

    private void j1() throws ExoPlaybackException {
        if (this.f25214x.f25243a.u() || !this.f25210t.s()) {
            return;
        }
        W();
        Y();
        Z();
        X();
    }

    private void k() throws ExoPlaybackException {
        z0(true);
    }

    private void k0(int i11, int i12, t9.t tVar) throws Throwable {
        this.f25215y.b(1);
        F(this.f25210t.z(i11, i12, tVar), false);
    }

    private void k1() {
        b2 b2VarP = this.f25209s.p();
        if (b2VarP == null) {
            return;
        }
        long discontinuity = b2VarP.f24807d ? b2VarP.f24804a.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            q0(discontinuity);
            if (discontinuity != this.f25214x.f25260r) {
                l2 l2Var = this.f25214x;
                this.f25214x = J(l2Var.f25244b, discontinuity, l2Var.f25245c, discontinuity, true, 5);
            }
        } else {
            long jH = this.f25205o.h(b2VarP != this.f25209s.q());
            this.L = jH;
            long jY = b2VarP.y(jH);
            V(this.f25214x.f25260r, jY);
            this.f25214x.f25260r = jY;
        }
        this.f25214x.f25258p = this.f25209s.j().i();
        this.f25214x.f25259q = A();
        l2 l2Var2 = this.f25214x;
        if (l2Var2.f25254l && l2Var2.f25247e == 3 && c1(l2Var2.f25243a, l2Var2.f25244b) && this.f25214x.f25256n.f25475a == 1.0f) {
            float fA = this.f25211u.a(u(), A());
            if (this.f25205o.getPlaybackParameters().f25475a != fA) {
                this.f25205o.b(this.f25214x.f25256n.e(fA));
                H(this.f25214x.f25256n, this.f25205o.getPlaybackParameters().f25475a, false, false);
            }
        }
    }

    private void l(s2 s2Var) {
        if (s2Var.j()) {
            return;
        }
        try {
            s2Var.g().handleMessage(s2Var.i(), s2Var.e());
        } finally {
            s2Var.k(true);
        }
    }

    private void l1(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar, k3 k3Var2, com.google.android.exoplayer2.source.o.b bVar2, long j11) {
        if (!c1(k3Var, bVar)) {
            n2 n2Var = bVar.b() ? n2.f25473d : this.f25214x.f25256n;
            if (this.f25205o.getPlaybackParameters().equals(n2Var)) {
                return;
            }
            this.f25205o.b(n2Var);
            return;
        }
        k3Var.r(k3Var.l(bVar.f76114a, this.f25202l).f25156c, this.f25201k);
        this.f25211u.e((v1.g) com.google.android.exoplayer2.util.p0.j(this.f25201k.f25179k));
        if (j11 != C.TIME_UNSET) {
            this.f25211u.d(w(k3Var, bVar.f76114a, j11));
            return;
        }
        if (com.google.android.exoplayer2.util.p0.c(!k3Var2.u() ? k3Var2.r(k3Var2.l(bVar2.f76114a, this.f25202l).f25156c, this.f25201k).f25169a : null, this.f25201k.f25169a)) {
            return;
        }
        this.f25211u.d(C.TIME_UNSET);
    }

    private void m(x2 x2Var) {
        if (O(x2Var)) {
            this.f25205o.a(x2Var);
            r(x2Var);
            x2Var.disable();
            this.J--;
        }
    }

    private boolean m0() {
        b2 b2VarQ = this.f25209s.q();
        la.r rVarO = b2VarQ.o();
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            x2[] x2VarArr = this.f25191a;
            if (i11 >= x2VarArr.length) {
                return !z10;
            }
            x2 x2Var = x2VarArr[i11];
            if (O(x2Var)) {
                boolean z11 = x2Var.getStream() != b2VarQ.f24806c[i11];
                if (!rVarO.c(i11) || z11) {
                    if (!x2Var.isCurrentStreamFinal()) {
                        x2Var.h(v(rVarO.f68802c[i11]), b2VarQ.f24806c[i11], b2VarQ.m(), b2VarQ.l());
                    } else if (x2Var.isEnded()) {
                        m(x2Var);
                    } else {
                        z10 = true;
                    }
                }
            }
            i11++;
        }
    }

    private void m1(float f11) {
        for (b2 b2VarP = this.f25209s.p(); b2VarP != null; b2VarP = b2VarP.j()) {
            for (com.google.android.exoplayer2.trackselection.h hVar : b2VarP.o().f68802c) {
                if (hVar != null) {
                    hVar.onPlaybackSpeed(f11);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01a2  */
    private void n() throws ExoPlaybackException {
        boolean z10;
        boolean z11;
        int i11;
        long jUptimeMillis = this.f25207q.uptimeMillis();
        this.f25198h.removeMessages(2);
        j1();
        int i12 = this.f25214x.f25247e;
        if (i12 == 1 || i12 == 4) {
            return;
        }
        b2 b2VarP = this.f25209s.p();
        if (b2VarP == null) {
            x0(jUptimeMillis, 10L);
            return;
        }
        com.google.android.exoplayer2.util.m0.a("doSomeWork");
        k1();
        if (b2VarP.f24807d) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            b2VarP.f24804a.discardBuffer(this.f25214x.f25260r - this.f25203m, this.f25204n);
            z10 = true;
            z11 = true;
            int i13 = 0;
            while (true) {
                x2[] x2VarArr = this.f25191a;
                if (i13 >= x2VarArr.length) {
                    break;
                }
                x2 x2Var = x2VarArr[i13];
                if (O(x2Var)) {
                    x2Var.render(this.L, jElapsedRealtime);
                    z10 = z10 && x2Var.isEnded();
                    boolean z12 = b2VarP.f24806c[i13] != x2Var.getStream();
                    boolean z13 = z12 || (!z12 && x2Var.hasReadStreamToEnd()) || x2Var.isReady() || x2Var.isEnded();
                    z11 = z11 && z13;
                    if (!z13) {
                        x2Var.maybeThrowStreamError();
                    }
                }
                i13++;
            }
        } else {
            b2VarP.f24804a.maybeThrowPrepareError();
            z10 = true;
            z11 = true;
        }
        long j11 = b2VarP.f24809f.f24825e;
        boolean z14 = z10 && b2VarP.f24807d && (j11 == C.TIME_UNSET || j11 <= this.f25214x.f25260r);
        if (z14 && this.B) {
            this.B = false;
            O0(false, this.f25214x.f25255m, false, 5);
        }
        if (z14 && b2VarP.f24809f.f24829i) {
            X0(4);
            g1();
        } else if (this.f25214x.f25247e == 2 && b1(z11)) {
            X0(3);
            this.O = null;
            if (a1()) {
                d1();
            }
        } else if (this.f25214x.f25247e == 3 && (this.J != 0 ? !z11 : !P())) {
            this.C = a1();
            X0(2);
            if (this.C) {
                e0();
                this.f25211u.c();
            }
            g1();
        }
        if (this.f25214x.f25247e == 2) {
            int i14 = 0;
            while (true) {
                x2[] x2VarArr2 = this.f25191a;
                if (i14 >= x2VarArr2.length) {
                    break;
                }
                if (O(x2VarArr2[i14]) && this.f25191a[i14].getStream() == b2VarP.f24806c[i14]) {
                    this.f25191a[i14].maybeThrowStreamError();
                }
                i14++;
            }
            l2 l2Var = this.f25214x;
            if (l2Var.f25249g || l2Var.f25259q >= 500000 || !N()) {
                this.Q = C.TIME_UNSET;
            } else if (this.Q == C.TIME_UNSET) {
                this.Q = this.f25207q.elapsedRealtime();
            } else if (this.f25207q.elapsedRealtime() - this.Q >= 4000) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.Q = C.TIME_UNSET;
        }
        boolean z15 = a1() && this.f25214x.f25247e == 3;
        boolean z16 = this.I && this.H && z15;
        l2 l2Var2 = this.f25214x;
        if (l2Var2.f25257o != z16) {
            this.f25214x = l2Var2.h(z16);
        }
        this.H = false;
        if (z16 || (i11 = this.f25214x.f25247e) == 4) {
            return;
        }
        if (z15 || i11 == 2) {
            x0(jUptimeMillis, 10L);
        } else if (i11 == 3 && this.J != 0) {
            x0(jUptimeMillis, 1000L);
        }
        com.google.android.exoplayer2.util.m0.c();
    }

    private void n0() throws ExoPlaybackException {
        float f11 = this.f25205o.getPlaybackParameters().f25475a;
        b2 b2VarQ = this.f25209s.q();
        boolean z10 = true;
        for (b2 b2VarP = this.f25209s.p(); b2VarP != null && b2VarP.f24807d; b2VarP = b2VarP.j()) {
            la.r rVarV = b2VarP.v(f11, this.f25214x.f25243a);
            if (!rVarV.a(b2VarP.o())) {
                if (z10) {
                    b2 b2VarP2 = this.f25209s.p();
                    boolean z11 = this.f25209s.z(b2VarP2);
                    boolean[] zArr = new boolean[this.f25191a.length];
                    long jB = b2VarP2.b(rVarV, this.f25214x.f25260r, z11, zArr);
                    l2 l2Var = this.f25214x;
                    boolean z12 = (l2Var.f25247e == 4 || jB == l2Var.f25260r) ? false : true;
                    l2 l2Var2 = this.f25214x;
                    this.f25214x = J(l2Var2.f25244b, jB, l2Var2.f25245c, l2Var2.f25246d, z12, 5);
                    if (z12) {
                        q0(jB);
                    }
                    boolean[] zArr2 = new boolean[this.f25191a.length];
                    int i11 = 0;
                    while (true) {
                        x2[] x2VarArr = this.f25191a;
                        if (i11 >= x2VarArr.length) {
                            break;
                        }
                        x2 x2Var = x2VarArr[i11];
                        boolean zO = O(x2Var);
                        zArr2[i11] = zO;
                        t9.s sVar = b2VarP2.f24806c[i11];
                        if (zO) {
                            if (sVar != x2Var.getStream()) {
                                m(x2Var);
                            } else if (zArr[i11]) {
                                x2Var.resetPosition(this.L);
                            }
                        }
                        i11++;
                    }
                    q(zArr2);
                } else {
                    this.f25209s.z(b2VarP);
                    if (b2VarP.f24807d) {
                        b2VarP.a(rVarV, Math.max(b2VarP.f24809f.f24822b, b2VarP.y(this.L)), false);
                    }
                }
                E(true);
                if (this.f25214x.f25247e != 4) {
                    T();
                    k1();
                    this.f25198h.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (b2VarP == b2VarQ) {
                z10 = false;
            }
        }
    }

    private synchronized void n1(com.google.common.base.q qVar, long j11) {
        long jElapsedRealtime = this.f25207q.elapsedRealtime() + j11;
        boolean z10 = false;
        while (!((Boolean) qVar.get()).booleanValue() && j11 > 0) {
            try {
                this.f25207q.a();
                wait(j11);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j11 = jElapsedRealtime - this.f25207q.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private void o(int i11, boolean z10) throws ExoPlaybackException {
        x2 x2Var = this.f25191a[i11];
        if (O(x2Var)) {
            return;
        }
        b2 b2VarQ = this.f25209s.q();
        boolean z11 = b2VarQ == this.f25209s.p();
        la.r rVarO = b2VarQ.o();
        a3 a3Var = rVarO.f68801b[i11];
        o1[] o1VarArrV = v(rVarO.f68802c[i11]);
        boolean z12 = a1() && this.f25214x.f25247e == 3;
        boolean z13 = !z10 && z12;
        this.J++;
        this.f25192b.add(x2Var);
        x2Var.c(a3Var, o1VarArrV, b2VarQ.f24806c[i11], this.L, z13, z11, b2VarQ.m(), b2VarQ.l());
        x2Var.handleMessage(11, new a());
        this.f25205o.c(x2Var);
        if (z12) {
            x2Var.start();
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a6 A[PHI: r4 r5 r7
  0x00a6: PHI (r4v3 com.google.android.exoplayer2.source.o$b) = (r4v2 com.google.android.exoplayer2.source.o$b), (r4v9 com.google.android.exoplayer2.source.o$b) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
  0x00a6: PHI (r5v2 long) = (r5v1 long), (r5v5 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
  0x00a6: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    private void o0(boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        this.f25198h.removeMessages(2);
        this.O = null;
        this.C = false;
        this.f25205o.g();
        this.L = 1000000000000L;
        for (x2 x2Var : this.f25191a) {
            try {
                m(x2Var);
            } catch (ExoPlaybackException | RuntimeException e11) {
                com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Disable failed.", e11);
            }
        }
        if (z10) {
            for (x2 x2Var2 : this.f25191a) {
                if (this.f25192b.remove(x2Var2)) {
                    try {
                        x2Var2.reset();
                    } catch (RuntimeException e12) {
                        com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Reset failed.", e12);
                    }
                }
            }
        }
        this.J = 0;
        l2 l2Var = this.f25214x;
        com.google.android.exoplayer2.source.o.b bVar = l2Var.f25244b;
        long jLongValue = l2Var.f25260r;
        long j11 = (this.f25214x.f25244b.b() || Q(this.f25214x, this.f25202l)) ? this.f25214x.f25245c : this.f25214x.f25260r;
        if (z11) {
            this.K = null;
            Pair pairY = y(this.f25214x.f25243a);
            bVar = (com.google.android.exoplayer2.source.o.b) pairY.first;
            jLongValue = ((Long) pairY.second).longValue();
            boolean zEquals = bVar.equals(this.f25214x.f25244b);
            j11 = C.TIME_UNSET;
            if (zEquals) {
                z14 = false;
            } else {
                z14 = true;
            }
        } else {
            z14 = false;
        }
        com.google.android.exoplayer2.source.o.b bVar2 = bVar;
        long j12 = jLongValue;
        this.f25209s.f();
        this.D = false;
        l2 l2Var2 = this.f25214x;
        k3 k3Var = l2Var2.f25243a;
        int i11 = l2Var2.f25247e;
        ExoPlaybackException exoPlaybackException = z13 ? null : l2Var2.f25248f;
        t9.x xVar = z14 ? t9.x.f76163d : l2Var2.f25250h;
        la.r rVar = z14 ? this.f25195e : l2Var2.f25251i;
        List listOf = z14 ? ImmutableList.of() : l2Var2.f25252j;
        l2 l2Var3 = this.f25214x;
        this.f25214x = new l2(k3Var, bVar2, j11, j12, i11, exoPlaybackException, false, xVar, rVar, listOf, bVar2, l2Var3.f25254l, l2Var3.f25255m, l2Var3.f25256n, j12, 0L, j12, false);
        if (z12) {
            this.f25210t.x();
        }
    }

    private void p() throws ExoPlaybackException {
        q(new boolean[this.f25191a.length]);
    }

    private void p0() {
        b2 b2VarP = this.f25209s.p();
        this.B = b2VarP != null && b2VarP.f24809f.f24828h && this.A;
    }

    private void q(boolean[] zArr) throws ExoPlaybackException {
        b2 b2VarQ = this.f25209s.q();
        la.r rVarO = b2VarQ.o();
        for (int i11 = 0; i11 < this.f25191a.length; i11++) {
            if (!rVarO.c(i11) && this.f25192b.remove(this.f25191a[i11])) {
                this.f25191a[i11].reset();
            }
        }
        for (int i12 = 0; i12 < this.f25191a.length; i12++) {
            if (rVarO.c(i12)) {
                o(i12, zArr[i12]);
            }
        }
        b2VarQ.f24810g = true;
    }

    private void q0(long j11) {
        b2 b2VarP = this.f25209s.p();
        long jZ = b2VarP == null ? j11 + 1000000000000L : b2VarP.z(j11);
        this.L = jZ;
        this.f25205o.d(jZ);
        for (x2 x2Var : this.f25191a) {
            if (O(x2Var)) {
                x2Var.resetPosition(this.L);
            }
        }
        c0();
    }

    private void r(x2 x2Var) {
        if (x2Var.getState() == 2) {
            x2Var.stop();
        }
    }

    private static void r0(k3 k3Var, d dVar, k3.d dVar2, k3.b bVar) {
        int i11 = k3Var.r(k3Var.l(dVar.f25225d, bVar).f25156c, dVar2).f25184p;
        Object obj = k3Var.k(i11, bVar, true).f25155b;
        long j11 = bVar.f25157d;
        dVar.b(i11, j11 != C.TIME_UNSET ? j11 - 1 : Long.MAX_VALUE, obj);
    }

    private static boolean s0(d dVar, k3 k3Var, k3 k3Var2, int i11, boolean z10, k3.d dVar2, k3.b bVar) {
        Object obj = dVar.f25225d;
        if (obj == null) {
            Pair pairV0 = v0(k3Var, new h(dVar.f25222a.h(), dVar.f25222a.d(), dVar.f25222a.f() == Long.MIN_VALUE ? C.TIME_UNSET : com.google.android.exoplayer2.util.p0.B0(dVar.f25222a.f())), false, i11, z10, dVar2, bVar);
            if (pairV0 == null) {
                return false;
            }
            dVar.b(k3Var.f(pairV0.first), ((Long) pairV0.second).longValue(), pairV0.first);
            if (dVar.f25222a.f() == Long.MIN_VALUE) {
                r0(k3Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int iF = k3Var.f(obj);
        if (iF == -1) {
            return false;
        }
        if (dVar.f25222a.f() == Long.MIN_VALUE) {
            r0(k3Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.f25223b = iF;
        k3Var2.l(dVar.f25225d, bVar);
        if (bVar.f25159f && k3Var2.r(bVar.f25156c, dVar2).f25183o == k3Var2.f(dVar.f25225d)) {
            Pair pairN = k3Var.n(dVar2, bVar, k3Var.l(dVar.f25225d, bVar).f25156c, dVar.f25224c + bVar.q());
            dVar.b(k3Var.f(pairN.first), ((Long) pairN.second).longValue(), pairN.first);
        }
        return true;
    }

    private ImmutableList t(com.google.android.exoplayer2.trackselection.h[] hVarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z10 = false;
        for (com.google.android.exoplayer2.trackselection.h hVar : hVarArr) {
            if (hVar != null) {
                Metadata metadata = hVar.getFormat(0).f25494j;
                if (metadata == null) {
                    aVar.a(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.a(metadata);
                    z10 = true;
                }
            }
        }
        return z10 ? aVar.e() : ImmutableList.of();
    }

    private void t0(k3 k3Var, k3 k3Var2) {
        if (k3Var.u() && k3Var2.u()) {
            return;
        }
        for (int size = this.f25206p.size() - 1; size >= 0; size--) {
            if (!s0((d) this.f25206p.get(size), k3Var, k3Var2, this.E, this.F, this.f25201k, this.f25202l)) {
                ((d) this.f25206p.get(size)).f25222a.k(false);
                this.f25206p.remove(size);
            }
        }
        Collections.sort(this.f25206p);
    }

    private long u() {
        l2 l2Var = this.f25214x;
        return w(l2Var.f25243a, l2Var.f25244b.f76114a, l2Var.f25260r);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0156  */
    /* JADX WARN: Code duplicated, block: B:52:0x0174  */
    /* JADX WARN: Code duplicated, block: B:60:0x018a  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:82:0x01da  */
    /* JADX WARN: Code duplicated, block: B:83:0x01df  */
    private static g u0(k3 k3Var, l2 l2Var, h hVar, e2 e2Var, int i11, boolean z10, k3.d dVar, k3.b bVar) {
        com.google.android.exoplayer2.source.o.b bVar2;
        int i12;
        com.google.android.exoplayer2.source.o.b bVar3;
        int i13;
        long jLongValue;
        boolean z11;
        boolean z12;
        boolean z13;
        int iE;
        int iE2;
        boolean z14;
        long j11;
        com.google.android.exoplayer2.source.o.b bVarB;
        int i14;
        boolean z15;
        boolean z16;
        com.google.android.exoplayer2.source.o.b bVar4;
        int i15;
        int iE3;
        boolean z17;
        boolean z18;
        boolean z19;
        if (k3Var.u()) {
            return new g(l2.k(), 0L, C.TIME_UNSET, false, true, false);
        }
        com.google.android.exoplayer2.source.o.b bVar5 = l2Var.f25244b;
        Object obj = bVar5.f76114a;
        boolean zQ = Q(l2Var, bVar);
        long j12 = (l2Var.f25244b.b() || zQ) ? l2Var.f25245c : l2Var.f25260r;
        if (hVar != null) {
            bVar2 = bVar5;
            i12 = -1;
            Pair pairV0 = v0(k3Var, hVar, true, i11, z10, dVar, bVar);
            if (pairV0 == null) {
                iE3 = k3Var.e(z10);
                jLongValue = j12;
                z17 = false;
                z18 = false;
                z19 = true;
            } else {
                if (hVar.f25241c == C.TIME_UNSET) {
                    iE3 = k3Var.l(pairV0.first, bVar).f25156c;
                    jLongValue = j12;
                    z17 = false;
                } else {
                    obj = pairV0.first;
                    jLongValue = ((Long) pairV0.second).longValue();
                    iE3 = -1;
                    z17 = true;
                }
                z18 = l2Var.f25247e == 4;
                z19 = false;
            }
            z13 = z17;
            z11 = z18;
            z12 = z19;
            i13 = iE3;
        } else {
            bVar2 = bVar5;
            i12 = -1;
            if (!l2Var.f25243a.u()) {
                if (k3Var.f(obj) == -1) {
                    Object objW0 = w0(dVar, bVar, i11, z10, obj, l2Var.f25243a, k3Var);
                    if (objW0 == null) {
                        iE2 = k3Var.e(z10);
                        z14 = true;
                    } else {
                        iE2 = k3Var.l(objW0, bVar).f25156c;
                        z14 = false;
                    }
                    i13 = iE2;
                    z12 = z14;
                    jLongValue = j12;
                    z11 = false;
                    z13 = false;
                } else if (j12 == C.TIME_UNSET) {
                    iE = k3Var.l(obj, bVar).f25156c;
                } else if (zQ) {
                    bVar3 = bVar2;
                    l2Var.f25243a.l(bVar3.f76114a, bVar);
                    if (l2Var.f25243a.r(bVar.f25156c, dVar).f25183o == l2Var.f25243a.f(bVar3.f76114a)) {
                        Pair pairN = k3Var.n(dVar, bVar, k3Var.l(obj, bVar).f25156c, j12 + bVar.q());
                        obj = pairN.first;
                        jLongValue = ((Long) pairN.second).longValue();
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
                    Pair pairN2 = k3Var.n(dVar, bVar, i13, C.TIME_UNSET);
                    obj = pairN2.first;
                    jLongValue = ((Long) pairN2.second).longValue();
                    j11 = -9223372036854775807L;
                } else {
                    j11 = jLongValue;
                }
                bVarB = e2Var.B(k3Var, obj, jLongValue);
                i14 = bVarB.f76118e;
                if (i14 != i12 || ((i15 = bVar3.f76118e) != i12 && i14 >= i15)) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = (bVar3.f76114a.equals(obj) || bVar3.b() || bVarB.b() || !z15) ? false : true;
                bVar4 = bVar3;
                boolean zM = M(zQ, bVar3, j12, bVarB, k3Var.l(obj, bVar), j11);
                if (z16 || zM) {
                    bVarB = bVar4;
                }
                if (bVarB.b()) {
                    if (bVarB.equals(bVar4)) {
                        jLongValue = l2Var.f25260r;
                    } else {
                        k3Var.l(bVarB.f76114a, bVar);
                        if (bVarB.f76116c == bVar.n(bVarB.f76115b)) {
                            jLongValue = bVar.j();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new g(bVarB, jLongValue, j11, z11, z12, z13);
            }
            iE = k3Var.e(z10);
            i13 = iE;
            jLongValue = j12;
            z11 = false;
            z12 = false;
            z13 = false;
        }
        bVar3 = bVar2;
        if (i13 != i12) {
            Pair pairN3 = k3Var.n(dVar, bVar, i13, C.TIME_UNSET);
            obj = pairN3.first;
            jLongValue = ((Long) pairN3.second).longValue();
            j11 = -9223372036854775807L;
        } else {
            j11 = jLongValue;
        }
        bVarB = e2Var.B(k3Var, obj, jLongValue);
        i14 = bVarB.f76118e;
        if (i14 != i12) {
            z15 = true;
        } else {
            z15 = true;
        }
        if (bVar3.f76114a.equals(obj)) {
        }
        bVar4 = bVar3;
        boolean zM2 = M(zQ, bVar3, j12, bVarB, k3Var.l(obj, bVar), j11);
        if (z16) {
            bVarB = bVar4;
        } else {
            bVarB = bVar4;
        }
        if (bVarB.b()) {
            if (bVarB.equals(bVar4)) {
                jLongValue = l2Var.f25260r;
            } else {
                k3Var.l(bVarB.f76114a, bVar);
                if (bVarB.f76116c == bVar.n(bVarB.f76115b)) {
                    jLongValue = bVar.j();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new g(bVarB, jLongValue, j11, z11, z12, z13);
    }

    private static o1[] v(com.google.android.exoplayer2.trackselection.h hVar) {
        int length = hVar != null ? hVar.length() : 0;
        o1[] o1VarArr = new o1[length];
        for (int i11 = 0; i11 < length; i11++) {
            o1VarArr[i11] = hVar.getFormat(i11);
        }
        return o1VarArr;
    }

    private static Pair v0(k3 k3Var, h hVar, boolean z10, int i11, boolean z11, k3.d dVar, k3.b bVar) {
        Object objW0;
        k3 k3Var2 = hVar.f25239a;
        if (k3Var.u()) {
            return null;
        }
        k3 k3Var3 = k3Var2.u() ? k3Var : k3Var2;
        try {
            Pair pairN = k3Var3.n(dVar, bVar, hVar.f25240b, hVar.f25241c);
            if (k3Var.equals(k3Var3)) {
                return pairN;
            }
            if (k3Var.f(pairN.first) != -1) {
                return (k3Var3.l(pairN.first, bVar).f25159f && k3Var3.r(bVar.f25156c, dVar).f25183o == k3Var3.f(pairN.first)) ? k3Var.n(dVar, bVar, k3Var.l(pairN.first, bVar).f25156c, hVar.f25241c) : pairN;
            }
            if (z10 && (objW0 = w0(dVar, bVar, i11, z11, pairN.first, k3Var3, k3Var)) != null) {
                return k3Var.n(dVar, bVar, k3Var.l(objW0, bVar).f25156c, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    private long w(k3 k3Var, Object obj, long j11) {
        k3Var.r(k3Var.l(obj, this.f25202l).f25156c, this.f25201k);
        k3.d dVar = this.f25201k;
        if (dVar.f25174f != C.TIME_UNSET && dVar.i()) {
            k3.d dVar2 = this.f25201k;
            if (dVar2.f25177i) {
                return com.google.android.exoplayer2.util.p0.B0(dVar2.d() - this.f25201k.f25174f) - (j11 + this.f25202l.q());
            }
        }
        return C.TIME_UNSET;
    }

    static Object w0(k3.d dVar, k3.b bVar, int i11, boolean z10, Object obj, k3 k3Var, k3 k3Var2) {
        int iF = k3Var.f(obj);
        int iM = k3Var.m();
        int iH = iF;
        int iF2 = -1;
        for (int i12 = 0; i12 < iM && iF2 == -1; i12++) {
            iH = k3Var.h(iH, bVar, dVar, i11, z10);
            if (iH == -1) {
                break;
            }
            iF2 = k3Var2.f(k3Var.q(iH));
        }
        if (iF2 == -1) {
            return null;
        }
        return k3Var2.q(iF2);
    }

    private long x() {
        b2 b2VarQ = this.f25209s.q();
        if (b2VarQ == null) {
            return 0L;
        }
        long jL = b2VarQ.l();
        if (!b2VarQ.f24807d) {
            return jL;
        }
        int i11 = 0;
        while (true) {
            x2[] x2VarArr = this.f25191a;
            if (i11 >= x2VarArr.length) {
                return jL;
            }
            if (O(x2VarArr[i11]) && this.f25191a[i11].getStream() == b2VarQ.f24806c[i11]) {
                long jE = this.f25191a[i11].e();
                if (jE == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jL = Math.max(jE, jL);
            }
            i11++;
        }
    }

    private void x0(long j11, long j12) {
        this.f25198h.sendEmptyMessageAtTime(2, j11 + j12);
    }

    private Pair y(k3 k3Var) {
        if (k3Var.u()) {
            return Pair.create(l2.k(), 0L);
        }
        Pair pairN = k3Var.n(this.f25201k, this.f25202l, k3Var.e(this.F), C.TIME_UNSET);
        com.google.android.exoplayer2.source.o.b bVarB = this.f25209s.B(k3Var, pairN.first, 0L);
        long jLongValue = ((Long) pairN.second).longValue();
        if (bVarB.b()) {
            k3Var.l(bVarB.f76114a, this.f25202l);
            jLongValue = bVarB.f76116c == this.f25202l.n(bVarB.f76115b) ? this.f25202l.j() : 0L;
        }
        return Pair.create(bVarB, Long.valueOf(jLongValue));
    }

    private void z0(boolean z10) throws ExoPlaybackException {
        com.google.android.exoplayer2.source.o.b bVar = this.f25209s.p().f24809f.f24821a;
        long jC0 = C0(bVar, this.f25214x.f25260r, true, false);
        if (jC0 != this.f25214x.f25260r) {
            l2 l2Var = this.f25214x;
            this.f25214x = J(bVar, jC0, l2Var.f25245c, l2Var.f25246d, z10, 5);
        }
    }

    public void K0(List list, int i11, long j11, t9.t tVar) {
        this.f25198h.obtainMessage(17, new b(list, tVar, i11, j11, null)).a();
    }

    public void N0(boolean z10, int i11) {
        this.f25198h.obtainMessage(1, z10 ? 1 : 0, i11).a();
    }

    public void P0(n2 n2Var) {
        this.f25198h.obtainMessage(4, n2Var).a();
    }

    public void R0(int i11) {
        this.f25198h.obtainMessage(11, i11, 0).a();
    }

    public void U0(boolean z10) {
        this.f25198h.obtainMessage(12, z10 ? 1 : 0, 0).a();
    }

    @Override // com.google.android.exoplayer2.h2.d
    public void a() {
        this.f25198h.sendEmptyMessage(22);
    }

    @Override // com.google.android.exoplayer2.s2.a
    public synchronized void b(s2 s2Var) {
        if (!this.f25216z && this.f25199i.isAlive()) {
            this.f25198h.obtainMessage(14, s2Var).a();
            return;
        }
        com.google.android.exoplayer2.util.s.i("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        s2Var.k(false);
    }

    public void e1() {
        this.f25198h.obtainMessage(6).a();
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public void g(com.google.android.exoplayer2.source.n nVar) {
        this.f25198h.obtainMessage(9, nVar).a();
    }

    public void g0() {
        this.f25198h.obtainMessage(0).a();
    }

    @Override // com.google.android.exoplayer2.source.n.a
    public void h(com.google.android.exoplayer2.source.n nVar) {
        this.f25198h.obtainMessage(8, nVar).a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        int i11;
        b2 b2VarQ;
        int i12 = 1000;
        try {
            switch (message.what) {
                case 0:
                    h0();
                    break;
                case 1:
                    O0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    n();
                    break;
                case 3:
                    A0((h) message.obj);
                    break;
                case 4:
                    Q0((n2) message.obj);
                    break;
                case 5:
                    T0((c3) message.obj);
                    break;
                case 6:
                    f1(false, true);
                    break;
                case 7:
                    j0();
                    return true;
                case 8:
                    G((com.google.android.exoplayer2.source.n) message.obj);
                    break;
                case 9:
                    C((com.google.android.exoplayer2.source.n) message.obj);
                    break;
                case 10:
                    n0();
                    break;
                case 11:
                    S0(message.arg1);
                    break;
                case 12:
                    V0(message.arg1 != 0);
                    break;
                case 13:
                    I0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    D0((s2) message.obj);
                    break;
                case 15:
                    F0((s2) message.obj);
                    break;
                case 16:
                    I((n2) message.obj, false);
                    break;
                case 17:
                    J0((b) message.obj);
                    break;
                case 18:
                    j((b) message.obj, message.arg1);
                    break;
                case 19:
                    android.support.v4.media.session.c.a(message.obj);
                    b0(null);
                    break;
                case 20:
                    k0(message.arg1, message.arg2, (t9.t) message.obj);
                    break;
                case 21:
                    W0((t9.t) message.obj);
                    break;
                case 22:
                    a0();
                    break;
                case 23:
                    M0(message.arg1 != 0);
                    break;
                case 24:
                    L0(message.arg1 == 1);
                    break;
                case 25:
                    k();
                    break;
                default:
                    return false;
            }
        } catch (ExoPlaybackException e11) {
            e = e11;
            if (e.type == 1 && (b2VarQ = this.f25209s.q()) != null) {
                e = e.copyWithMediaPeriodId(b2VarQ.f24809f.f24821a);
            }
            if (e.isRecoverable && this.O == null) {
                com.google.android.exoplayer2.util.s.j("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.O = e;
                com.google.android.exoplayer2.util.o oVar = this.f25198h;
                oVar.b(oVar.obtainMessage(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.O;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.O;
                }
                com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Playback error", e);
                f1(true, false);
                this.f25214x = this.f25214x.e(e);
            }
        } catch (ParserException e12) {
            int i13 = e12.dataType;
            if (i13 == 1) {
                i11 = e12.contentIsMalformed ? 3001 : 3003;
            } else {
                if (i13 == 4) {
                    i11 = e12.contentIsMalformed ? 3002 : 3004;
                }
                D(e12, i12);
            }
            i12 = i11;
            D(e12, i12);
        } catch (DrmSession.DrmSessionException e13) {
            D(e13, e13.errorCode);
        } catch (BehindLiveWindowException e14) {
            D(e14, 1002);
        } catch (DataSourceException e15) {
            D(e15, e15.reason);
        } catch (IOException e16) {
            D(e16, 2000);
        } catch (RuntimeException e17) {
            ExoPlaybackException exoPlaybackExceptionCreateForUnexpected = ExoPlaybackException.createForUnexpected(e17, ((e17 instanceof IllegalStateException) || (e17 instanceof IllegalArgumentException)) ? 1004 : 1000);
            com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForUnexpected);
            f1(true, false);
            this.f25214x = this.f25214x.e(exoPlaybackExceptionCreateForUnexpected);
        }
        U();
        return true;
    }

    public synchronized boolean i0() {
        if (!this.f25216z && this.f25199i.isAlive()) {
            this.f25198h.sendEmptyMessage(7);
            n1(new com.google.common.base.q() { // from class: com.google.android.exoplayer2.j1
                @Override // com.google.common.base.q
                public final Object get() {
                    return this.f25145a.R();
                }
            }, this.f25212v);
            return this.f25216z;
        }
        return true;
    }

    public void l0(int i11, int i12, t9.t tVar) {
        this.f25198h.obtainMessage(20, i11, i12, tVar).a();
    }

    @Override // com.google.android.exoplayer2.o.a
    public void onPlaybackParametersChanged(n2 n2Var) {
        this.f25198h.obtainMessage(16, n2Var).a();
    }

    @Override // la.q.a
    public void onTrackSelectionsInvalidated() {
        this.f25198h.sendEmptyMessage(10);
    }

    public void s(long j11) {
        this.P = j11;
    }

    public void y0(k3 k3Var, int i11, long j11) {
        this.f25198h.obtainMessage(3, new h(k3Var, i11, j11)).a();
    }

    public Looper z() {
        return this.f25200j;
    }
}
