package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.exoplayer.ExoPlayer;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultAudioSink implements AudioSink {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static boolean f11007l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final Object f11008m0 = new Object();

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static ScheduledExecutorService f11009n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static int f11010o0;
    private k A;
    private androidx.media3.common.c B;
    private j C;
    private j D;
    private androidx.media3.common.z E;
    private boolean F;
    private ByteBuffer G;
    private int H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    private boolean N;
    private boolean O;
    private long P;
    private float Q;
    private ByteBuffer R;
    private int S;
    private ByteBuffer T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private int Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11011a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private androidx.media3.common.f f11012a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t1.n f11013b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private androidx.media3.exoplayer.audio.j f11014b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f11015c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean f11016c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c0 f11017d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private long f11018d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f1 f11019e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private long f11020e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImmutableList f11021f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private boolean f11022f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ImmutableList f11023g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f11024g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f11025h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private Looper f11026h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ArrayDeque f11027i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private long f11028i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f11029j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private long f11030j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f11031k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private Handler f11032k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private n f11033l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final l f11034m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final l f11035n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f11036o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final d f11037p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ExoPlayer.a f11038q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final f f11039r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private f4 f11040s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private AudioSink.b f11041t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private h f11042u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private h f11043v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private androidx.media3.common.audio.a f11044w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AudioTrack f11045x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private androidx.media3.exoplayer.audio.e f11046y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private androidx.media3.exoplayer.audio.i f11047z;

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    private static final class b {
        public static long a(AudioTrack audioTrack, h hVar) {
            return hVar.f11062c == 0 ? hVar.d(audioTrack.getBufferSizeInFrames()) : androidx.media3.common.util.a1.g1(audioTrack.getBufferSizeInFrames(), 1000000L, x0.d(hVar.f11066g), RoundingMode.DOWN);
        }

        public static void b(AudioTrack audioTrack, androidx.media3.exoplayer.audio.j jVar) {
            audioTrack.setPreferredDevice(jVar == null ? null : jVar.f11196a);
        }
    }

    private static final class c {
        public static void a(AudioTrack audioTrack, f4 f4Var) {
            LogSessionId logSessionIdA = f4Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionIdA);
        }
    }

    public interface d {
        androidx.media3.exoplayer.audio.k a(androidx.media3.common.r rVar, androidx.media3.common.c cVar);
    }

    public interface e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f11048a = new x0.a().h();

        int a(int i11, int i12, int i13, int i14, int i15, int i16, double d11);
    }

    public interface f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f11049a = new z0();

        AudioTrack a(AudioSink.a aVar, androidx.media3.common.c cVar, int i11);
    }

    public static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f11050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.media3.exoplayer.audio.e f11051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private t1.n f11052c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f11053d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f11054e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f11055f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private e f11056g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private f f11057h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private d f11058i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private ExoPlayer.a f11059j;

        @Deprecated
        public g() {
            this.f11050a = null;
            this.f11051b = androidx.media3.exoplayer.audio.e.f11162c;
            this.f11056g = e.f11048a;
            this.f11057h = f.f11049a;
        }

        public g(Context context) {
            this.f11050a = context;
            this.f11051b = androidx.media3.exoplayer.audio.e.f11162c;
            this.f11056g = e.f11048a;
            this.f11057h = f.f11049a;
        }

        public DefaultAudioSink j() {
            androidx.media3.common.util.a.g(!this.f11055f);
            this.f11055f = true;
            if (this.f11052c == null) {
                this.f11052c = new i(new AudioProcessor[0]);
            }
            if (this.f11058i == null) {
                this.f11058i = new f0(this.f11050a);
            }
            return new DefaultAudioSink(this);
        }

        public g k(androidx.media3.exoplayer.audio.e eVar) {
            androidx.media3.common.util.a.e(eVar);
            this.f11051b = eVar;
            return this;
        }

        public g l(t1.n nVar) {
            androidx.media3.common.util.a.e(nVar);
            this.f11052c = nVar;
            return this;
        }

        public g m(AudioProcessor[] audioProcessorArr) {
            androidx.media3.common.util.a.e(audioProcessorArr);
            return l(new i(audioProcessorArr));
        }

        public g n(boolean z10) {
            this.f11054e = z10;
            return this;
        }

        public g o(boolean z10) {
            this.f11053d = z10;
            return this;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.r f11060a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11062c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f11063d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f11064e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f11065f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f11066g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f11067h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final androidx.media3.common.audio.a f11068i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f11069j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f11070k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f11071l;

        public h(androidx.media3.common.r rVar, int i11, int i12, int i13, int i14, int i15, int i16, int i17, androidx.media3.common.audio.a aVar, boolean z10, boolean z11, boolean z12) {
            this.f11060a = rVar;
            this.f11061b = i11;
            this.f11062c = i12;
            this.f11063d = i13;
            this.f11064e = i14;
            this.f11065f = i15;
            this.f11066g = i16;
            this.f11067h = i17;
            this.f11068i = aVar;
            this.f11069j = z10;
            this.f11070k = z11;
            this.f11071l = z12;
        }

        public AudioSink.a a() {
            return new AudioSink.a(this.f11066g, this.f11064e, this.f11065f, this.f11071l, this.f11062c == 1, this.f11067h);
        }

        public boolean b(h hVar) {
            return hVar.f11062c == this.f11062c && hVar.f11066g == this.f11066g && hVar.f11064e == this.f11064e && hVar.f11065f == this.f11065f && hVar.f11063d == this.f11063d && hVar.f11069j == this.f11069j && hVar.f11070k == this.f11070k;
        }

        public h c(int i11) {
            return new h(this.f11060a, this.f11061b, this.f11062c, this.f11063d, this.f11064e, this.f11065f, this.f11066g, i11, this.f11068i, this.f11069j, this.f11070k, this.f11071l);
        }

        public long d(long j11) {
            return androidx.media3.common.util.a1.d1(j11, this.f11064e);
        }

        public long e(long j11) {
            return androidx.media3.common.util.a1.d1(j11, this.f11060a.F);
        }

        public boolean f() {
            return this.f11062c == 1;
        }
    }

    public static class i implements t1.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AudioProcessor[] f11072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d1 f11073b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.media3.common.audio.d f11074c;

        public i(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new d1(), new androidx.media3.common.audio.d());
        }

        public i(AudioProcessor[] audioProcessorArr, d1 d1Var, androidx.media3.common.audio.d dVar) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f11072a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f11073b = d1Var;
            this.f11074c = dVar;
            audioProcessorArr2[audioProcessorArr.length] = d1Var;
            audioProcessorArr2[audioProcessorArr.length + 1] = dVar;
        }

        @Override // t1.n
        public boolean a(boolean z10) {
            this.f11073b.y(z10);
            return z10;
        }

        @Override // t1.n
        public androidx.media3.common.z b(androidx.media3.common.z zVar) {
            this.f11074c.e(zVar.f10566a);
            this.f11074c.d(zVar.f10567b);
            return zVar;
        }

        @Override // t1.n
        public AudioProcessor[] getAudioProcessors() {
            return this.f11072a;
        }

        @Override // t1.n
        public long getMediaDuration(long j11) {
            return this.f11074c.isActive() ? this.f11074c.c(j11) : j11;
        }

        @Override // t1.n
        public long getSkippedOutputFrameCount() {
            return this.f11073b.p();
        }
    }

    private static final class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.z f11075a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f11076b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f11077c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f11078d;

        private j(androidx.media3.common.z zVar, long j11, long j12) {
            this.f11075a = zVar;
            this.f11076b = j11;
            this.f11077c = j12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AudioTrack f11079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.exoplayer.audio.i f11080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private AudioRouting.OnRoutingChangedListener f11081c = new AudioRouting.OnRoutingChangedListener() { // from class: androidx.media3.exoplayer.audio.t0
            @Override // android.media.AudioRouting.OnRoutingChangedListener
            public final void onRoutingChanged(AudioRouting audioRouting) {
                this.f11233a.b(audioRouting);
            }
        };

        public k(AudioTrack audioTrack, androidx.media3.exoplayer.audio.i iVar) {
            this.f11079a = audioTrack;
            this.f11080b = iVar;
            audioTrack.addOnRoutingChangedListener(this.f11081c, new Handler(Looper.myLooper()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(AudioRouting audioRouting) {
            AudioDeviceInfo routedDevice;
            if (this.f11081c == null || (routedDevice = audioRouting.getRoutedDevice()) == null) {
                return;
            }
            this.f11080b.i(routedDevice);
        }

        public void c() {
            this.f11079a.removeOnRoutingChangedListener(q0.a(androidx.media3.common.util.a.e(this.f11081c)));
            this.f11081c = null;
        }
    }

    private static final class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Exception f11082a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f11083b = C.TIME_UNSET;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f11084c = C.TIME_UNSET;

        public void a() {
            this.f11082a = null;
            this.f11083b = C.TIME_UNSET;
            this.f11084c = C.TIME_UNSET;
        }

        public boolean b() {
            if (this.f11082a == null) {
                return false;
            }
            return DefaultAudioSink.Q() || SystemClock.elapsedRealtime() < this.f11084c;
        }

        public void c(Exception exc) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f11082a == null) {
                this.f11082a = exc;
            }
            if (this.f11083b == C.TIME_UNSET && !DefaultAudioSink.Q()) {
                this.f11083b = 200 + jElapsedRealtime;
            }
            long j11 = this.f11083b;
            if (j11 == C.TIME_UNSET || jElapsedRealtime < j11) {
                this.f11084c = jElapsedRealtime + 50;
                return;
            }
            Exception exc2 = this.f11082a;
            if (exc2 != exc) {
                exc2.addSuppressed(exc);
            }
            Exception exc3 = this.f11082a;
            a();
            throw exc3;
        }
    }

    private final class m implements b0.a {
        private m() {
        }

        @Override // androidx.media3.exoplayer.audio.b0.a
        public void b(long j11) {
            if (DefaultAudioSink.this.f11041t != null) {
                DefaultAudioSink.this.f11041t.b(j11);
            }
        }

        @Override // androidx.media3.exoplayer.audio.b0.a
        public void onInvalidLatency(long j11) {
            androidx.media3.common.util.u.h("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j11);
        }

        @Override // androidx.media3.exoplayer.audio.b0.a
        public void onPositionFramesMismatch(long j11, long j12, long j13, long j14) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j11 + ", " + j12 + ", " + j13 + ", " + j14 + ", " + DefaultAudioSink.this.N() + ", " + DefaultAudioSink.this.O();
            if (DefaultAudioSink.f11007l0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            androidx.media3.common.util.u.h("DefaultAudioSink", str);
        }

        @Override // androidx.media3.exoplayer.audio.b0.a
        public void onSystemTimeUsMismatch(long j11, long j12, long j13, long j14) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j11 + ", " + j12 + ", " + j13 + ", " + j14 + ", " + DefaultAudioSink.this.N() + ", " + DefaultAudioSink.this.O();
            if (DefaultAudioSink.f11007l0) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            androidx.media3.common.util.u.h("DefaultAudioSink", str);
        }

        @Override // androidx.media3.exoplayer.audio.b0.a
        public void onUnderrun(int i11, long j11) {
            if (DefaultAudioSink.this.f11041t != null) {
                DefaultAudioSink.this.f11041t.onUnderrun(i11, j11, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f11020e0);
            }
        }
    }

    private final class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f11086a = new Handler(Looper.myLooper());

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AudioTrack$StreamEventCallback f11087b;

        class a extends AudioTrack$StreamEventCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ DefaultAudioSink f11089a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f11089a = defaultAudioSink;
            }

            public void onDataRequest(AudioTrack audioTrack, int i11) {
                if (audioTrack.equals(DefaultAudioSink.this.f11045x) && DefaultAudioSink.this.f11041t != null && DefaultAudioSink.this.X) {
                    DefaultAudioSink.this.f11041t.d();
                }
            }

            public void onPresentationEnded(AudioTrack audioTrack) {
                if (audioTrack.equals(DefaultAudioSink.this.f11045x)) {
                    DefaultAudioSink.this.W = true;
                }
            }

            public void onTearDown(AudioTrack audioTrack) {
                if (audioTrack.equals(DefaultAudioSink.this.f11045x) && DefaultAudioSink.this.f11041t != null && DefaultAudioSink.this.X) {
                    DefaultAudioSink.this.f11041t.d();
                }
            }
        }

        public n() {
            this.f11087b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f11086a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new w0(handler), this.f11087b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f11087b);
            this.f11086a.removeCallbacksAndMessages(null);
        }
    }

    private DefaultAudioSink(g gVar) {
        Context context = gVar.f11050a;
        this.f11011a = context;
        this.B = androidx.media3.common.c.f9907g;
        this.f11046y = context != null ? null : gVar.f11051b;
        this.f11013b = gVar.f11052c;
        this.f11015c = gVar.f11053d;
        this.f11029j = androidx.media3.common.util.a1.f10350a >= 23 && gVar.f11054e;
        this.f11031k = 0;
        this.f11036o = gVar.f11056g;
        this.f11037p = (d) androidx.media3.common.util.a.e(gVar.f11058i);
        this.f11025h = new b0(new m());
        c0 c0Var = new c0();
        this.f11017d = c0Var;
        f1 f1Var = new f1();
        this.f11019e = f1Var;
        this.f11021f = ImmutableList.of((f1) new androidx.media3.common.audio.e(), (f1) c0Var, f1Var);
        this.f11023g = ImmutableList.of((f1) new e1(), (f1) c0Var, f1Var);
        this.Q = 1.0f;
        this.Z = 0;
        this.f11012a0 = new androidx.media3.common.f(0, 0.0f);
        androidx.media3.common.z zVar = androidx.media3.common.z.f10563d;
        this.D = new j(zVar, 0L, 0L);
        this.E = zVar;
        this.F = false;
        this.f11027i = new ArrayDeque();
        this.f11034m = new l();
        this.f11035n = new l();
        this.f11038q = gVar.f11059j;
        this.f11039r = gVar.f11057h;
    }

    private void D(long j11) {
        androidx.media3.common.z zVarB;
        if (o0()) {
            zVarB = androidx.media3.common.z.f10563d;
        } else {
            zVarB = m0() ? this.f11013b.b(this.E) : androidx.media3.common.z.f10563d;
            this.E = zVarB;
        }
        androidx.media3.common.z zVar = zVarB;
        this.F = m0() ? this.f11013b.a(this.F) : false;
        this.f11027i.add(new j(zVar, Math.max(0L, j11), this.f11043v.d(O())));
        l0();
        AudioSink.b bVar = this.f11041t;
        if (bVar != null) {
            bVar.onSkipSilenceEnabledChanged(this.F);
        }
    }

    private long E(long j11) {
        while (!this.f11027i.isEmpty() && j11 >= ((j) this.f11027i.getFirst()).f11077c) {
            this.D = (j) this.f11027i.remove();
        }
        j jVar = this.D;
        long j12 = j11 - jVar.f11077c;
        long jG0 = androidx.media3.common.util.a1.g0(j12, jVar.f11075a.f10566a);
        if (!this.f11027i.isEmpty()) {
            j jVar2 = this.D;
            return jVar2.f11076b + jG0 + jVar2.f11078d;
        }
        long mediaDuration = this.f11013b.getMediaDuration(j12);
        j jVar3 = this.D;
        long j13 = jVar3.f11076b + mediaDuration;
        jVar3.f11078d = mediaDuration - jG0;
        return j13;
    }

    private long F(long j11) {
        long skippedOutputFrameCount = this.f11013b.getSkippedOutputFrameCount();
        long jD = j11 + this.f11043v.d(skippedOutputFrameCount);
        long j12 = this.f11028i0;
        if (skippedOutputFrameCount > j12) {
            long jD2 = this.f11043v.d(skippedOutputFrameCount - j12);
            this.f11028i0 = skippedOutputFrameCount;
            P(jD2);
        }
        return jD;
    }

    private AudioTrack G(AudioSink.a aVar, androidx.media3.common.c cVar, int i11, androidx.media3.common.r rVar) throws AudioSink.InitializationException {
        try {
            AudioTrack audioTrackA = this.f11039r.a(aVar, cVar, i11);
            int state = audioTrackA.getState();
            if (state == 1) {
                return audioTrackA;
            }
            try {
                audioTrackA.release();
            } catch (Exception unused) {
            }
            throw new AudioSink.InitializationException(state, aVar.f11002b, aVar.f11003c, aVar.f11001a, rVar, aVar.f11005e, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e11) {
            throw new AudioSink.InitializationException(0, aVar.f11002b, aVar.f11003c, aVar.f11001a, rVar, aVar.f11005e, e11);
        }
    }

    private AudioTrack H(h hVar) throws AudioSink.InitializationException {
        try {
            AudioTrack audioTrackG = G(hVar.a(), this.B, this.Z, hVar.f11060a);
            ExoPlayer.a aVar = this.f11038q;
            if (aVar != null) {
                aVar.w(U(audioTrackG));
            }
            return audioTrackG;
        } catch (AudioSink.InitializationException e11) {
            AudioSink.b bVar = this.f11041t;
            if (bVar != null) {
                bVar.a(e11);
            }
            throw e11;
        }
    }

    private AudioTrack I() throws AudioSink.InitializationException {
        try {
            return H((h) androidx.media3.common.util.a.e(this.f11043v));
        } catch (AudioSink.InitializationException e11) {
            h hVar = this.f11043v;
            if (hVar.f11067h > 1000000) {
                h hVarC = hVar.c(1000000);
                try {
                    AudioTrack audioTrackH = H(hVarC);
                    this.f11043v = hVarC;
                    return audioTrackH;
                } catch (AudioSink.InitializationException e12) {
                    e11.addSuppressed(e12);
                    X();
                    throw e11;
                }
            }
            X();
            throw e11;
        }
    }

    private void J(long j11) throws Exception {
        int iP0;
        AudioSink.b bVar;
        if (this.T == null || this.f11035n.b()) {
            return;
        }
        int iRemaining = this.T.remaining();
        boolean z10 = false;
        if (this.f11016c0) {
            androidx.media3.common.util.a.g(j11 != C.TIME_UNSET);
            if (j11 == Long.MIN_VALUE) {
                j11 = this.f11018d0;
            } else {
                this.f11018d0 = j11;
            }
            iP0 = q0(this.f11045x, this.T, iRemaining, j11);
        } else {
            iP0 = p0(this.f11045x, this.T, iRemaining);
        }
        this.f11020e0 = SystemClock.elapsedRealtime();
        if (iP0 < 0) {
            if (S(iP0)) {
                if (O() > 0) {
                    z10 = true;
                } else if (U(this.f11045x)) {
                    X();
                    z10 = true;
                }
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(iP0, this.f11043v.f11060a, z10);
            AudioSink.b bVar2 = this.f11041t;
            if (bVar2 != null) {
                bVar2.a(writeException);
            }
            if (!writeException.isRecoverable || this.f11011a == null) {
                this.f11035n.c(writeException);
                return;
            } else {
                this.f11046y = androidx.media3.exoplayer.audio.e.f11162c;
                throw writeException;
            }
        }
        this.f11035n.a();
        if (U(this.f11045x)) {
            if (this.L > 0) {
                this.f11024g0 = false;
            }
            if (this.X && (bVar = this.f11041t) != null && iP0 < iRemaining && !this.f11024g0) {
                bVar.c();
            }
        }
        int i11 = this.f11043v.f11062c;
        if (i11 == 0) {
            this.K += (long) iP0;
        }
        if (iP0 == iRemaining) {
            if (i11 != 0) {
                androidx.media3.common.util.a.g(this.T == this.R);
                this.L += ((long) this.M) * ((long) this.S);
            }
            this.T = null;
        }
    }

    private boolean K() throws Exception {
        if (!this.f11044w.f()) {
            J(Long.MIN_VALUE);
            return this.T == null;
        }
        this.f11044w.h();
        d0(Long.MIN_VALUE);
        if (!this.f11044w.e()) {
            return false;
        }
        ByteBuffer byteBuffer = this.T;
        return byteBuffer == null || !byteBuffer.hasRemaining();
    }

    private static int L(int i11, int i12, int i13) {
        int minBufferSize = AudioTrack.getMinBufferSize(i11, i12, i13);
        androidx.media3.common.util.a.g(minBufferSize != -2);
        return minBufferSize;
    }

    private static int M(int i11, ByteBuffer byteBuffer) {
        if (i11 == 20) {
            return l2.k0.h(byteBuffer);
        }
        if (i11 != 30) {
            switch (i11) {
                case 5:
                case 6:
                    break;
                case 7:
                case 8:
                    break;
                case 9:
                    int iM = l2.i0.m(androidx.media3.common.util.a1.P(byteBuffer, byteBuffer.position()));
                    if (iM != -1) {
                        return iM;
                    }
                    throw new IllegalArgumentException();
                case 10:
                    return 1024;
                case 11:
                case 12:
                    return 2048;
                default:
                    switch (i11) {
                        case 14:
                            int iB = l2.b.b(byteBuffer);
                            if (iB == -1) {
                                return 0;
                            }
                            return l2.b.i(byteBuffer, iB) * 16;
                        case 15:
                            return 512;
                        case 16:
                            return 1024;
                        case 17:
                            return l2.c.e(byteBuffer);
                        case 18:
                            break;
                        default:
                            throw new IllegalStateException("Unexpected audio encoding: " + i11);
                    }
                    break;
            }
            return l2.b.e(byteBuffer);
        }
        return l2.p.f(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long N() {
        h hVar = this.f11043v;
        return hVar.f11062c == 0 ? this.I / ((long) hVar.f11061b) : this.J;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long O() {
        h hVar = this.f11043v;
        return hVar.f11062c == 0 ? androidx.media3.common.util.a1.l(this.K, hVar.f11063d) : this.L;
    }

    private void P(long j11) {
        this.f11030j0 += j11;
        if (this.f11032k0 == null) {
            this.f11032k0 = new Handler(Looper.myLooper());
        }
        this.f11032k0.removeCallbacksAndMessages(null);
        this.f11032k0.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.audio.m0
            @Override // java.lang.Runnable
            public final void run() {
                this.f11213a.Z();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean Q() {
        boolean z10;
        synchronized (f11008m0) {
            z10 = f11010o0 > 0;
        }
        return z10;
    }

    private boolean R() throws AudioSink.InitializationException {
        androidx.media3.exoplayer.audio.i iVar;
        f4 f4Var;
        if (this.f11034m.b()) {
            return false;
        }
        AudioTrack audioTrackI = I();
        this.f11045x = audioTrackI;
        if (U(audioTrackI)) {
            e0(this.f11045x);
            h hVar = this.f11043v;
            if (hVar.f11070k) {
                AudioTrack audioTrack = this.f11045x;
                androidx.media3.common.r rVar = hVar.f11060a;
                audioTrack.setOffloadDelayPadding(rVar.H, rVar.I);
            }
        }
        int i11 = androidx.media3.common.util.a1.f10350a;
        if (i11 >= 31 && (f4Var = this.f11040s) != null) {
            c.a(this.f11045x, f4Var);
        }
        this.Z = this.f11045x.getAudioSessionId();
        b0 b0Var = this.f11025h;
        AudioTrack audioTrack2 = this.f11045x;
        h hVar2 = this.f11043v;
        b0Var.s(audioTrack2, hVar2.f11062c == 2, hVar2.f11066g, hVar2.f11063d, hVar2.f11067h);
        k0();
        int i12 = this.f11012a0.f9967a;
        if (i12 != 0) {
            this.f11045x.attachAuxEffect(i12);
            this.f11045x.setAuxEffectSendLevel(this.f11012a0.f9968b);
        }
        androidx.media3.exoplayer.audio.j jVar = this.f11014b0;
        if (jVar != null && i11 >= 23) {
            b.b(this.f11045x, jVar);
            androidx.media3.exoplayer.audio.i iVar2 = this.f11047z;
            if (iVar2 != null) {
                iVar2.i(this.f11014b0.f11196a);
            }
        }
        if (i11 >= 24 && (iVar = this.f11047z) != null) {
            this.A = new k(this.f11045x, iVar);
        }
        this.O = true;
        AudioSink.b bVar = this.f11041t;
        if (bVar != null) {
            bVar.j(this.f11043v.a());
        }
        return true;
    }

    private static boolean S(int i11) {
        return (androidx.media3.common.util.a1.f10350a >= 24 && i11 == -6) || i11 == -32;
    }

    private boolean T() {
        return this.f11045x != null;
    }

    private static boolean U(AudioTrack audioTrack) {
        return androidx.media3.common.util.a1.f10350a >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void W(AudioTrack audioTrack, final AudioSink.b bVar, Handler handler, final AudioSink.a aVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (bVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.n0
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.k(aVar);
                    }
                });
            }
            synchronized (f11008m0) {
                try {
                    int i11 = f11010o0 - 1;
                    f11010o0 = i11;
                    if (i11 == 0) {
                        f11009n0.shutdown();
                        f11009n0 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            if (bVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.n0
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.k(aVar);
                    }
                });
            }
            synchronized (f11008m0) {
                try {
                    int i12 = f11010o0 - 1;
                    f11010o0 = i12;
                    if (i12 == 0) {
                        f11009n0.shutdown();
                        f11009n0 = null;
                    }
                    throw th3;
                } catch (Throwable th4) {
                    throw th4;
                }
            }
        }
    }

    private void X() {
        if (this.f11043v.f()) {
            this.f11022f0 = true;
        }
    }

    private ByteBuffer Y(ByteBuffer byteBuffer) {
        if (this.f11043v.f11062c != 0) {
            return byteBuffer;
        }
        int iF = (int) androidx.media3.common.util.a1.F(androidx.media3.common.util.a1.R0(20L), this.f11043v.f11064e);
        long jO = O();
        if (jO >= iF) {
            return byteBuffer;
        }
        h hVar = this.f11043v;
        return c1.a(byteBuffer, hVar.f11066g, hVar.f11063d, (int) jO, iF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        if (this.f11030j0 >= 300000) {
            this.f11041t.e();
            this.f11030j0 = 0L;
        }
    }

    private void a0() {
        if (this.f11047z == null && this.f11011a != null) {
            this.f11026h0 = Looper.myLooper();
            androidx.media3.exoplayer.audio.i iVar = new androidx.media3.exoplayer.audio.i(this.f11011a, new androidx.media3.exoplayer.audio.i.f() { // from class: androidx.media3.exoplayer.audio.l0
                @Override // androidx.media3.exoplayer.audio.i.f
                public final void a(e eVar) {
                    this.f11210a.b0(eVar);
                }
            }, this.B, this.f11014b0);
            this.f11047z = iVar;
            this.f11046y = iVar.g();
        }
        androidx.media3.common.util.a.e(this.f11046y);
    }

    private void c0() {
        if (this.V) {
            return;
        }
        this.V = true;
        this.f11025h.g(O());
        if (U(this.f11045x)) {
            this.W = false;
        }
        this.f11045x.stop();
        this.H = 0;
    }

    private void d0(long j11) throws Exception {
        J(j11);
        if (this.T != null) {
            return;
        }
        if (!this.f11044w.f()) {
            ByteBuffer byteBuffer = this.R;
            if (byteBuffer != null) {
                j0(byteBuffer);
                J(j11);
                return;
            }
            return;
        }
        while (!this.f11044w.e()) {
            do {
                ByteBuffer byteBufferD = this.f11044w.d();
                if (byteBufferD.hasRemaining()) {
                    j0(byteBufferD);
                    J(j11);
                } else {
                    ByteBuffer byteBuffer2 = this.R;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.f11044w.i(this.R);
                    }
                }
            } while (this.T == null);
            return;
        }
    }

    private void e0(AudioTrack audioTrack) {
        if (this.f11033l == null) {
            this.f11033l = new n();
        }
        this.f11033l.a(audioTrack);
    }

    private static void f0(final AudioTrack audioTrack, final AudioSink.b bVar, final AudioSink.a aVar) {
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (f11008m0) {
            try {
                if (f11009n0 == null) {
                    f11009n0 = androidx.media3.common.util.a1.T0("ExoPlayer:AudioTrackReleaseThread");
                }
                f11010o0++;
                f11009n0.schedule(new Runnable() { // from class: androidx.media3.exoplayer.audio.k0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultAudioSink.W(audioTrack, bVar, handler, aVar);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void g0() {
        this.I = 0L;
        this.J = 0L;
        this.K = 0L;
        this.L = 0L;
        this.f11024g0 = false;
        this.M = 0;
        this.D = new j(this.E, 0L, 0L);
        this.P = 0L;
        this.C = null;
        this.f11027i.clear();
        this.R = null;
        this.S = 0;
        this.T = null;
        this.V = false;
        this.U = false;
        this.W = false;
        this.G = null;
        this.H = 0;
        this.f11019e.i();
        l0();
    }

    private void h0(androidx.media3.common.z zVar) {
        j jVar = new j(zVar, C.TIME_UNSET, C.TIME_UNSET);
        if (T()) {
            this.C = jVar;
        } else {
            this.D = jVar;
        }
    }

    private void i0() {
        if (T()) {
            try {
                this.f11045x.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(this.E.f10566a).setPitch(this.E.f10567b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e11) {
                androidx.media3.common.util.u.i("DefaultAudioSink", "Failed to set playback params", e11);
            }
            androidx.media3.common.z zVar = new androidx.media3.common.z(this.f11045x.getPlaybackParams().getSpeed(), this.f11045x.getPlaybackParams().getPitch());
            this.E = zVar;
            this.f11025h.t(zVar.f10566a);
        }
    }

    private void j0(ByteBuffer byteBuffer) {
        androidx.media3.common.util.a.g(this.T == null);
        if (byteBuffer.hasRemaining()) {
            this.T = Y(byteBuffer);
        }
    }

    private void k0() {
        if (T()) {
            this.f11045x.setVolume(this.Q);
        }
    }

    private void l0() {
        androidx.media3.common.audio.a aVar = this.f11043v.f11068i;
        this.f11044w = aVar;
        aVar.b();
    }

    private boolean m0() {
        if (!this.f11016c0) {
            h hVar = this.f11043v;
            if (hVar.f11062c == 0 && !n0(hVar.f11060a.G)) {
                return true;
            }
        }
        return false;
    }

    private boolean n0(int i11) {
        return this.f11015c && androidx.media3.common.util.a1.F0(i11);
    }

    private boolean o0() {
        h hVar = this.f11043v;
        return hVar != null && hVar.f11069j && androidx.media3.common.util.a1.f10350a >= 23;
    }

    private static int p0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i11) {
        return audioTrack.write(byteBuffer, i11, 1);
    }

    private int q0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i11, long j11) {
        if (androidx.media3.common.util.a1.f10350a >= 26) {
            return audioTrack.write(byteBuffer, i11, 1, j11 * 1000);
        }
        if (this.G == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.G = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.G.putInt(1431633921);
        }
        if (this.H == 0) {
            this.G.putInt(4, i11);
            this.G.putLong(8, j11 * 1000);
            this.G.position(0);
            this.H = i11;
        }
        int iRemaining = this.G.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.G, iRemaining, 1);
            if (iWrite < 0) {
                this.H = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iP0 = p0(audioTrack, byteBuffer, i11);
        if (iP0 < 0) {
            this.H = 0;
            return iP0;
        }
        this.H -= iP0;
        return iP0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean a(androidx.media3.common.r rVar) {
        return o(rVar) != 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void b(androidx.media3.common.z zVar) {
        this.E = new androidx.media3.common.z(androidx.media3.common.util.a1.o(zVar.f10566a, 0.1f, 8.0f), androidx.media3.common.util.a1.o(zVar.f10567b, 0.1f, 8.0f));
        if (o0()) {
            i0();
        } else {
            h0(zVar);
        }
    }

    public void b0(androidx.media3.exoplayer.audio.e eVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f11026h0;
        if (looper != looperMyLooper) {
            String name = looper == null ? "null" : looper.getThread().getName();
            throw new IllegalStateException("Current looper (" + (looperMyLooper != null ? looperMyLooper.getThread().getName() : "null") + ") is not the playback looper (" + name + ")");
        }
        androidx.media3.exoplayer.audio.e eVar2 = this.f11046y;
        if (eVar2 == null || eVar.equals(eVar2)) {
            return;
        }
        this.f11046y = eVar;
        AudioSink.b bVar = this.f11041t;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean c(ByteBuffer byteBuffer, long j11, int i11) throws Exception {
        ByteBuffer byteBuffer2 = this.R;
        androidx.media3.common.util.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f11042u != null) {
            if (!K()) {
                return false;
            }
            if (this.f11042u.b(this.f11043v)) {
                this.f11043v = this.f11042u;
                this.f11042u = null;
                AudioTrack audioTrack = this.f11045x;
                if (audioTrack != null && U(audioTrack) && this.f11043v.f11070k) {
                    if (this.f11045x.getPlayState() == 3) {
                        this.f11045x.setOffloadEndOfStream();
                        this.f11025h.a();
                    }
                    AudioTrack audioTrack2 = this.f11045x;
                    androidx.media3.common.r rVar = this.f11043v.f11060a;
                    audioTrack2.setOffloadDelayPadding(rVar.H, rVar.I);
                    this.f11024g0 = true;
                }
            } else {
                c0();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            D(j11);
        }
        if (!T()) {
            try {
                if (!R()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e11) {
                if (e11.isRecoverable) {
                    throw e11;
                }
                this.f11034m.c(e11);
                return false;
            }
        }
        this.f11034m.a();
        if (this.O) {
            this.P = Math.max(0L, j11);
            this.N = false;
            this.O = false;
            if (o0()) {
                i0();
            }
            D(j11);
            if (this.X) {
                play();
            }
        }
        if (!this.f11025h.k(O())) {
            return false;
        }
        if (this.R == null) {
            androidx.media3.common.util.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            h hVar = this.f11043v;
            if (hVar.f11062c != 0 && this.M == 0) {
                int iM = M(hVar.f11066g, byteBuffer);
                this.M = iM;
                if (iM == 0) {
                    return true;
                }
            }
            if (this.C != null) {
                if (!K()) {
                    return false;
                }
                D(j11);
                this.C = null;
            }
            long jE = this.P + this.f11043v.e(N() - this.f11019e.h());
            if (!this.N && Math.abs(jE - j11) > 200000) {
                AudioSink.b bVar = this.f11041t;
                if (bVar != null) {
                    bVar.a(new AudioSink.UnexpectedDiscontinuityException(j11, jE));
                }
                this.N = true;
            }
            if (this.N) {
                if (!K()) {
                    return false;
                }
                long j12 = j11 - jE;
                this.P += j12;
                this.N = false;
                D(j11);
                AudioSink.b bVar2 = this.f11041t;
                if (bVar2 != null && j12 != 0) {
                    bVar2.onPositionDiscontinuity();
                }
            }
            if (this.f11043v.f11062c == 0) {
                this.I += (long) byteBuffer.remaining();
            } else {
                this.J += ((long) this.M) * ((long) i11);
            }
            this.R = byteBuffer;
            this.S = i11;
        }
        d0(j11);
        if (!this.R.hasRemaining()) {
            this.R = null;
            this.S = 0;
            return true;
        }
        if (!this.f11025h.j(O())) {
            return false;
        }
        androidx.media3.common.util.u.h("DefaultAudioSink", "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void d() {
        androidx.media3.common.util.a.g(this.Y);
        if (this.f11016c0) {
            return;
        }
        this.f11016c0 = true;
        flush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void disableTunneling() {
        if (this.f11016c0) {
            this.f11016c0 = false;
            flush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void e(boolean z10) {
        this.F = z10;
        h0(o0() ? androidx.media3.common.z.f10563d : this.E);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void f(androidx.media3.common.c cVar) {
        if (this.B.equals(cVar)) {
            return;
        }
        this.B = cVar;
        if (this.f11016c0) {
            return;
        }
        androidx.media3.exoplayer.audio.i iVar = this.f11047z;
        if (iVar != null) {
            iVar.h(cVar);
        }
        flush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void flush() {
        k kVar;
        if (T()) {
            g0();
            if (this.f11025h.i()) {
                this.f11045x.pause();
            }
            if (U(this.f11045x)) {
                ((n) androidx.media3.common.util.a.e(this.f11033l)).b(this.f11045x);
            }
            AudioSink.a aVarA = this.f11043v.a();
            h hVar = this.f11042u;
            if (hVar != null) {
                this.f11043v = hVar;
                this.f11042u = null;
            }
            this.f11025h.q();
            if (androidx.media3.common.util.a1.f10350a >= 24 && (kVar = this.A) != null) {
                kVar.c();
                this.A = null;
            }
            f0(this.f11045x, this.f11041t, aVarA);
            this.f11045x = null;
        }
        this.f11035n.a();
        this.f11034m.a();
        this.f11028i0 = 0L;
        this.f11030j0 = 0L;
        Handler handler = this.f11032k0;
        if (handler != null) {
            ((Handler) androidx.media3.common.util.a.e(handler)).removeCallbacksAndMessages(null);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public androidx.media3.exoplayer.audio.k g(androidx.media3.common.r rVar) {
        return this.f11022f0 ? androidx.media3.exoplayer.audio.k.f11197d : this.f11037p.a(rVar, this.B);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getCurrentPositionUs(boolean z10) {
        if (!T() || this.O) {
            return Long.MIN_VALUE;
        }
        return F(E(Math.min(this.f11025h.c(), this.f11043v.d(O()))));
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public androidx.media3.common.z getPlaybackParameters() {
        return this.E;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void h(AudioDeviceInfo audioDeviceInfo) {
        this.f11014b0 = audioDeviceInfo == null ? null : new androidx.media3.exoplayer.audio.j(audioDeviceInfo);
        androidx.media3.exoplayer.audio.i iVar = this.f11047z;
        if (iVar != null) {
            iVar.i(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.f11045x;
        if (audioTrack != null) {
            b.b(audioTrack, this.f11014b0);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void handleDiscontinuity() {
        this.N = true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean hasPendingData() {
        return T() && !(androidx.media3.common.util.a1.f10350a >= 29 && this.f11045x.isOffloadedPlayback() && this.W) && this.f11025h.h(O());
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long i() {
        if (!T()) {
            return C.TIME_UNSET;
        }
        if (androidx.media3.common.util.a1.f10350a >= 23) {
            return b.a(this.f11045x, this.f11043v);
        }
        h hVar = this.f11043v;
        return androidx.media3.common.util.a1.g1(this.f11043v.f11067h, 1000000L, hVar.f11062c == 0 ? ((long) hVar.f11064e) * ((long) hVar.f11063d) : x0.d(hVar.f11066g), RoundingMode.DOWN);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean isEnded() {
        return !T() || (this.U && !hasPendingData());
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void j(AudioSink.b bVar) {
        this.f11041t = bVar;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void k(int i11) {
        androidx.media3.common.util.a.g(androidx.media3.common.util.a1.f10350a >= 29);
        this.f11031k = i11;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void l(androidx.media3.common.r rVar, int i11, int[] iArr) throws AudioSink.ConfigurationException {
        androidx.media3.common.audio.a aVar;
        int iK0;
        int iK1;
        boolean z10;
        int i12;
        int iIntValue;
        int i13;
        boolean z11;
        int i14;
        int iA;
        a0();
        if (MimeTypes.AUDIO_RAW.equals(rVar.f10161o)) {
            androidx.media3.common.util.a.a(androidx.media3.common.util.a1.G0(rVar.G));
            iK0 = androidx.media3.common.util.a1.k0(rVar.G, rVar.E);
            ImmutableList.a aVar2 = new ImmutableList.a();
            if (n0(rVar.G)) {
                aVar2.l(this.f11023g);
            } else {
                aVar2.l(this.f11021f);
                aVar2.k(this.f11013b.getAudioProcessors());
            }
            androidx.media3.common.audio.a aVar3 = new androidx.media3.common.audio.a(aVar2.e());
            if (aVar3.equals(this.f11044w)) {
                aVar3 = this.f11044w;
            }
            this.f11019e.j(rVar.H, rVar.I);
            this.f11017d.h(iArr);
            try {
                AudioProcessor.a aVarA = aVar3.a(new AudioProcessor.a(rVar));
                int i15 = aVarA.f9819c;
                int i16 = aVarA.f9817a;
                int iM = androidx.media3.common.util.a1.M(aVarA.f9818b);
                i14 = 0;
                z10 = false;
                iK1 = androidx.media3.common.util.a1.k0(i15, aVarA.f9818b);
                aVar = aVar3;
                i12 = i16;
                iIntValue = iM;
                z11 = this.f11029j;
                i13 = i15;
            } catch (AudioProcessor.UnhandledAudioFormatException e11) {
                throw new AudioSink.ConfigurationException(e11, rVar);
            }
        } else {
            androidx.media3.common.audio.a aVar4 = new androidx.media3.common.audio.a(ImmutableList.of());
            int i17 = rVar.F;
            androidx.media3.exoplayer.audio.k kVarG = this.f11031k != 0 ? g(rVar) : androidx.media3.exoplayer.audio.k.f11197d;
            if (this.f11031k == 0 || !kVarG.f11198a) {
                Pair pairH = this.f11046y.h(rVar, this.B);
                if (pairH == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + rVar, rVar);
                }
                int iIntValue2 = ((Integer) pairH.first).intValue();
                aVar = aVar4;
                iK0 = -1;
                iK1 = -1;
                z10 = false;
                i12 = i17;
                iIntValue = ((Integer) pairH.second).intValue();
                i13 = iIntValue2;
                z11 = this.f11029j;
                i14 = 2;
            } else {
                int iF = androidx.media3.common.y.f((String) androidx.media3.common.util.a.e(rVar.f10161o), rVar.f10157k);
                int iM2 = androidx.media3.common.util.a1.M(rVar.E);
                aVar = aVar4;
                i14 = 1;
                z11 = true;
                iK0 = -1;
                iK1 = -1;
                i12 = i17;
                z10 = kVarG.f11199b;
                i13 = iF;
                iIntValue = iM2;
            }
        }
        if (i13 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i14 + ") for: " + rVar, rVar);
        }
        if (iIntValue == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i14 + ") for: " + rVar, rVar);
        }
        int i18 = rVar.f10156j;
        if (MimeTypes.AUDIO_DTS_EXPRESS.equals(rVar.f10161o) && i18 == -1) {
            i18 = 768000;
        }
        int i19 = i18;
        if (i11 != 0) {
            iA = i11;
        } else {
            iA = this.f11036o.a(L(i12, iIntValue, i13), i13, i14, iK1 != -1 ? iK1 : 1, i12, i19, z11 ? 8.0d : 1.0d);
        }
        this.f11022f0 = false;
        h hVar = new h(rVar, iK0, i14, iK1, i12, iIntValue, i13, iA, aVar, z11, z10, this.f11016c0);
        if (T()) {
            this.f11042u = hVar;
        } else {
            this.f11043v = hVar;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void m(int i11, int i12) {
        h hVar;
        AudioTrack audioTrack = this.f11045x;
        if (audioTrack == null || !U(audioTrack) || (hVar = this.f11043v) == null || !hVar.f11070k) {
            return;
        }
        this.f11045x.setOffloadDelayPadding(i11, i12);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public /* synthetic */ void n(long j11) {
        y.a(this, j11);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public int o(androidx.media3.common.r rVar) {
        a0();
        if (!MimeTypes.AUDIO_RAW.equals(rVar.f10161o)) {
            return this.f11046y.j(rVar, this.B) ? 2 : 0;
        }
        if (androidx.media3.common.util.a1.G0(rVar.G)) {
            int i11 = rVar.G;
            return (i11 == 2 || (this.f11015c && i11 == 4)) ? 2 : 1;
        }
        androidx.media3.common.util.u.h("DefaultAudioSink", "Invalid PCM encoding: " + rVar.G);
        return 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void p(f4 f4Var) {
        this.f11040s = f4Var;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void pause() {
        this.X = false;
        if (T()) {
            if (this.f11025h.p() || U(this.f11045x)) {
                this.f11045x.pause();
            }
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void play() {
        this.X = true;
        if (T()) {
            this.f11025h.v();
            this.f11045x.play();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void playToEndOfStream() {
        if (!this.U && T() && K()) {
            c0();
            this.U = true;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void q(androidx.media3.common.f fVar) {
        if (this.f11012a0.equals(fVar)) {
            return;
        }
        int i11 = fVar.f9967a;
        float f11 = fVar.f9968b;
        AudioTrack audioTrack = this.f11045x;
        if (audioTrack != null) {
            if (this.f11012a0.f9967a != i11) {
                audioTrack.attachAuxEffect(i11);
            }
            if (i11 != 0) {
                this.f11045x.setAuxEffectSendLevel(f11);
            }
        }
        this.f11012a0 = fVar;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void r(androidx.media3.common.util.i iVar) {
        this.f11025h.u(iVar);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void release() {
        androidx.media3.exoplayer.audio.i iVar = this.f11047z;
        if (iVar != null) {
            iVar.j();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void reset() {
        flush();
        r4 it = this.f11021f.iterator();
        while (it.hasNext()) {
            ((AudioProcessor) it.next()).reset();
        }
        r4 it2 = this.f11023g.iterator();
        while (it2.hasNext()) {
            ((AudioProcessor) it2.next()).reset();
        }
        androidx.media3.common.audio.a aVar = this.f11044w;
        if (aVar != null) {
            aVar.j();
        }
        this.X = false;
        this.f11022f0 = false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioSessionId(int i11) {
        if (this.Z != i11) {
            this.Z = i11;
            this.Y = i11 != 0;
            flush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVolume(float f11) {
        if (this.Q != f11) {
            this.Q = f11;
            k0();
        }
    }
}
