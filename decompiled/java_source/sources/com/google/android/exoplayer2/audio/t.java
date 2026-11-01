package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
final class t {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f24748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f24749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AudioTrack f24750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f24751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s f24753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f24754g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f24755h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f24756i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f24757j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f24758k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f24759l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f24760m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Method f24761n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f24762o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f24763p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f24764q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f24765r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24766s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f24767t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f24768u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f24769v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f24770w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f24771x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f24772y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f24773z;

    public interface a {
        void b(long j11);

        void onInvalidLatency(long j11);

        void onPositionFramesMismatch(long j11, long j12, long j13, long j14);

        void onSystemTimeUsMismatch(long j11, long j12, long j13, long j14);

        void onUnderrun(int i11, long j11);
    }

    public t(a aVar) {
        this.f24748a = (a) com.google.android.exoplayer2.util.a.e(aVar);
        if (p0.f27626a >= 18) {
            try {
                this.f24761n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f24749b = new long[10];
    }

    private boolean a() {
        return this.f24755h && ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24750c)).getPlayState() == 2 && e() == 0;
    }

    private long b(long j11) {
        return (j11 * 1000000) / ((long) this.f24754g);
    }

    private long e() {
        AudioTrack audioTrack = (AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24750c);
        if (this.f24771x != C.TIME_UNSET) {
            return Math.min(this.A, this.f24773z + ((((SystemClock.elapsedRealtime() * 1000) - this.f24771x) * ((long) this.f24754g)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.f24755h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f24768u = this.f24766s;
            }
            playbackHeadPosition += this.f24768u;
        }
        if (p0.f27626a <= 29) {
            if (playbackHeadPosition == 0 && this.f24766s > 0 && playState == 3) {
                if (this.f24772y == C.TIME_UNSET) {
                    this.f24772y = SystemClock.elapsedRealtime();
                }
                return this.f24766s;
            }
            this.f24772y = C.TIME_UNSET;
        }
        if (this.f24766s > playbackHeadPosition) {
            this.f24767t++;
        }
        this.f24766s = playbackHeadPosition;
        return playbackHeadPosition + (this.f24767t << 32);
    }

    private long f() {
        return b(e());
    }

    private void l(long j11, long j12) {
        s sVar = (s) com.google.android.exoplayer2.util.a.e(this.f24753f);
        if (sVar.e(j11)) {
            long jC = sVar.c();
            long jB = sVar.b();
            if (Math.abs(jC - j11) > 5000000) {
                this.f24748a.onSystemTimeUsMismatch(jB, jC, j11, j12);
                sVar.f();
            } else if (Math.abs(b(jB) - j12) <= 5000000) {
                sVar.a();
            } else {
                this.f24748a.onPositionFramesMismatch(jB, jC, j11, j12);
                sVar.f();
            }
        }
    }

    private void m() {
        long jF = f();
        if (jF == 0) {
            return;
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.f24760m >= 30000) {
            long[] jArr = this.f24749b;
            int i11 = this.f24769v;
            jArr[i11] = jF - jNanoTime;
            this.f24769v = (i11 + 1) % 10;
            int i12 = this.f24770w;
            if (i12 < 10) {
                this.f24770w = i12 + 1;
            }
            this.f24760m = jNanoTime;
            this.f24759l = 0L;
            int i13 = 0;
            while (true) {
                int i14 = this.f24770w;
                if (i13 >= i14) {
                    break;
                }
                this.f24759l += this.f24749b[i13] / ((long) i14);
                i13++;
            }
        }
        if (this.f24755h) {
            return;
        }
        l(jNanoTime, jF);
        n(jNanoTime);
    }

    private void n(long j11) {
        Method method;
        if (!this.f24764q || (method = this.f24761n) == null || j11 - this.f24765r < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) p0.j((Integer) method.invoke(com.google.android.exoplayer2.util.a.e(this.f24750c), null))).intValue()) * 1000) - this.f24756i;
            this.f24762o = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.f24762o = jMax;
            if (jMax > 5000000) {
                this.f24748a.onInvalidLatency(jMax);
                this.f24762o = 0L;
            }
        } catch (Exception unused) {
            this.f24761n = null;
        }
        this.f24765r = j11;
    }

    private static boolean o(int i11) {
        return p0.f27626a < 23 && (i11 == 5 || i11 == 6);
    }

    private void r() {
        this.f24759l = 0L;
        this.f24770w = 0;
        this.f24769v = 0;
        this.f24760m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.f24758k = false;
    }

    public int c(long j11) {
        return this.f24752e - ((int) (j11 - (e() * ((long) this.f24751d))));
    }

    public long d(boolean z10) {
        long jF;
        if (((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24750c)).getPlayState() == 3) {
            m();
        }
        long jNanoTime = System.nanoTime() / 1000;
        s sVar = (s) com.google.android.exoplayer2.util.a.e(this.f24753f);
        boolean zD = sVar.d();
        if (zD) {
            jF = b(sVar.b()) + p0.a0(jNanoTime - sVar.c(), this.f24757j);
        } else {
            jF = this.f24770w == 0 ? f() : this.f24759l + jNanoTime;
            if (!z10) {
                jF = Math.max(0L, jF - this.f24762o);
            }
        }
        if (this.D != zD) {
            this.F = this.C;
            this.E = this.B;
        }
        long j11 = jNanoTime - this.F;
        if (j11 < 1000000) {
            long jA0 = this.E + p0.a0(j11, this.f24757j);
            long j12 = (j11 * 1000) / 1000000;
            jF = ((jF * j12) + ((1000 - j12) * jA0)) / 1000;
        }
        if (!this.f24758k) {
            long j13 = this.B;
            if (jF > j13) {
                this.f24758k = true;
                this.f24748a.b(System.currentTimeMillis() - p0.e1(p0.f0(p0.e1(jF - j13), this.f24757j)));
            }
        }
        this.C = jNanoTime;
        this.B = jF;
        this.D = zD;
        return jF;
    }

    public void g(long j11) {
        this.f24773z = e();
        this.f24771x = SystemClock.elapsedRealtime() * 1000;
        this.A = j11;
    }

    public boolean h(long j11) {
        return j11 > e() || a();
    }

    public boolean i() {
        return ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24750c)).getPlayState() == 3;
    }

    public boolean j(long j11) {
        return this.f24772y != C.TIME_UNSET && j11 > 0 && SystemClock.elapsedRealtime() - this.f24772y >= 200;
    }

    public boolean k(long j11) {
        int playState = ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.f24750c)).getPlayState();
        if (this.f24755h) {
            if (playState == 2) {
                this.f24763p = false;
                return false;
            }
            if (playState == 1 && e() == 0) {
                return false;
            }
        }
        boolean z10 = this.f24763p;
        boolean zH = h(j11);
        this.f24763p = zH;
        if (z10 && !zH && playState != 1) {
            this.f24748a.onUnderrun(this.f24752e, p0.e1(this.f24756i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f24771x != C.TIME_UNSET) {
            return false;
        }
        ((s) com.google.android.exoplayer2.util.a.e(this.f24753f)).g();
        return true;
    }

    public void q() {
        r();
        this.f24750c = null;
        this.f24753f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i11, int i12, int i13) {
        this.f24750c = audioTrack;
        this.f24751d = i12;
        this.f24752e = i13;
        this.f24753f = new s(audioTrack);
        this.f24754g = audioTrack.getSampleRate();
        this.f24755h = z10 && o(i11);
        boolean zU0 = p0.u0(i11);
        this.f24764q = zU0;
        this.f24756i = zU0 ? b(i13 / i12) : -9223372036854775807L;
        this.f24766s = 0L;
        this.f24767t = 0L;
        this.f24768u = 0L;
        this.f24763p = false;
        this.f24771x = C.TIME_UNSET;
        this.f24772y = C.TIME_UNSET;
        this.f24765r = 0L;
        this.f24762o = 0L;
        this.f24757j = 1.0f;
    }

    public void t(float f11) {
        this.f24757j = f11;
        s sVar = this.f24753f;
        if (sVar != null) {
            sVar.g();
        }
    }

    public void u() {
        ((s) com.google.android.exoplayer2.util.a.e(this.f24753f)).g();
    }
}
