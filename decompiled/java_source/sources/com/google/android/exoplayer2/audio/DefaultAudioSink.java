package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.exoplayer.audio.w0;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import e9.u1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultAudioSink implements AudioSink {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static boolean f24535c0;
    private int A;
    private long B;
    private long C;
    private long D;
    private long E;
    private int F;
    private boolean G;
    private boolean H;
    private long I;
    private float J;
    private AudioProcessor[] K;
    private ByteBuffer[] L;
    private ByteBuffer M;
    private int N;
    private ByteBuffer O;
    private byte[] P;
    private int Q;
    private int R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private int W;
    private u X;
    private boolean Y;
    private long Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.f f24536a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f24537a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f24538b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f24539b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f24540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w f24541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h0 f24542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AudioProcessor[] f24543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AudioProcessor[] f24544g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h f24545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final t f24546i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ArrayDeque f24547j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f24548k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f24549l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private j f24550m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final h f24551n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final h f24552o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final c f24553p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private u1 f24554q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private AudioSink.a f24555r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private e f24556s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private e f24557t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AudioTrack f24558u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f24559v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private g f24560w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private g f24561x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private n2 f24562y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ByteBuffer f24563z;

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    private static final class a {
        public static void a(AudioTrack audioTrack, u1 u1Var) {
            LogSessionId logSessionIdA = u1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionIdA);
        }
    }

    public interface b {
        boolean a(boolean z10);

        n2 b(n2 n2Var);

        AudioProcessor[] getAudioProcessors();

        long getMediaDuration(long j11);

        long getSkippedOutputFrameCount();
    }

    interface c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f24564a = new x.a().g();

        int a(int i11, int i12, int i13, int i14, int i15, double d11);
    }

    public static final class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f24566b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f24567c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f24568d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.google.android.exoplayer2.audio.f f24565a = com.google.android.exoplayer2.audio.f.f24660c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f24569e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        c f24570f = c.f24564a;

        public DefaultAudioSink f() {
            if (this.f24566b == null) {
                this.f24566b = new f(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this);
        }

        public d g(com.google.android.exoplayer2.audio.f fVar) {
            com.google.android.exoplayer2.util.a.e(fVar);
            this.f24565a = fVar;
            return this;
        }

        public d h(boolean z10) {
            this.f24568d = z10;
            return this;
        }

        public d i(boolean z10) {
            this.f24567c = z10;
            return this;
        }

        public d j(int i11) {
            this.f24569e = i11;
            return this;
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final o1 f24571a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f24572b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f24573c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f24574d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f24575e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f24576f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f24577g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f24578h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AudioProcessor[] f24579i;

        public e(o1 o1Var, int i11, int i12, int i13, int i14, int i15, int i16, int i17, AudioProcessor[] audioProcessorArr) {
            this.f24571a = o1Var;
            this.f24572b = i11;
            this.f24573c = i12;
            this.f24574d = i13;
            this.f24575e = i14;
            this.f24576f = i15;
            this.f24577g = i16;
            this.f24578h = i17;
            this.f24579i = audioProcessorArr;
        }

        private AudioTrack d(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i11) {
            int i12 = p0.f27626a;
            if (i12 >= 29) {
                return f(z10, eVar, i11);
            }
            return i12 >= 21 ? e(z10, eVar, i11) : g(eVar, i11);
        }

        private AudioTrack e(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i11) {
            return new AudioTrack(i(eVar, z10), DefaultAudioSink.B(this.f24575e, this.f24576f, this.f24577g), this.f24578h, 1, i11);
        }

        private AudioTrack f(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i11) {
            return new AudioTrack.Builder().setAudioAttributes(i(eVar, z10)).setAudioFormat(DefaultAudioSink.B(this.f24575e, this.f24576f, this.f24577g)).setTransferMode(1).setBufferSizeInBytes(this.f24578h).setSessionId(i11).setOffloadedPlayback(this.f24573c == 1).build();
        }

        private AudioTrack g(com.google.android.exoplayer2.audio.e eVar, int i11) {
            int iG0 = p0.g0(eVar.f24638c);
            return i11 == 0 ? new AudioTrack(iG0, this.f24575e, this.f24576f, this.f24577g, this.f24578h, 1) : new AudioTrack(iG0, this.f24575e, this.f24576f, this.f24577g, this.f24578h, 1, i11);
        }

        private static AudioAttributes i(com.google.android.exoplayer2.audio.e eVar, boolean z10) {
            return z10 ? j() : eVar.b().f24642a;
        }

        private static AudioAttributes j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public AudioTrack a(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i11) throws AudioSink.InitializationException {
            try {
                AudioTrack audioTrackD = d(z10, eVar, i11);
                int state = audioTrackD.getState();
                if (state == 1) {
                    return audioTrackD;
                }
                try {
                    audioTrackD.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.f24575e, this.f24576f, this.f24578h, this.f24571a, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e11) {
                throw new AudioSink.InitializationException(0, this.f24575e, this.f24576f, this.f24578h, this.f24571a, l(), e11);
            }
        }

        public boolean b(e eVar) {
            return eVar.f24573c == this.f24573c && eVar.f24577g == this.f24577g && eVar.f24575e == this.f24575e && eVar.f24576f == this.f24576f && eVar.f24574d == this.f24574d;
        }

        public e c(int i11) {
            return new e(this.f24571a, this.f24572b, this.f24573c, this.f24574d, this.f24575e, this.f24576f, this.f24577g, i11, this.f24579i);
        }

        public long h(long j11) {
            return (j11 * 1000000) / ((long) this.f24575e);
        }

        public long k(long j11) {
            return (j11 * 1000000) / ((long) this.f24571a.f25510z);
        }

        public boolean l() {
            return this.f24573c == 1;
        }
    }

    public static class f implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AudioProcessor[] f24580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e0 f24581b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final g0 f24582c;

        public f(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new e0(), new g0());
        }

        public f(AudioProcessor[] audioProcessorArr, e0 e0Var, g0 g0Var) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f24580a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f24581b = e0Var;
            this.f24582c = g0Var;
            audioProcessorArr2[audioProcessorArr.length] = e0Var;
            audioProcessorArr2[audioProcessorArr.length + 1] = g0Var;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public boolean a(boolean z10) {
            this.f24581b.q(z10);
            return z10;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public n2 b(n2 n2Var) {
            this.f24582c.d(n2Var.f25475a);
            this.f24582c.c(n2Var.f25476b);
            return n2Var;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public AudioProcessor[] getAudioProcessors() {
            return this.f24580a;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public long getMediaDuration(long j11) {
            return this.f24582c.b(j11);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public long getSkippedOutputFrameCount() {
            return this.f24581b.k();
        }
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n2 f24583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f24584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f24585c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f24586d;

        private g(n2 n2Var, boolean z10, long j11, long j12) {
            this.f24583a = n2Var;
            this.f24584b = z10;
            this.f24585c = j11;
            this.f24586d = j12;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f24587a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Exception f24588b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f24589c;

        public h(long j11) {
            this.f24587a = j11;
        }

        public void a() {
            this.f24588b = null;
        }

        public void b(Exception exc) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f24588b == null) {
                this.f24588b = exc;
                this.f24589c = this.f24587a + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.f24589c) {
                Exception exc2 = this.f24588b;
                if (exc2 != exc) {
                    exc2.addSuppressed(exc);
                }
                Exception exc3 = this.f24588b;
                a();
                throw exc3;
            }
        }
    }

    private final class i implements t.a {
        private i() {
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void b(long j11) {
            if (DefaultAudioSink.this.f24555r != null) {
                DefaultAudioSink.this.f24555r.b(j11);
            }
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void onInvalidLatency(long j11) {
            com.google.android.exoplayer2.util.s.i("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j11);
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void onPositionFramesMismatch(long j11, long j12, long j13, long j14) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j11 + ", " + j12 + ", " + j13 + ", " + j14 + ", " + DefaultAudioSink.this.I() + ", " + DefaultAudioSink.this.J();
            if (DefaultAudioSink.f24535c0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            com.google.android.exoplayer2.util.s.i("DefaultAudioSink", str);
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void onSystemTimeUsMismatch(long j11, long j12, long j13, long j14) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j11 + ", " + j12 + ", " + j13 + ", " + j14 + ", " + DefaultAudioSink.this.I() + ", " + DefaultAudioSink.this.J();
            if (DefaultAudioSink.f24535c0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            com.google.android.exoplayer2.util.s.i("DefaultAudioSink", str);
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void onUnderrun(int i11, long j11) {
            if (DefaultAudioSink.this.f24555r != null) {
                DefaultAudioSink.this.f24555r.onUnderrun(i11, j11, SystemClock.elapsedRealtime() - DefaultAudioSink.this.Z);
            }
        }
    }

    private final class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f24591a = new Handler();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AudioTrack$StreamEventCallback f24592b;

        class a extends AudioTrack$StreamEventCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ DefaultAudioSink f24594a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f24594a = defaultAudioSink;
            }

            public void onDataRequest(AudioTrack audioTrack, int i11) {
                com.google.android.exoplayer2.util.a.g(audioTrack == DefaultAudioSink.this.f24558u);
                if (DefaultAudioSink.this.f24555r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.f24555r.d();
            }

            public void onTearDown(AudioTrack audioTrack) {
                com.google.android.exoplayer2.util.a.g(audioTrack == DefaultAudioSink.this.f24558u);
                if (DefaultAudioSink.this.f24555r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.f24555r.d();
            }
        }

        public j() {
            this.f24592b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f24591a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new w0(handler), this.f24592b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f24592b);
            this.f24591a.removeCallbacksAndMessages(null);
        }
    }

    private DefaultAudioSink(d dVar) {
        this.f24536a = dVar.f24565a;
        b bVar = dVar.f24566b;
        this.f24538b = bVar;
        int i11 = p0.f27626a;
        this.f24540c = i11 >= 21 && dVar.f24567c;
        this.f24548k = i11 >= 23 && dVar.f24568d;
        this.f24549l = i11 >= 29 ? dVar.f24569e : 0;
        this.f24553p = dVar.f24570f;
        com.google.android.exoplayer2.util.h hVar = new com.google.android.exoplayer2.util.h(com.google.android.exoplayer2.util.e.f27567a);
        this.f24545h = hVar;
        hVar.f();
        this.f24546i = new t(new i());
        w wVar = new w();
        this.f24541d = wVar;
        h0 h0Var = new h0();
        this.f24542e = h0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new d0(), wVar, h0Var);
        Collections.addAll(arrayList, bVar.getAudioProcessors());
        this.f24543f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f24544g = new AudioProcessor[]{new z()};
        this.J = 1.0f;
        this.f24559v = com.google.android.exoplayer2.audio.e.f24634g;
        this.W = 0;
        this.X = new u(0, 0.0f);
        n2 n2Var = n2.f25473d;
        this.f24561x = new g(n2Var, false, 0L, 0L);
        this.f24562y = n2Var;
        this.R = -1;
        this.K = new AudioProcessor[0];
        this.L = new ByteBuffer[0];
        this.f24547j = new ArrayDeque();
        this.f24551n = new h(100L);
        this.f24552o = new h(100L);
    }

    private void A() {
        int i11 = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.K;
            if (i11 >= audioProcessorArr.length) {
                return;
            }
            AudioProcessor audioProcessor = audioProcessorArr[i11];
            audioProcessor.flush();
            this.L[i11] = audioProcessor.getOutput();
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AudioFormat B(int i11, int i12, int i13) {
        return new AudioFormat.Builder().setSampleRate(i11).setChannelMask(i12).setEncoding(i13).build();
    }

    private n2 C() {
        return F().f24583a;
    }

    private static int D(int i11, int i12, int i13) {
        int minBufferSize = AudioTrack.getMinBufferSize(i11, i12, i13);
        com.google.android.exoplayer2.util.a.g(minBufferSize != -2);
        return minBufferSize;
    }

    private static int E(int i11, ByteBuffer byteBuffer) {
        switch (i11) {
            case 5:
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.b.d(byteBuffer);
            case 7:
            case 8:
                return y.e(byteBuffer);
            case 9:
                int iM = b0.m(p0.I(byteBuffer, byteBuffer.position()));
                if (iM != -1) {
                    return iM;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i11);
            case 14:
                int iA = com.google.android.exoplayer2.audio.b.a(byteBuffer);
                if (iA == -1) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.b.h(byteBuffer, iA) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.google.android.exoplayer2.audio.c.c(byteBuffer);
        }
    }

    private g F() {
        g gVar = this.f24560w;
        if (gVar != null) {
            return gVar;
        }
        return !this.f24547j.isEmpty() ? (g) this.f24547j.getLast() : this.f24561x;
    }

    private int G(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        int i11 = p0.f27626a;
        if (i11 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i11 == 30 && p0.f27629d.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long I() {
        e eVar = this.f24557t;
        return eVar.f24573c == 0 ? this.B / ((long) eVar.f24572b) : this.C;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long J() {
        e eVar = this.f24557t;
        return eVar.f24573c == 0 ? this.D / ((long) eVar.f24574d) : this.E;
    }

    private boolean K() throws AudioSink.InitializationException {
        u1 u1Var;
        if (!this.f24545h.e()) {
            return false;
        }
        AudioTrack audioTrackY = y();
        this.f24558u = audioTrackY;
        if (N(audioTrackY)) {
            R(this.f24558u);
            if (this.f24549l != 3) {
                AudioTrack audioTrack = this.f24558u;
                o1 o1Var = this.f24557t.f24571a;
                audioTrack.setOffloadDelayPadding(o1Var.B, o1Var.C);
            }
        }
        if (p0.f27626a >= 31 && (u1Var = this.f24554q) != null) {
            a.a(this.f24558u, u1Var);
        }
        this.W = this.f24558u.getAudioSessionId();
        t tVar = this.f24546i;
        AudioTrack audioTrack2 = this.f24558u;
        e eVar = this.f24557t;
        tVar.s(audioTrack2, eVar.f24573c == 2, eVar.f24577g, eVar.f24574d, eVar.f24578h);
        V();
        int i11 = this.X.f24774a;
        if (i11 != 0) {
            this.f24558u.attachAuxEffect(i11);
            this.f24558u.setAuxEffectSendLevel(this.X.f24775b);
        }
        this.H = true;
        return true;
    }

    private static boolean L(int i11) {
        return (p0.f27626a >= 24 && i11 == -6) || i11 == -32;
    }

    private boolean M() {
        return this.f24558u != null;
    }

    private static boolean N(AudioTrack audioTrack) {
        return p0.f27626a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private void O() {
        if (this.f24557t.l()) {
            this.f24537a0 = true;
        }
    }

    private void P() {
        if (this.T) {
            return;
        }
        this.T = true;
        this.f24546i.g(J());
        this.f24558u.stop();
        this.A = 0;
    }

    private void Q(long j11) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.K.length;
        int i11 = length;
        while (i11 >= 0) {
            if (i11 > 0) {
                byteBuffer = this.L[i11 - 1];
            } else {
                byteBuffer = this.M;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f24529a;
                }
            }
            if (i11 == length) {
                c0(byteBuffer, j11);
            } else {
                AudioProcessor audioProcessor = this.K[i11];
                if (i11 > this.R) {
                    audioProcessor.queueInput(byteBuffer);
                }
                ByteBuffer output = audioProcessor.getOutput();
                this.L[i11] = output;
                if (output.hasRemaining()) {
                    i11++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i11--;
            }
        }
    }

    private void R(AudioTrack audioTrack) {
        if (this.f24550m == null) {
            this.f24550m = new j();
        }
        this.f24550m.a(audioTrack);
    }

    private void S() {
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.f24539b0 = false;
        this.F = 0;
        this.f24561x = new g(C(), H(), 0L, 0L);
        this.I = 0L;
        this.f24560w = null;
        this.f24547j.clear();
        this.M = null;
        this.N = 0;
        this.O = null;
        this.T = false;
        this.S = false;
        this.R = -1;
        this.f24563z = null;
        this.A = 0;
        this.f24542e.i();
        A();
    }

    private void T(n2 n2Var, boolean z10) {
        g gVarF = F();
        if (n2Var.equals(gVarF.f24583a) && z10 == gVarF.f24584b) {
            return;
        }
        g gVar = new g(n2Var, z10, C.TIME_UNSET, C.TIME_UNSET);
        if (M()) {
            this.f24560w = gVar;
        } else {
            this.f24561x = gVar;
        }
    }

    private void U(n2 n2Var) {
        if (M()) {
            try {
                this.f24558u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(n2Var.f25475a).setPitch(n2Var.f25476b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e11) {
                com.google.android.exoplayer2.util.s.j("DefaultAudioSink", "Failed to set playback params", e11);
            }
            n2Var = new n2(this.f24558u.getPlaybackParams().getSpeed(), this.f24558u.getPlaybackParams().getPitch());
            this.f24546i.t(n2Var.f25475a);
        }
        this.f24562y = n2Var;
    }

    private void V() {
        if (M()) {
            if (p0.f27626a >= 21) {
                W(this.f24558u, this.J);
            } else {
                X(this.f24558u, this.J);
            }
        }
    }

    private static void W(AudioTrack audioTrack, float f11) {
        audioTrack.setVolume(f11);
    }

    private static void X(AudioTrack audioTrack, float f11) {
        audioTrack.setStereoVolume(f11, f11);
    }

    private void Y() {
        AudioProcessor[] audioProcessorArr = this.f24557t.f24579i;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.K = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.L = new ByteBuffer[size];
        A();
    }

    private boolean Z() {
        return (this.Y || !MimeTypes.AUDIO_RAW.equals(this.f24557t.f24571a.f25496l) || a0(this.f24557t.f24571a.A)) ? false : true;
    }

    private boolean a0(int i11) {
        return this.f24540c && p0.t0(i11);
    }

    private boolean b0(o1 o1Var, com.google.android.exoplayer2.audio.e eVar) {
        int iF;
        int iG;
        int iG2;
        if (p0.f27626a < 29 || this.f24549l == 0 || (iF = com.google.android.exoplayer2.util.w.f((String) com.google.android.exoplayer2.util.a.e(o1Var.f25496l), o1Var.f25493i)) == 0 || (iG = p0.G(o1Var.f25509y)) == 0 || (iG2 = G(B(o1Var.f25510z, iG, iF), eVar.b().f24642a)) == 0) {
            return false;
        }
        if (iG2 == 1) {
            return ((o1Var.B != 0 || o1Var.C != 0) && (this.f24549l == 1)) ? false : true;
        }
        if (iG2 == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    private void c0(ByteBuffer byteBuffer, long j11) throws Exception {
        int iD0;
        AudioSink.a aVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.O;
            if (byteBuffer2 != null) {
                com.google.android.exoplayer2.util.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.O = byteBuffer;
                if (p0.f27626a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.P;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.P = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.P, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.Q = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            if (p0.f27626a < 21) {
                int iC = this.f24546i.c(this.D);
                if (iC > 0) {
                    iD0 = this.f24558u.write(this.P, this.Q, Math.min(iRemaining2, iC));
                    if (iD0 > 0) {
                        this.Q += iD0;
                        byteBuffer.position(byteBuffer.position() + iD0);
                    }
                } else {
                    iD0 = 0;
                }
            } else if (this.Y) {
                com.google.android.exoplayer2.util.a.g(j11 != C.TIME_UNSET);
                iD0 = e0(this.f24558u, byteBuffer, iRemaining2, j11);
            } else {
                iD0 = d0(this.f24558u, byteBuffer, iRemaining2);
            }
            this.Z = SystemClock.elapsedRealtime();
            if (iD0 < 0) {
                boolean zL = L(iD0);
                if (zL) {
                    O();
                }
                AudioSink.WriteException writeException = new AudioSink.WriteException(iD0, this.f24557t.f24571a, zL);
                AudioSink.a aVar2 = this.f24555r;
                if (aVar2 != null) {
                    aVar2.a(writeException);
                }
                if (writeException.isRecoverable) {
                    throw writeException;
                }
                this.f24552o.b(writeException);
                return;
            }
            this.f24552o.a();
            if (N(this.f24558u)) {
                if (this.E > 0) {
                    this.f24539b0 = false;
                }
                if (this.U && (aVar = this.f24555r) != null && iD0 < iRemaining2 && !this.f24539b0) {
                    aVar.c();
                }
            }
            int i11 = this.f24557t.f24573c;
            if (i11 == 0) {
                this.D += (long) iD0;
            }
            if (iD0 == iRemaining2) {
                if (i11 != 0) {
                    com.google.android.exoplayer2.util.a.g(byteBuffer == this.M);
                    this.E += ((long) this.F) * ((long) this.N);
                }
                this.O = null;
            }
        }
    }

    private static int d0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i11) {
        return audioTrack.write(byteBuffer, i11, 1);
    }

    private int e0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i11, long j11) {
        if (p0.f27626a >= 26) {
            return audioTrack.write(byteBuffer, i11, 1, j11 * 1000);
        }
        if (this.f24563z == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.f24563z = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.f24563z.putInt(1431633921);
        }
        if (this.A == 0) {
            this.f24563z.putInt(4, i11);
            this.f24563z.putLong(8, j11 * 1000);
            this.f24563z.position(0);
            this.A = i11;
        }
        int iRemaining = this.f24563z.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.f24563z, iRemaining, 1);
            if (iWrite < 0) {
                this.A = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iD0 = d0(audioTrack, byteBuffer, i11);
        if (iD0 < 0) {
            this.A = 0;
            return iD0;
        }
        this.A -= iD0;
        return iD0;
    }

    private void u(long j11) {
        n2 n2VarB = Z() ? this.f24538b.b(C()) : n2.f25473d;
        boolean zA = Z() ? this.f24538b.a(H()) : false;
        this.f24547j.add(new g(n2VarB, zA, Math.max(0L, j11), this.f24557t.h(J())));
        Y();
        AudioSink.a aVar = this.f24555r;
        if (aVar != null) {
            aVar.onSkipSilenceEnabledChanged(zA);
        }
    }

    private long v(long j11) {
        while (!this.f24547j.isEmpty() && j11 >= ((g) this.f24547j.getFirst()).f24586d) {
            this.f24561x = (g) this.f24547j.remove();
        }
        g gVar = this.f24561x;
        long j12 = j11 - gVar.f24586d;
        if (gVar.f24583a.equals(n2.f25473d)) {
            return this.f24561x.f24585c + j12;
        }
        if (this.f24547j.isEmpty()) {
            return this.f24561x.f24585c + this.f24538b.getMediaDuration(j12);
        }
        g gVar2 = (g) this.f24547j.getFirst();
        return gVar2.f24585c - p0.a0(gVar2.f24586d - j11, this.f24561x.f24583a.f25475a);
    }

    private long w(long j11) {
        return j11 + this.f24557t.h(this.f24538b.getSkippedOutputFrameCount());
    }

    private AudioTrack x(e eVar) throws AudioSink.InitializationException {
        try {
            return eVar.a(this.Y, this.f24559v, this.W);
        } catch (AudioSink.InitializationException e11) {
            AudioSink.a aVar = this.f24555r;
            if (aVar != null) {
                aVar.a(e11);
            }
            throw e11;
        }
    }

    private AudioTrack y() throws AudioSink.InitializationException {
        try {
            return x((e) com.google.android.exoplayer2.util.a.e(this.f24557t));
        } catch (AudioSink.InitializationException e11) {
            e eVar = this.f24557t;
            if (eVar.f24578h > 1000000) {
                e eVarC = eVar.c(1000000);
                try {
                    AudioTrack audioTrackX = x(eVarC);
                    this.f24557t = eVarC;
                    return audioTrackX;
                } catch (AudioSink.InitializationException e12) {
                    e11.addSuppressed(e12);
                    O();
                    throw e11;
                }
            }
            O();
            throw e11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private boolean z() {
        /*
            r9 = this;
            int r0 = r9.R
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.R = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.R
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.K
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.queueEndOfStream()
        L1f:
            r9.Q(r7)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.R
            int r0 = r0 + r1
            r9.R = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            r9.c0(r0, r7)
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.R = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.z():boolean");
    }

    public boolean H() {
        return F().f24584b;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean a(o1 o1Var) {
        return h(o1Var) != 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void b(n2 n2Var) {
        n2 n2Var2 = new n2(p0.p(n2Var.f25475a, 0.1f, 8.0f), p0.p(n2Var.f25476b, 0.1f, 8.0f));
        if (!this.f24548k || p0.f27626a < 23) {
            T(n2Var2, H());
        } else {
            U(n2Var2);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean c(ByteBuffer byteBuffer, long j11, int i11) throws Exception {
        ByteBuffer byteBuffer2 = this.M;
        com.google.android.exoplayer2.util.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f24556s != null) {
            if (!z()) {
                return false;
            }
            if (this.f24556s.b(this.f24557t)) {
                this.f24557t = this.f24556s;
                this.f24556s = null;
                if (N(this.f24558u) && this.f24549l != 3) {
                    if (this.f24558u.getPlayState() == 3) {
                        this.f24558u.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.f24558u;
                    o1 o1Var = this.f24557t.f24571a;
                    audioTrack.setOffloadDelayPadding(o1Var.B, o1Var.C);
                    this.f24539b0 = true;
                }
            } else {
                P();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            u(j11);
        }
        if (!M()) {
            try {
                if (!K()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e11) {
                if (e11.isRecoverable) {
                    throw e11;
                }
                this.f24551n.b(e11);
                return false;
            }
        }
        this.f24551n.a();
        if (this.H) {
            this.I = Math.max(0L, j11);
            this.G = false;
            this.H = false;
            if (this.f24548k && p0.f27626a >= 23) {
                U(this.f24562y);
            }
            u(j11);
            if (this.U) {
                play();
            }
        }
        if (!this.f24546i.k(J())) {
            return false;
        }
        if (this.M == null) {
            com.google.android.exoplayer2.util.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            e eVar = this.f24557t;
            if (eVar.f24573c != 0 && this.F == 0) {
                int iE = E(eVar.f24577g, byteBuffer);
                this.F = iE;
                if (iE == 0) {
                    return true;
                }
            }
            if (this.f24560w != null) {
                if (!z()) {
                    return false;
                }
                u(j11);
                this.f24560w = null;
            }
            long jK = this.I + this.f24557t.k(I() - this.f24542e.h());
            if (!this.G && Math.abs(jK - j11) > 200000) {
                this.f24555r.a(new AudioSink.UnexpectedDiscontinuityException(j11, jK));
                this.G = true;
            }
            if (this.G) {
                if (!z()) {
                    return false;
                }
                long j12 = j11 - jK;
                this.I += j12;
                this.G = false;
                u(j11);
                AudioSink.a aVar = this.f24555r;
                if (aVar != null && j12 != 0) {
                    aVar.onPositionDiscontinuity();
                }
            }
            if (this.f24557t.f24573c == 0) {
                this.B += (long) byteBuffer.remaining();
            } else {
                this.C += ((long) this.F) * ((long) i11);
            }
            this.M = byteBuffer;
            this.N = i11;
        }
        Q(j11);
        if (!this.M.hasRemaining()) {
            this.M = null;
            this.N = 0;
            return true;
        }
        if (!this.f24546i.j(J())) {
            return false;
        }
        com.google.android.exoplayer2.util.s.i("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void d() {
        com.google.android.exoplayer2.util.a.g(p0.f27626a >= 21);
        com.google.android.exoplayer2.util.a.g(this.V);
        if (this.Y) {
            return;
        }
        this.Y = true;
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void disableTunneling() {
        if (this.Y) {
            this.Y = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void e(boolean z10) {
        T(C(), z10);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void f(com.google.android.exoplayer2.audio.e eVar) {
        if (this.f24559v.equals(eVar)) {
            return;
        }
        this.f24559v = eVar;
        if (this.Y) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (M()) {
            S();
            if (this.f24546i.i()) {
                this.f24558u.pause();
            }
            if (N(this.f24558u)) {
                ((j) com.google.android.exoplayer2.util.a.e(this.f24550m)).b(this.f24558u);
            }
            final AudioTrack audioTrack = this.f24558u;
            this.f24558u = null;
            if (p0.f27626a < 21 && !this.V) {
                this.W = 0;
            }
            e eVar = this.f24556s;
            if (eVar != null) {
                this.f24557t = eVar;
                this.f24556s = null;
            }
            this.f24546i.q();
            this.f24545h.d();
            new Thread("ExoPlayer:AudioTrackReleaseThread") { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.f24545h.f();
                    }
                }
            }.start();
        }
        this.f24552o.a();
        this.f24551n.a();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void g(AudioSink.a aVar) {
        this.f24555r = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long getCurrentPositionUs(boolean z10) {
        if (!M() || this.H) {
            return Long.MIN_VALUE;
        }
        return w(v(Math.min(this.f24546i.d(z10), this.f24557t.h(J()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public n2 getPlaybackParameters() {
        return this.f24548k ? this.f24562y : C();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int h(o1 o1Var) {
        if (!MimeTypes.AUDIO_RAW.equals(o1Var.f25496l)) {
            return ((this.f24537a0 || !b0(o1Var, this.f24559v)) && !this.f24536a.h(o1Var)) ? 0 : 2;
        }
        if (p0.u0(o1Var.A)) {
            int i11 = o1Var.A;
            return (i11 == 2 || (this.f24540c && i11 == 4)) ? 2 : 1;
        }
        com.google.android.exoplayer2.util.s.i("DefaultAudioSink", "Invalid PCM encoding: " + o1Var.A);
        return 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void handleDiscontinuity() {
        this.G = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean hasPendingData() {
        return M() && this.f24546i.h(J());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void i() {
        if (p0.f27626a < 25) {
            flush();
            return;
        }
        this.f24552o.a();
        this.f24551n.a();
        if (M()) {
            S();
            if (this.f24546i.i()) {
                this.f24558u.pause();
            }
            this.f24558u.flush();
            this.f24546i.q();
            t tVar = this.f24546i;
            AudioTrack audioTrack = this.f24558u;
            e eVar = this.f24557t;
            tVar.s(audioTrack, eVar.f24573c == 2, eVar.f24577g, eVar.f24574d, eVar.f24578h);
            this.H = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean isEnded() {
        return !M() || (this.S && !hasPendingData());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void j(u uVar) {
        if (this.X.equals(uVar)) {
            return;
        }
        int i11 = uVar.f24774a;
        float f11 = uVar.f24775b;
        AudioTrack audioTrack = this.f24558u;
        if (audioTrack != null) {
            if (this.X.f24774a != i11) {
                audioTrack.attachAuxEffect(i11);
            }
            if (i11 != 0) {
                this.f24558u.setAuxEffectSendLevel(f11);
            }
        }
        this.X = uVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void k(u1 u1Var) {
        this.f24554q = u1Var;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void l(o1 o1Var, int i11, int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessor[] audioProcessorArr;
        int i12;
        int i13;
        int iIntValue;
        int i14;
        int iE0;
        int iF;
        int i15;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(o1Var.f25496l)) {
            com.google.android.exoplayer2.util.a.a(p0.u0(o1Var.A));
            int iE1 = p0.e0(o1Var.A, o1Var.f25509y);
            AudioProcessor[] audioProcessorArr2 = a0(o1Var.A) ? this.f24544g : this.f24543f;
            this.f24542e.j(o1Var.B, o1Var.C);
            if (p0.f27626a < 21 && o1Var.f25509y == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i16 = 0; i16 < 6; i16++) {
                    iArr2[i16] = i16;
                }
            } else {
                iArr2 = iArr;
            }
            this.f24541d.h(iArr2);
            AudioProcessor.a aVar = new AudioProcessor.a(o1Var.f25510z, o1Var.f25509y, o1Var.A);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.a aVarA = audioProcessor.a(aVar);
                    if (audioProcessor.isActive()) {
                        aVar = aVarA;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e11) {
                    throw new AudioSink.ConfigurationException(e11, o1Var);
                }
            }
            int i17 = aVar.f24533c;
            int i18 = aVar.f24531a;
            int iG = p0.G(aVar.f24532b);
            audioProcessorArr = audioProcessorArr2;
            iE0 = p0.e0(i17, aVar.f24532b);
            iF = i17;
            i12 = i18;
            iIntValue = iG;
            i14 = iE1;
            i15 = 0;
        } else {
            audioProcessorArr = new AudioProcessor[0];
            i12 = o1Var.f25510z;
            if (b0(o1Var, this.f24559v)) {
                i13 = 1;
                iF = com.google.android.exoplayer2.util.w.f((String) com.google.android.exoplayer2.util.a.e(o1Var.f25496l), o1Var.f25493i);
                i14 = -1;
                iE0 = -1;
                iIntValue = p0.G(o1Var.f25509y);
            } else {
                Pair pairF = this.f24536a.f(o1Var);
                if (pairF == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + o1Var, o1Var);
                }
                int iIntValue2 = ((Integer) pairF.first).intValue();
                i13 = 2;
                iIntValue = ((Integer) pairF.second).intValue();
                i14 = -1;
                iE0 = -1;
                iF = iIntValue2;
            }
            i15 = i13;
        }
        int iA = i11 != 0 ? i11 : this.f24553p.a(D(i12, iIntValue, iF), iF, i15, iE0, i12, this.f24548k ? 8.0d : 1.0d);
        if (iF == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i15 + ") for: " + o1Var, o1Var);
        }
        if (iIntValue == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i15 + ") for: " + o1Var, o1Var);
        }
        this.f24537a0 = false;
        e eVar = new e(o1Var, i14, i15, iE0, i12, iIntValue, iF, iA, audioProcessorArr);
        if (M()) {
            this.f24556s = eVar;
        } else {
            this.f24557t = eVar;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.U = false;
        if (M() && this.f24546i.p()) {
            this.f24558u.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void play() {
        this.U = true;
        if (M()) {
            this.f24546i.u();
            this.f24558u.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void playToEndOfStream() {
        if (!this.S && M() && z()) {
            P();
            this.S = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.f24543f) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.f24544g) {
            audioProcessor2.reset();
        }
        this.U = false;
        this.f24537a0 = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioSessionId(int i11) {
        if (this.W != i11) {
            this.W = i11;
            this.V = i11 != 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float f11) {
        if (this.J != f11) {
            this.J = f11;
            V();
        }
    }
}
