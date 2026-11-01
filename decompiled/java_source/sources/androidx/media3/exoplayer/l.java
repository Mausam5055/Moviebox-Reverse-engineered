package androidx.media3.exoplayer;

import android.os.SystemClock;
import com.google.common.primitives.Longs;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements t2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f12070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f12071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f12072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f12073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f12074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f12075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f12076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f12077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f12078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f12079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f12080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f12081l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f12082m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f12083n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f12084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f12085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f12086q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f12087r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f12088s;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f12089a = 0.97f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f12090b = 1.03f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f12091c = 1000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f12092d = 1.0E-7f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f12093e = androidx.media3.common.util.a1.R0(20);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f12094f = androidx.media3.common.util.a1.R0(500);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f12095g = 0.999f;

        public l a() {
            return new l(this.f12089a, this.f12090b, this.f12091c, this.f12092d, this.f12093e, this.f12094f, this.f12095g);
        }
    }

    private l(float f11, float f12, long j11, float f13, long j12, long j13, float f14) {
        this.f12070a = f11;
        this.f12071b = f12;
        this.f12072c = j11;
        this.f12073d = f13;
        this.f12074e = j12;
        this.f12075f = j13;
        this.f12076g = f14;
        this.f12077h = C.TIME_UNSET;
        this.f12078i = C.TIME_UNSET;
        this.f12080k = C.TIME_UNSET;
        this.f12081l = C.TIME_UNSET;
        this.f12084o = f11;
        this.f12083n = f12;
        this.f12085p = 1.0f;
        this.f12086q = C.TIME_UNSET;
        this.f12079j = C.TIME_UNSET;
        this.f12082m = C.TIME_UNSET;
        this.f12087r = C.TIME_UNSET;
        this.f12088s = C.TIME_UNSET;
    }

    private void f(long j11) {
        long j12 = this.f12087r + (this.f12088s * 3);
        if (this.f12082m > j12) {
            float fR0 = androidx.media3.common.util.a1.R0(this.f12072c);
            this.f12082m = Longs.h(j12, this.f12079j, this.f12082m - (((long) ((this.f12085p - 1.0f) * fR0)) + ((long) ((this.f12083n - 1.0f) * fR0))));
            return;
        }
        long jQ = androidx.media3.common.util.a1.q(j11 - ((long) (Math.max(0.0f, this.f12085p - 1.0f) / this.f12073d)), this.f12082m, j12);
        this.f12082m = jQ;
        long j13 = this.f12081l;
        if (j13 == C.TIME_UNSET || jQ <= j13) {
            return;
        }
        this.f12082m = j13;
    }

    private void g() {
        long j11;
        long j12 = this.f12077h;
        if (j12 != C.TIME_UNSET) {
            j11 = this.f12078i;
            if (j11 == C.TIME_UNSET) {
                long j13 = this.f12080k;
                if (j13 != C.TIME_UNSET && j12 < j13) {
                    j12 = j13;
                }
                j11 = this.f12081l;
                if (j11 == C.TIME_UNSET || j12 <= j11) {
                    j11 = j12;
                }
            }
        } else {
            j11 = -9223372036854775807L;
        }
        if (this.f12079j == j11) {
            return;
        }
        this.f12079j = j11;
        this.f12082m = j11;
        this.f12087r = C.TIME_UNSET;
        this.f12088s = C.TIME_UNSET;
        this.f12086q = C.TIME_UNSET;
    }

    private static long h(long j11, long j12, float f11) {
        return (long) ((j11 * f11) + ((1.0f - f11) * j12));
    }

    private void i(long j11, long j12) {
        long j13 = j11 - j12;
        long j14 = this.f12087r;
        if (j14 == C.TIME_UNSET) {
            this.f12087r = j13;
            this.f12088s = 0L;
        } else {
            long jMax = Math.max(j13, h(j14, j13, this.f12076g));
            this.f12087r = jMax;
            this.f12088s = h(this.f12088s, Math.abs(j13 - jMax), this.f12076g);
        }
    }

    @Override // androidx.media3.exoplayer.t2
    public float a(long j11, long j12) {
        if (this.f12077h == C.TIME_UNSET) {
            return 1.0f;
        }
        i(j11, j12);
        if (this.f12086q != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.f12086q < this.f12072c) {
            return this.f12085p;
        }
        this.f12086q = SystemClock.elapsedRealtime();
        f(j11);
        long j13 = j11 - this.f12082m;
        if (Math.abs(j13) < this.f12074e) {
            this.f12085p = 1.0f;
        } else {
            this.f12085p = androidx.media3.common.util.a1.o((this.f12073d * j13) + 1.0f, this.f12084o, this.f12083n);
        }
        return this.f12085p;
    }

    @Override // androidx.media3.exoplayer.t2
    public long b() {
        return this.f12082m;
    }

    @Override // androidx.media3.exoplayer.t2
    public void c() {
        long j11 = this.f12082m;
        if (j11 == C.TIME_UNSET) {
            return;
        }
        long j12 = j11 + this.f12075f;
        this.f12082m = j12;
        long j13 = this.f12081l;
        if (j13 != C.TIME_UNSET && j12 > j13) {
            this.f12082m = j13;
        }
        this.f12086q = C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.t2
    public void d(long j11) {
        this.f12078i = j11;
        g();
    }

    @Override // androidx.media3.exoplayer.t2
    public void e(androidx.media3.common.t.g gVar) {
        this.f12077h = androidx.media3.common.util.a1.R0(gVar.f10285a);
        this.f12080k = androidx.media3.common.util.a1.R0(gVar.f10286b);
        this.f12081l = androidx.media3.common.util.a1.R0(gVar.f10287c);
        float f11 = gVar.f10288d;
        if (f11 == -3.4028235E38f) {
            f11 = this.f12070a;
        }
        this.f12084o = f11;
        float f12 = gVar.f10289e;
        if (f12 == -3.4028235E38f) {
            f12 = this.f12071b;
        }
        this.f12083n = f12;
        if (f11 == 1.0f && f12 == 1.0f) {
            this.f12077h = C.TIME_UNSET;
        }
        g();
    }
}
