package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x2;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 extends androidx.media3.exoplayer.i implements x2 {
    private DecoderInputBuffer A;
    private SimpleDecoderOutputBuffer B;
    private DrmSession C;
    private DrmSession D;
    private int E;
    private boolean F;
    private boolean G;
    private long H;
    private boolean I;
    private boolean J;
    private boolean K;
    private long L;
    private final long[] M;
    private int N;
    private boolean O;
    private boolean P;
    private long Q;
    private long R;
    private long S;
    private boolean T;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final x.a f11138r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final AudioSink f11139s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final DecoderInputBuffer f11140t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private androidx.media3.exoplayer.j f11141u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private androidx.media3.common.r f11142v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f11143w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f11144x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f11145y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private androidx.media3.decoder.g f11146z;

    private static final class b {
        public static void a(AudioSink audioSink, Object obj) {
            audioSink.h((AudioDeviceInfo) obj);
        }
    }

    private final class c implements AudioSink.b {
        private c() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void a(Exception exc) {
            androidx.media3.common.util.u.d("DecoderAudioRenderer", "Audio sink error", exc);
            d0.this.f11138r.n(exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void b(long j11) {
            d0.this.f11138r.H(j11);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public /* synthetic */ void c() {
            z.c(this);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public /* synthetic */ void d() {
            z.b(this);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void e() {
            d0.this.O = true;
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public /* synthetic */ void f() {
            z.a(this);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void j(AudioSink.a aVar) {
            d0.this.f11138r.o(aVar);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void k(AudioSink.a aVar) {
            d0.this.f11138r.p(aVar);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void onPositionDiscontinuity() {
            d0.this.c0();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void onSkipSilenceEnabledChanged(boolean z10) {
            d0.this.f11138r.I(z10);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void onUnderrun(int i11, long j11, long j12) {
            d0.this.f11138r.J(i11, j11, j12);
        }
    }

    public d0() {
        this((Handler) null, (x) null, new AudioProcessor[0]);
    }

    public d0(Handler handler, x xVar, AudioSink audioSink) {
        super(1);
        this.f11138r = new x.a(handler, xVar);
        this.f11139s = audioSink;
        audioSink.j(new c());
        this.f11140t = DecoderInputBuffer.f();
        this.E = 0;
        this.G = true;
        h0(C.TIME_UNSET);
        this.M = new long[10];
        this.Q = C.TIME_UNSET;
        this.R = C.TIME_UNSET;
        this.S = C.TIME_UNSET;
    }

    public d0(Handler handler, x xVar, e eVar, AudioProcessor... audioProcessorArr) {
        this(handler, xVar, new DefaultAudioSink.g().k((e) com.google.common.base.h.a(eVar, e.f11162c)).m(audioProcessorArr).j());
    }

    public d0(Handler handler, x xVar, AudioProcessor... audioProcessorArr) {
        this(handler, xVar, null, audioProcessorArr);
    }

    private boolean U() throws ExoPlaybackException {
        if (this.B == null) {
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) this.f11146z.dequeueOutputBuffer();
            this.B = simpleDecoderOutputBuffer;
            if (simpleDecoderOutputBuffer == null) {
                return false;
            }
            int i11 = simpleDecoderOutputBuffer.skippedOutputBufferCount;
            if (i11 > 0) {
                this.f11141u.f12036f += i11;
                this.f11139s.handleDiscontinuity();
            }
            if (this.B.isFirstSample()) {
                e0();
            }
        }
        if (this.B.isEndOfStream()) {
            if (this.E == 2) {
                f0();
                a0();
                this.G = true;
            } else {
                this.B.release();
                this.B = null;
                try {
                    d0();
                } catch (AudioSink.WriteException e11) {
                    throw r(e11, e11.format, e11.isRecoverable, 5002);
                }
            }
            return false;
        }
        this.S = C.TIME_UNSET;
        if (this.G) {
            this.f11139s.l(Y(this.f11146z).b().Z(this.f11143w).a0(this.f11144x).n0(this.f11142v.f10158l).X(this.f11142v.f10159m).f0(this.f11142v.f10147a).h0(this.f11142v.f10148b).i0(this.f11142v.f10149c).j0(this.f11142v.f10150d).w0(this.f11142v.f10151e).s0(this.f11142v.f10152f).N(), 0, X(this.f11146z));
            this.G = false;
        }
        AudioSink audioSink = this.f11139s;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = this.B;
        if (!audioSink.c(simpleDecoderOutputBuffer2.f10939b, simpleDecoderOutputBuffer2.timeUs, 1)) {
            this.S = this.B.timeUs;
            return false;
        }
        this.f11141u.f12035e++;
        this.B.release();
        this.B = null;
        return true;
    }

    private boolean V() throws ExoPlaybackException {
        androidx.media3.decoder.g gVar = this.f11146z;
        if (gVar == null || this.E == 2 || this.J) {
            return false;
        }
        if (this.A == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) gVar.dequeueInputBuffer();
            this.A = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        if (this.E == 1) {
            this.A.setFlags(4);
            this.f11146z.queueInputBuffer(this.A);
            this.A = null;
            this.E = 2;
            return false;
        }
        s2 s2VarU = u();
        int iN = N(s2VarU, this.A, 0);
        if (iN == -5) {
            b0(s2VarU);
            return true;
        }
        if (iN != -4) {
            if (iN != -3) {
                throw new IllegalStateException();
            }
            if (hasReadStreamToEnd()) {
                this.R = this.Q;
            }
            return false;
        }
        if (this.A.isEndOfStream()) {
            this.J = true;
            this.R = this.Q;
            this.f11146z.queueInputBuffer(this.A);
            this.A = null;
            return false;
        }
        if (!this.f11145y) {
            this.f11145y = true;
            this.A.addFlag(ASTNode.NOJIT);
        }
        this.Q = this.A.f10920e;
        if (hasReadStreamToEnd() || this.A.isLastSample()) {
            this.R = this.Q;
        }
        this.A.d();
        DecoderInputBuffer decoderInputBuffer2 = this.A;
        decoderInputBuffer2.f10916a = this.f11142v;
        this.f11146z.queueInputBuffer(decoderInputBuffer2);
        this.F = true;
        this.f11141u.f12033c++;
        this.A = null;
        return true;
    }

    private void W() throws ExoPlaybackException {
        if (this.E != 0) {
            f0();
            a0();
            return;
        }
        this.A = null;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = this.B;
        if (simpleDecoderOutputBuffer != null) {
            simpleDecoderOutputBuffer.release();
            this.B = null;
        }
        androidx.media3.decoder.g gVar = (androidx.media3.decoder.g) androidx.media3.common.util.a.e(this.f11146z);
        gVar.flush();
        gVar.a(w());
        this.F = false;
    }

    private void a0() throws ExoPlaybackException {
        androidx.media3.decoder.b bVarC;
        if (this.f11146z != null) {
            return;
        }
        g0(this.D);
        DrmSession drmSession = this.C;
        if (drmSession != null) {
            bVarC = drmSession.c();
            if (bVarC == null && this.C.getError() == null) {
                return;
            }
        } else {
            bVarC = null;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            androidx.media3.common.util.q0.a("createAudioDecoder");
            androidx.media3.decoder.g gVarT = T(this.f11142v, bVarC);
            this.f11146z = gVarT;
            gVarT.a(w());
            androidx.media3.common.util.q0.b();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f11138r.q(this.f11146z.getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.f11141u.f12031a++;
        } catch (DecoderException e11) {
            androidx.media3.common.util.u.d("DecoderAudioRenderer", "Audio codec error", e11);
            this.f11138r.m(e11);
            throw q(e11, this.f11142v, 4001);
        } catch (OutOfMemoryError e12) {
            throw q(e12, this.f11142v, 4001);
        }
    }

    private void b0(s2 s2Var) throws ExoPlaybackException {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b);
        i0(s2Var.f12569a);
        androidx.media3.common.r rVar2 = this.f11142v;
        this.f11142v = rVar;
        this.f11143w = rVar.H;
        this.f11144x = rVar.I;
        androidx.media3.decoder.g gVar = this.f11146z;
        if (gVar == null) {
            a0();
            this.f11138r.u(this.f11142v, null);
            return;
        }
        androidx.media3.exoplayer.k kVar = this.D != this.C ? new androidx.media3.exoplayer.k(gVar.getName(), rVar2, rVar, 0, 128) : S(gVar.getName(), rVar2, rVar);
        if (kVar.f12053d == 0) {
            if (this.F) {
                this.E = 1;
            } else {
                f0();
                a0();
                this.G = true;
            }
        }
        this.f11138r.u(this.f11142v, kVar);
    }

    private void d0() {
        this.K = true;
        this.f11139s.playToEndOfStream();
        this.S = this.R;
        this.T = true;
    }

    private void e0() {
        this.f11139s.handleDiscontinuity();
        if (this.N != 0) {
            h0(this.M[0]);
            int i11 = this.N - 1;
            this.N = i11;
            long[] jArr = this.M;
            System.arraycopy(jArr, 1, jArr, 0, i11);
        }
    }

    private void f0() {
        this.A = null;
        this.B = null;
        this.E = 0;
        this.F = false;
        this.Q = C.TIME_UNSET;
        this.R = C.TIME_UNSET;
        androidx.media3.decoder.g gVar = this.f11146z;
        if (gVar != null) {
            this.f11141u.f12032b++;
            gVar.release();
            this.f11138r.r(this.f11146z.getName());
            this.f11146z = null;
        }
        g0(null);
    }

    private void g0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.C, drmSession);
        this.C = drmSession;
    }

    private void h0(long j11) {
        this.L = j11;
        if (j11 != C.TIME_UNSET) {
            this.f11139s.n(j11);
        }
    }

    private void i0(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.D, drmSession);
        this.D = drmSession;
    }

    private void l0() {
        long currentPositionUs = this.f11139s.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.I) {
                currentPositionUs = Math.max(this.H, currentPositionUs);
            }
            this.H = currentPositionUs;
            this.I = false;
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void C() {
        this.f11142v = null;
        this.G = true;
        h0(C.TIME_UNSET);
        this.O = false;
        this.S = C.TIME_UNSET;
        this.T = false;
        try {
            i0(null);
            f0();
            this.f11139s.reset();
        } finally {
            this.f11138r.s(this.f11141u);
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void D(boolean z10, boolean z11) {
        androidx.media3.exoplayer.j jVar = new androidx.media3.exoplayer.j();
        this.f11141u = jVar;
        this.f11138r.t(jVar);
        if (t().f13400b) {
            this.f11139s.d();
        } else {
            this.f11139s.disableTunneling();
        }
        this.f11139s.p(x());
        this.f11139s.r(s());
    }

    @Override // androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) throws ExoPlaybackException {
        this.f11139s.flush();
        this.H = j11;
        this.S = C.TIME_UNSET;
        this.T = false;
        this.O = false;
        this.I = true;
        this.J = false;
        this.K = false;
        if (this.f11146z != null) {
            W();
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void J() {
        this.f11139s.play();
        this.P = true;
    }

    @Override // androidx.media3.exoplayer.i
    protected void K() {
        l0();
        this.f11139s.pause();
        this.P = false;
    }

    @Override // androidx.media3.exoplayer.i
    protected void L(androidx.media3.common.r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        super.L(rVarArr, j11, j12, bVar);
        this.f11145y = false;
        if (this.L == C.TIME_UNSET) {
            h0(j12);
            return;
        }
        int i11 = this.N;
        if (i11 == this.M.length) {
            androidx.media3.common.util.u.h("DecoderAudioRenderer", "Too many stream changes, so dropping offset: " + this.M[this.N - 1]);
        } else {
            this.N = i11 + 1;
        }
        this.M[this.N - 1] = j12;
    }

    protected androidx.media3.exoplayer.k S(String str, androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        return new androidx.media3.exoplayer.k(str, rVar, rVar2, 0, 1);
    }

    protected abstract androidx.media3.decoder.g T(androidx.media3.common.r rVar, androidx.media3.decoder.b bVar);

    protected int[] X(androidx.media3.decoder.g gVar) {
        return null;
    }

    protected abstract androidx.media3.common.r Y(androidx.media3.decoder.g gVar);

    protected final int Z(androidx.media3.common.r rVar) {
        return this.f11139s.o(rVar);
    }

    @Override // androidx.media3.exoplayer.y3
    public final int a(androidx.media3.common.r rVar) {
        if (!androidx.media3.common.y.o(rVar.f10161o)) {
            return x3.a(0);
        }
        int iK0 = k0(rVar);
        return iK0 <= 2 ? x3.a(iK0) : x3.b(iK0, 8, 32);
    }

    @Override // androidx.media3.exoplayer.x2
    public void b(androidx.media3.common.z zVar) {
        this.f11139s.b(zVar);
    }

    protected void c0() {
        this.I = true;
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public x2 getMediaClock() {
        return this;
    }

    @Override // androidx.media3.exoplayer.x2
    public androidx.media3.common.z getPlaybackParameters() {
        return this.f11139s.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.x2
    public long getPositionUs() {
        if (getState() == 2) {
            l0();
        }
        return this.H;
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) {
        if (i11 == 2) {
            this.f11139s.setVolume(((Float) obj).floatValue());
            return;
        }
        if (i11 == 3) {
            this.f11139s.f((androidx.media3.common.c) obj);
            return;
        }
        if (i11 == 6) {
            this.f11139s.q((androidx.media3.common.f) obj);
            return;
        }
        if (i11 == 12) {
            if (androidx.media3.common.util.a1.f10350a >= 23) {
                b.a(this.f11139s, obj);
            }
        } else if (i11 == 9) {
            this.f11139s.e(((Boolean) obj).booleanValue());
        } else if (i11 != 10) {
            super.handleMessage(i11, obj);
        } else {
            this.f11139s.setAudioSessionId(((Integer) obj).intValue());
        }
    }

    @Override // androidx.media3.exoplayer.x2
    public boolean i() {
        boolean z10 = this.O;
        this.O = false;
        return z10;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return this.K && this.f11139s.isEnded();
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isReady() {
        return this.f11139s.hasPendingData() || (this.f11142v != null && (B() || this.B != null));
    }

    protected final boolean j0(androidx.media3.common.r rVar) {
        return this.f11139s.a(rVar);
    }

    protected abstract int k0(androidx.media3.common.r rVar);

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public long l(long j11, long j12) {
        if (this.S == C.TIME_UNSET) {
            return super.l(j11, j12);
        }
        long jI = this.f11139s.i();
        if (!this.T && jI == C.TIME_UNSET) {
            return super.l(j11, j12);
        }
        long jMin = this.S - j11;
        if (jI != C.TIME_UNSET) {
            jMin = Math.min(jI, jMin);
        }
        long jR0 = (long) ((jMin / (getPlaybackParameters() != null ? getPlaybackParameters().f10566a : 1.0f)) / 2.0f);
        if (this.P) {
            jR0 -= androidx.media3.common.util.a1.R0(s().elapsedRealtime()) - j12;
        }
        return Math.max(10000L, jR0);
    }

    @Override // androidx.media3.exoplayer.w3
    public void render(long j11, long j12) throws ExoPlaybackException {
        if (this.K) {
            try {
                this.f11139s.playToEndOfStream();
                this.S = this.R;
                this.T = true;
                return;
            } catch (AudioSink.WriteException e11) {
                throw r(e11, e11.format, e11.isRecoverable, 5002);
            }
        }
        if (this.f11142v == null) {
            s2 s2VarU = u();
            this.f11140t.clear();
            int iN = N(s2VarU, this.f11140t, 2);
            if (iN != -5) {
                if (iN == -4) {
                    androidx.media3.common.util.a.g(this.f11140t.isEndOfStream());
                    this.J = true;
                    try {
                        d0();
                        return;
                    } catch (AudioSink.WriteException e12) {
                        throw q(e12, null, 5002);
                    }
                }
                return;
            }
            b0(s2VarU);
        }
        a0();
        if (this.f11146z != null) {
            try {
                androidx.media3.common.util.q0.a("drainAndFeed");
                while (U()) {
                }
                while (V()) {
                }
                androidx.media3.common.util.q0.b();
                this.f11141u.c();
            } catch (DecoderException e13) {
                androidx.media3.common.util.u.d("DecoderAudioRenderer", "Audio codec error", e13);
                this.f11138r.m(e13);
                throw q(e13, this.f11142v, 4003);
            } catch (AudioSink.ConfigurationException e14) {
                throw q(e14, e14.format, 5001);
            } catch (AudioSink.InitializationException e15) {
                throw r(e15, e15.format, e15.isRecoverable, 5001);
            } catch (AudioSink.WriteException e16) {
                throw r(e16, e16.format, e16.isRecoverable, 5002);
            }
        }
    }
}
