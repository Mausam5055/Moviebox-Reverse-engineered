package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.media3.common.m0;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.o0;
import androidx.media3.common.util.q0;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends androidx.media3.exoplayer.i {
    private VideoDecoderOutputBuffer A;
    private int B;
    private Object C;
    private Surface D;
    private s E;
    private t F;
    private DrmSession G;
    private DrmSession H;
    private int I;
    private boolean J;
    private int K;
    private long L;
    private long M;
    private boolean N;
    private boolean O;
    private boolean P;
    private m0 Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private long V;
    protected androidx.media3.exoplayer.j W;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f13078r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f13079s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final i0.a f13080t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final o0 f13081u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final DecoderInputBuffer f13082v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private androidx.media3.common.r f13083w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private androidx.media3.common.r f13084x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private androidx.media3.decoder.g f13085y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private DecoderInputBuffer f13086z;

    protected b(long j11, Handler handler, i0 i0Var, int i11) {
        super(2);
        this.f13078r = j11;
        this.f13079s = i11;
        this.M = C.TIME_UNSET;
        this.f13081u = new o0();
        this.f13082v = DecoderInputBuffer.f();
        this.f13080t = new i0.a(handler, i0Var);
        this.I = 0;
        this.B = -1;
        this.K = 0;
        this.W = new androidx.media3.exoplayer.j();
    }

    private boolean S(long j11, long j12) throws ExoPlaybackException {
        if (this.A == null) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f13085y)).dequeueOutputBuffer();
            this.A = videoDecoderOutputBuffer;
            if (videoDecoderOutputBuffer == null) {
                return false;
            }
            androidx.media3.exoplayer.j jVar = this.W;
            int i11 = jVar.f12036f;
            int i12 = videoDecoderOutputBuffer.skippedOutputBufferCount;
            jVar.f12036f = i11 + i12;
            this.U -= i12;
        }
        if (!this.A.isEndOfStream()) {
            boolean zN0 = n0(j11, j12);
            if (zN0) {
                l0(((VideoDecoderOutputBuffer) androidx.media3.common.util.a.e(this.A)).timeUs);
                this.A = null;
            }
            return zN0;
        }
        if (this.I == 2) {
            o0();
            b0();
        } else {
            this.A.release();
            this.A = null;
            this.P = true;
        }
        return false;
    }

    private boolean U() throws ExoPlaybackException {
        androidx.media3.decoder.g gVar = this.f13085y;
        if (gVar == null || this.I == 2 || this.O) {
            return false;
        }
        if (this.f13086z == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) gVar.dequeueInputBuffer();
            this.f13086z = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        DecoderInputBuffer decoderInputBuffer2 = (DecoderInputBuffer) androidx.media3.common.util.a.e(this.f13086z);
        if (this.I == 1) {
            decoderInputBuffer2.setFlags(4);
            ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f13085y)).queueInputBuffer(decoderInputBuffer2);
            this.f13086z = null;
            this.I = 2;
            return false;
        }
        s2 s2VarU = u();
        int iN = N(s2VarU, decoderInputBuffer2, 0);
        if (iN == -5) {
            h0(s2VarU);
            return true;
        }
        if (iN != -4) {
            if (iN == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        if (decoderInputBuffer2.isEndOfStream()) {
            this.O = true;
            ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f13085y)).queueInputBuffer(decoderInputBuffer2);
            this.f13086z = null;
            return false;
        }
        if (this.N) {
            this.f13081u.a(decoderInputBuffer2.f10920e, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f13083w));
            this.N = false;
        }
        decoderInputBuffer2.d();
        decoderInputBuffer2.f10916a = this.f13083w;
        m0(decoderInputBuffer2);
        ((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f13085y)).queueInputBuffer(decoderInputBuffer2);
        this.U++;
        this.J = true;
        this.W.f12033c++;
        this.f13086z = null;
        return true;
    }

    private boolean W() {
        return this.B != -1;
    }

    private static boolean X(long j11) {
        return j11 < -30000;
    }

    private static boolean Y(long j11) {
        return j11 < -500000;
    }

    private void Z(int i11) {
        this.K = Math.min(this.K, i11);
    }

    private void b0() throws ExoPlaybackException {
        androidx.media3.decoder.b bVarC;
        if (this.f13085y != null) {
            return;
        }
        r0(this.H);
        DrmSession drmSession = this.G;
        if (drmSession != null) {
            bVarC = drmSession.c();
            if (bVarC == null && this.G.getError() == null) {
                return;
            }
        } else {
            bVarC = null;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            androidx.media3.decoder.g gVarR = R((androidx.media3.common.r) androidx.media3.common.util.a.e(this.f13083w), bVarC);
            this.f13085y = gVarR;
            gVarR.a(w());
            s0(this.B);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f13080t.k(((androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f13085y)).getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.W.f12031a++;
        } catch (DecoderException e11) {
            androidx.media3.common.util.u.d("DecoderVideoRenderer", "Video codec error", e11);
            this.f13080t.C(e11);
            throw q(e11, this.f13083w, 4001);
        } catch (OutOfMemoryError e12) {
            throw q(e12, this.f13083w, 4001);
        }
    }

    private void c0() {
        if (this.S > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f13080t.n(this.S, jElapsedRealtime - this.R);
            this.S = 0;
            this.R = jElapsedRealtime;
        }
    }

    private void d0() {
        if (this.K != 3) {
            this.K = 3;
            Object obj = this.C;
            if (obj != null) {
                this.f13080t.A(obj);
            }
        }
    }

    private void e0(int i11, int i12) {
        m0 m0Var = this.Q;
        if (m0Var != null && m0Var.f10115a == i11 && m0Var.f10116b == i12) {
            return;
        }
        m0 m0Var2 = new m0(i11, i12);
        this.Q = m0Var2;
        this.f13080t.D(m0Var2);
    }

    private void f0() {
        Object obj;
        if (this.K != 3 || (obj = this.C) == null) {
            return;
        }
        this.f13080t.A(obj);
    }

    private void g0() {
        m0 m0Var = this.Q;
        if (m0Var != null) {
            this.f13080t.D(m0Var);
        }
    }

    private void i0() {
        g0();
        Z(1);
        if (getState() == 2) {
            t0();
        }
    }

    private void j0() {
        this.Q = null;
        Z(1);
    }

    private void k0() {
        g0();
        f0();
    }

    private boolean n0(long j11, long j12) {
        if (this.L == C.TIME_UNSET) {
            this.L = j11;
        }
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) androidx.media3.common.util.a.e(this.A);
        long j13 = videoDecoderOutputBuffer.timeUs;
        long j14 = j13 - j11;
        if (!W()) {
            if (!X(j14)) {
                return false;
            }
            A0(videoDecoderOutputBuffer);
            return true;
        }
        androidx.media3.common.r rVar = (androidx.media3.common.r) this.f13081u.j(j13);
        if (rVar != null) {
            this.f13084x = rVar;
        } else if (this.f13084x == null) {
            this.f13084x = (androidx.media3.common.r) this.f13081u.i();
        }
        long jZ = j13 - z();
        if (y0(j14)) {
            p0(videoDecoderOutputBuffer, jZ, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f13084x));
            return true;
        }
        if (getState() != 2 || j11 == this.L || (w0(j14, j12) && a0(j11))) {
            return false;
        }
        if (x0(j14, j12)) {
            T(videoDecoderOutputBuffer);
            return true;
        }
        if (j14 < 30000) {
            p0(videoDecoderOutputBuffer, jZ, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.f13084x));
            return true;
        }
        return false;
    }

    private void r0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.G, drmSession);
        this.G = drmSession;
    }

    private void t0() {
        this.M = this.f13078r > 0 ? SystemClock.elapsedRealtime() + this.f13078r : C.TIME_UNSET;
    }

    private void v0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.H, drmSession);
        this.H = drmSession;
    }

    private boolean y0(long j11) {
        boolean z10 = getState() == 2;
        int i11 = this.K;
        if (i11 == 0) {
            return z10;
        }
        if (i11 == 1) {
            return true;
        }
        if (i11 == 3) {
            return z10 && z0(j11, a1.R0(SystemClock.elapsedRealtime()) - this.V);
        }
        throw new IllegalStateException();
    }

    protected void A0(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.W.f12036f++;
        videoDecoderOutputBuffer.release();
    }

    protected void B0(int i11, int i12) {
        androidx.media3.exoplayer.j jVar = this.W;
        jVar.f12038h += i11;
        int i13 = i11 + i12;
        jVar.f12037g += i13;
        this.S += i13;
        int i14 = this.T + i13;
        this.T = i14;
        jVar.f12039i = Math.max(i14, jVar.f12039i);
        int i15 = this.f13079s;
        if (i15 <= 0 || this.S < i15) {
            return;
        }
        c0();
    }

    @Override // androidx.media3.exoplayer.i
    protected void C() {
        this.f13083w = null;
        this.Q = null;
        Z(0);
        try {
            v0(null);
            o0();
        } finally {
            this.f13080t.m(this.W);
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void D(boolean z10, boolean z11) {
        androidx.media3.exoplayer.j jVar = new androidx.media3.exoplayer.j();
        this.W = jVar;
        this.f13080t.o(jVar);
        this.K = z11 ? 1 : 0;
    }

    @Override // androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) throws ExoPlaybackException {
        this.O = false;
        this.P = false;
        Z(1);
        this.L = C.TIME_UNSET;
        this.T = 0;
        if (this.f13085y != null) {
            V();
        }
        if (z10) {
            t0();
        } else {
            this.M = C.TIME_UNSET;
        }
        this.f13081u.c();
    }

    @Override // androidx.media3.exoplayer.i
    protected void J() {
        this.S = 0;
        this.R = SystemClock.elapsedRealtime();
        this.V = a1.R0(SystemClock.elapsedRealtime());
    }

    @Override // androidx.media3.exoplayer.i
    protected void K() {
        this.M = C.TIME_UNSET;
        c0();
    }

    @Override // androidx.media3.exoplayer.i
    protected void L(androidx.media3.common.r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        super.L(rVarArr, j11, j12, bVar);
    }

    protected androidx.media3.exoplayer.k Q(String str, androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        return new androidx.media3.exoplayer.k(str, rVar, rVar2, 0, 1);
    }

    protected abstract androidx.media3.decoder.g R(androidx.media3.common.r rVar, androidx.media3.decoder.b bVar);

    protected void T(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        B0(0, 1);
        videoDecoderOutputBuffer.release();
    }

    protected void V() throws ExoPlaybackException {
        this.U = 0;
        if (this.I != 0) {
            o0();
            b0();
            return;
        }
        this.f13086z = null;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.A;
        if (videoDecoderOutputBuffer != null) {
            videoDecoderOutputBuffer.release();
            this.A = null;
        }
        androidx.media3.decoder.g gVar = (androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f13085y);
        gVar.flush();
        gVar.a(w());
        this.J = false;
    }

    protected boolean a0(long j11) throws ExoPlaybackException {
        int iP = P(j11);
        if (iP == 0) {
            return false;
        }
        this.W.f12040j++;
        B0(iP, this.U);
        V();
        return true;
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public void c() {
        if (this.K == 0) {
            this.K = 1;
        }
    }

    protected void h0(s2 s2Var) throws ExoPlaybackException {
        this.N = true;
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b);
        v0(s2Var.f12569a);
        androidx.media3.common.r rVar2 = this.f13083w;
        this.f13083w = rVar;
        androidx.media3.decoder.g gVar = this.f13085y;
        if (gVar == null) {
            b0();
            this.f13080t.p((androidx.media3.common.r) androidx.media3.common.util.a.e(this.f13083w), null);
            return;
        }
        androidx.media3.exoplayer.k kVar = this.H != this.G ? new androidx.media3.exoplayer.k(gVar.getName(), (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar2), rVar, 0, 128) : Q(gVar.getName(), (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar2), rVar);
        if (kVar.f12053d == 0) {
            if (this.J) {
                this.I = 1;
            } else {
                o0();
                b0();
            }
        }
        this.f13080t.p((androidx.media3.common.r) androidx.media3.common.util.a.e(this.f13083w), kVar);
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) {
        if (i11 == 1) {
            u0(obj);
        } else if (i11 == 7) {
            this.F = (t) obj;
        } else {
            super.handleMessage(i11, obj);
        }
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return this.P;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isReady() {
        if (this.f13083w != null && ((B() || this.A != null) && (this.K == 3 || !W()))) {
            this.M = C.TIME_UNSET;
            return true;
        }
        if (this.M == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.M) {
            return true;
        }
        this.M = C.TIME_UNSET;
        return false;
    }

    protected void l0(long j11) {
        this.U--;
    }

    protected void m0(DecoderInputBuffer decoderInputBuffer) {
    }

    protected void o0() {
        this.f13086z = null;
        this.A = null;
        this.I = 0;
        this.J = false;
        this.U = 0;
        androidx.media3.decoder.g gVar = this.f13085y;
        if (gVar != null) {
            this.W.f12032b++;
            gVar.release();
            this.f13080t.l(this.f13085y.getName());
            this.f13085y = null;
        }
        r0(null);
    }

    protected void p0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, long j11, androidx.media3.common.r rVar) {
        t tVar = this.F;
        if (tVar != null) {
            tVar.f(j11, s().nanoTime(), rVar, null);
        }
        this.V = a1.R0(SystemClock.elapsedRealtime());
        int i11 = videoDecoderOutputBuffer.mode;
        boolean z10 = i11 == 1 && this.D != null;
        boolean z11 = i11 == 0 && this.E != null;
        if (!z11 && !z10) {
            T(videoDecoderOutputBuffer);
            return;
        }
        e0(videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
        if (z11) {
            ((s) androidx.media3.common.util.a.e(this.E)).setOutputBuffer(videoDecoderOutputBuffer);
        } else {
            q0(videoDecoderOutputBuffer, (Surface) androidx.media3.common.util.a.e(this.D));
        }
        this.T = 0;
        this.W.f12035e++;
        d0();
    }

    protected abstract void q0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface);

    @Override // androidx.media3.exoplayer.w3
    public void render(long j11, long j12) throws ExoPlaybackException {
        if (this.P) {
            return;
        }
        if (this.f13083w == null) {
            s2 s2VarU = u();
            this.f13082v.clear();
            int iN = N(s2VarU, this.f13082v, 2);
            if (iN != -5) {
                if (iN == -4) {
                    androidx.media3.common.util.a.g(this.f13082v.isEndOfStream());
                    this.O = true;
                    this.P = true;
                    return;
                }
                return;
            }
            h0(s2VarU);
        }
        b0();
        if (this.f13085y != null) {
            try {
                q0.a("drainAndFeed");
                while (S(j11, j12)) {
                }
                while (U()) {
                }
                q0.b();
                this.W.c();
            } catch (DecoderException e11) {
                androidx.media3.common.util.u.d("DecoderVideoRenderer", "Video codec error", e11);
                this.f13080t.C(e11);
                throw q(e11, this.f13083w, 4003);
            }
        }
    }

    protected abstract void s0(int i11);

    protected final void u0(Object obj) {
        if (obj instanceof Surface) {
            this.D = (Surface) obj;
            this.E = null;
            this.B = 1;
        } else if (obj instanceof s) {
            this.D = null;
            this.E = (s) obj;
            this.B = 0;
        } else {
            this.D = null;
            this.E = null;
            this.B = -1;
            obj = null;
        }
        if (this.C == obj) {
            if (obj != null) {
                k0();
                return;
            }
            return;
        }
        this.C = obj;
        if (obj == null) {
            j0();
            return;
        }
        if (this.f13085y != null) {
            s0(this.B);
        }
        i0();
    }

    protected boolean w0(long j11, long j12) {
        return Y(j11);
    }

    protected boolean x0(long j11, long j12) {
        return X(j11);
    }

    protected boolean z0(long j11, long j12) {
        return X(j11) && j12 > 100000;
    }
}
