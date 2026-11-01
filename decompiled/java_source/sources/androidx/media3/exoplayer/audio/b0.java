package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
final class b0 {
    private long A;
    private long B;
    private long C;
    private long D;
    private boolean E;
    private long F;
    private long G;
    private boolean H;
    private long I;
    private androidx.media3.common.util.i J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f11105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f11106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AudioTrack f11107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a0 f11110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f11112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f11113i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f11114j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f11115k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f11116l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f11117m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Method f11118n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f11119o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f11120p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f11121q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f11122r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f11123s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f11124t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f11125u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f11126v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f11127w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f11128x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f11129y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f11130z;

    public interface a {
        void b(long j11);

        void onInvalidLatency(long j11);

        void onPositionFramesMismatch(long j11, long j12, long j13, long j14);

        void onSystemTimeUsMismatch(long j11, long j12, long j13, long j14);

        void onUnderrun(int i11, long j11);
    }

    public b0(a aVar) {
        this.f11105a = (a) androidx.media3.common.util.a.e(aVar);
        try {
            this.f11118n = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f11106b = new long[10];
        this.J = androidx.media3.common.util.i.f10387a;
    }

    private boolean b() {
        return this.f11112h && ((AudioTrack) androidx.media3.common.util.a.e(this.f11107c)).getPlayState() == 2 && d() == 0;
    }

    private long d() {
        if (this.f11129y != C.TIME_UNSET) {
            return Math.min(this.B, f());
        }
        long jElapsedRealtime = this.J.elapsedRealtime();
        if (jElapsedRealtime - this.f11123s >= 5) {
            w(jElapsedRealtime);
            this.f11123s = jElapsedRealtime;
        }
        return this.f11124t + this.I + (this.f11125u << 32);
    }

    private long e() {
        return androidx.media3.common.util.a1.d1(d(), this.f11111g);
    }

    private long f() {
        if (((AudioTrack) androidx.media3.common.util.a.e(this.f11107c)).getPlayState() == 2) {
            return this.A;
        }
        return this.A + androidx.media3.common.util.a1.F(androidx.media3.common.util.a1.g0(androidx.media3.common.util.a1.R0(this.J.elapsedRealtime()) - this.f11129y, this.f11114j), this.f11111g);
    }

    private void l(long j11) {
        a0 a0Var = (a0) androidx.media3.common.util.a.e(this.f11110f);
        if (a0Var.f(j11)) {
            long jD = a0Var.d();
            long jC = a0Var.c();
            long jE = e();
            if (Math.abs(jD - j11) > 5000000) {
                this.f11105a.onSystemTimeUsMismatch(jC, jD, j11, jE);
                a0Var.g();
            } else if (Math.abs(androidx.media3.common.util.a1.d1(jC, this.f11111g) - jE) <= 5000000) {
                a0Var.a();
            } else {
                this.f11105a.onPositionFramesMismatch(jC, jD, j11, jE);
                a0Var.g();
            }
        }
    }

    private void m() {
        long jNanoTime = this.J.nanoTime() / 1000;
        if (jNanoTime - this.f11117m >= 30000) {
            long jE = e();
            if (jE != 0) {
                this.f11106b[this.f11127w] = androidx.media3.common.util.a1.l0(jE, this.f11114j) - jNanoTime;
                this.f11127w = (this.f11127w + 1) % 10;
                int i11 = this.f11128x;
                if (i11 < 10) {
                    this.f11128x = i11 + 1;
                }
                this.f11117m = jNanoTime;
                this.f11116l = 0L;
                int i12 = 0;
                while (true) {
                    int i13 = this.f11128x;
                    if (i12 >= i13) {
                        break;
                    }
                    this.f11116l += this.f11106b[i12] / ((long) i13);
                    i12++;
                }
            } else {
                return;
            }
        }
        if (this.f11112h) {
            return;
        }
        l(jNanoTime);
        n(jNanoTime);
    }

    private void n(long j11) {
        Method method;
        if (!this.f11121q || (method = this.f11118n) == null || j11 - this.f11122r < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) androidx.media3.common.util.a1.i((Integer) method.invoke(androidx.media3.common.util.a.e(this.f11107c), null))).intValue()) * 1000) - this.f11113i;
            this.f11119o = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.f11119o = jMax;
            if (jMax > 5000000) {
                this.f11105a.onInvalidLatency(jMax);
                this.f11119o = 0L;
            }
        } catch (Exception unused) {
            this.f11118n = null;
        }
        this.f11122r = j11;
    }

    private static boolean o(int i11) {
        return androidx.media3.common.util.a1.f10350a < 23 && (i11 == 5 || i11 == 6);
    }

    private void r() {
        this.f11116l = 0L;
        this.f11128x = 0;
        this.f11127w = 0;
        this.f11117m = 0L;
        this.D = 0L;
        this.G = 0L;
        this.f11115k = false;
    }

    private void w(long j11) {
        AudioTrack audioTrack = (AudioTrack) androidx.media3.common.util.a.e(this.f11107c);
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.f11112h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f11126v = this.f11124t;
            }
            playbackHeadPosition += this.f11126v;
        }
        if (androidx.media3.common.util.a1.f10350a <= 29) {
            if (playbackHeadPosition == 0 && this.f11124t > 0 && playState == 3) {
                if (this.f11130z == C.TIME_UNSET) {
                    this.f11130z = j11;
                    return;
                }
                return;
            }
            this.f11130z = C.TIME_UNSET;
        }
        long j12 = this.f11124t;
        if (j12 > playbackHeadPosition) {
            if (this.H) {
                this.I += j12;
                this.H = false;
            } else {
                this.f11125u++;
            }
        }
        this.f11124t = playbackHeadPosition;
    }

    public void a() {
        this.H = true;
        a0 a0Var = this.f11110f;
        if (a0Var != null) {
            a0Var.b();
        }
    }

    public long c() {
        long jG0;
        long jMin;
        AudioTrack audioTrack = (AudioTrack) androidx.media3.common.util.a.e(this.f11107c);
        if (audioTrack.getPlayState() == 3) {
            m();
        }
        long jNanoTime = this.J.nanoTime() / 1000;
        a0 a0Var = (a0) androidx.media3.common.util.a.e(this.f11110f);
        boolean zE = a0Var.e();
        if (zE) {
            jMin = androidx.media3.common.util.a1.d1(a0Var.c(), this.f11111g) + androidx.media3.common.util.a1.g0(jNanoTime - a0Var.d(), this.f11114j);
        } else {
            if (this.f11128x == 0) {
                jG0 = this.f11129y != C.TIME_UNSET ? androidx.media3.common.util.a1.d1(f(), this.f11111g) : e();
            } else {
                jG0 = androidx.media3.common.util.a1.g0(this.f11116l + jNanoTime, this.f11114j);
            }
            long jMax = Math.max(0L, jG0 - this.f11119o);
            jMin = this.f11129y != C.TIME_UNSET ? Math.min(androidx.media3.common.util.a1.d1(this.B, this.f11111g), jMax) : jMax;
        }
        if (this.E != zE) {
            this.G = this.D;
            this.F = this.C;
        }
        long j11 = jNanoTime - this.G;
        if (j11 < 1000000) {
            long jG1 = this.F + androidx.media3.common.util.a1.g0(j11, this.f11114j);
            long j12 = (j11 * 1000) / 1000000;
            jMin = ((jMin * j12) + ((1000 - j12) * jG1)) / 1000;
        }
        if (!this.f11115k && jMin > this.C && audioTrack.getPlayState() == 3) {
            this.f11115k = true;
            this.f11105a.b(this.J.currentTimeMillis() - androidx.media3.common.util.a1.y1(androidx.media3.common.util.a1.l0(androidx.media3.common.util.a1.y1(jMin - this.C), this.f11114j)));
        }
        this.D = jNanoTime;
        this.C = jMin;
        this.E = zE;
        return jMin;
    }

    public void g(long j11) {
        this.A = d();
        this.f11129y = androidx.media3.common.util.a1.R0(this.J.elapsedRealtime());
        this.B = j11;
    }

    public boolean h(long j11) {
        return j11 > androidx.media3.common.util.a1.F(c(), this.f11111g) || b();
    }

    public boolean i() {
        return ((AudioTrack) androidx.media3.common.util.a.e(this.f11107c)).getPlayState() == 3;
    }

    public boolean j(long j11) {
        return this.f11130z != C.TIME_UNSET && j11 > 0 && this.J.elapsedRealtime() - this.f11130z >= 200;
    }

    public boolean k(long j11) {
        int playState = ((AudioTrack) androidx.media3.common.util.a.e(this.f11107c)).getPlayState();
        if (this.f11112h) {
            if (playState == 2) {
                this.f11120p = false;
                return false;
            }
            if (playState == 1 && d() == 0) {
                return false;
            }
        }
        boolean z10 = this.f11120p;
        boolean zH = h(j11);
        this.f11120p = zH;
        if (z10 && !zH && playState != 1) {
            this.f11105a.onUnderrun(this.f11109e, androidx.media3.common.util.a1.y1(this.f11113i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f11129y == C.TIME_UNSET) {
            ((a0) androidx.media3.common.util.a.e(this.f11110f)).h();
            return true;
        }
        this.A = d();
        return false;
    }

    public void q() {
        r();
        this.f11107c = null;
        this.f11110f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i11, int i12, int i13) {
        this.f11107c = audioTrack;
        this.f11108d = i12;
        this.f11109e = i13;
        this.f11110f = new a0(audioTrack);
        this.f11111g = audioTrack.getSampleRate();
        this.f11112h = z10 && o(i11);
        boolean zG0 = androidx.media3.common.util.a1.G0(i11);
        this.f11121q = zG0;
        this.f11113i = zG0 ? androidx.media3.common.util.a1.d1(i13 / i12, this.f11111g) : -9223372036854775807L;
        this.f11124t = 0L;
        this.f11125u = 0L;
        this.H = false;
        this.I = 0L;
        this.f11126v = 0L;
        this.f11120p = false;
        this.f11129y = C.TIME_UNSET;
        this.f11130z = C.TIME_UNSET;
        this.f11122r = 0L;
        this.f11119o = 0L;
        this.f11114j = 1.0f;
    }

    public void t(float f11) {
        this.f11114j = f11;
        a0 a0Var = this.f11110f;
        if (a0Var != null) {
            a0Var.h();
        }
        r();
    }

    public void u(androidx.media3.common.util.i iVar) {
        this.J = iVar;
    }

    public void v() {
        if (this.f11129y != C.TIME_UNSET) {
            this.f11129y = androidx.media3.common.util.a1.R0(this.J.elapsedRealtime());
        }
        ((a0) androidx.media3.common.util.a.e(this.f11110f)).h();
    }
}
