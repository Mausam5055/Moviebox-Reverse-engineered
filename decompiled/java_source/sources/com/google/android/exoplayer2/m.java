package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.common.primitives.Longs;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
public final class m implements s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f25261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f25262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f25263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f25264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f25265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f25266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f25267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f25268h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f25269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f25270j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f25271k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f25272l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f25273m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f25274n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f25275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f25276p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f25277q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f25278r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f25279s;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f25280a = 0.97f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f25281b = 1.03f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f25282c = 1000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f25283d = 1.0E-7f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f25284e = com.google.android.exoplayer2.util.p0.B0(20);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f25285f = com.google.android.exoplayer2.util.p0.B0(500);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f25286g = 0.999f;

        public m a() {
            return new m(this.f25280a, this.f25281b, this.f25282c, this.f25283d, this.f25284e, this.f25285f, this.f25286g);
        }
    }

    private m(float f11, float f12, long j11, float f13, long j12, long j13, float f14) {
        this.f25261a = f11;
        this.f25262b = f12;
        this.f25263c = j11;
        this.f25264d = f13;
        this.f25265e = j12;
        this.f25266f = j13;
        this.f25267g = f14;
        this.f25268h = C.TIME_UNSET;
        this.f25269i = C.TIME_UNSET;
        this.f25271k = C.TIME_UNSET;
        this.f25272l = C.TIME_UNSET;
        this.f25275o = f11;
        this.f25274n = f12;
        this.f25276p = 1.0f;
        this.f25277q = C.TIME_UNSET;
        this.f25270j = C.TIME_UNSET;
        this.f25273m = C.TIME_UNSET;
        this.f25278r = C.TIME_UNSET;
        this.f25279s = C.TIME_UNSET;
    }

    private void f(long j11) {
        long j12 = this.f25278r + (this.f25279s * 3);
        if (this.f25273m > j12) {
            float fB0 = com.google.android.exoplayer2.util.p0.B0(this.f25263c);
            this.f25273m = Longs.h(j12, this.f25270j, this.f25273m - (((long) ((this.f25276p - 1.0f) * fB0)) + ((long) ((this.f25274n - 1.0f) * fB0))));
            return;
        }
        long jR = com.google.android.exoplayer2.util.p0.r(j11 - ((long) (Math.max(0.0f, this.f25276p - 1.0f) / this.f25264d)), this.f25273m, j12);
        this.f25273m = jR;
        long j13 = this.f25272l;
        if (j13 == C.TIME_UNSET || jR <= j13) {
            return;
        }
        this.f25273m = j13;
    }

    private void g() {
        long j11 = this.f25268h;
        if (j11 != C.TIME_UNSET) {
            long j12 = this.f25269i;
            if (j12 != C.TIME_UNSET) {
                j11 = j12;
            }
            long j13 = this.f25271k;
            if (j13 != C.TIME_UNSET && j11 < j13) {
                j11 = j13;
            }
            long j14 = this.f25272l;
            if (j14 != C.TIME_UNSET && j11 > j14) {
                j11 = j14;
            }
        } else {
            j11 = -9223372036854775807L;
        }
        if (this.f25270j == j11) {
            return;
        }
        this.f25270j = j11;
        this.f25273m = j11;
        this.f25278r = C.TIME_UNSET;
        this.f25279s = C.TIME_UNSET;
        this.f25277q = C.TIME_UNSET;
    }

    private static long h(long j11, long j12, float f11) {
        return (long) ((j11 * f11) + ((1.0f - f11) * j12));
    }

    private void i(long j11, long j12) {
        long j13 = j11 - j12;
        long j14 = this.f25278r;
        if (j14 == C.TIME_UNSET) {
            this.f25278r = j13;
            this.f25279s = 0L;
        } else {
            long jMax = Math.max(j13, h(j14, j13, this.f25267g));
            this.f25278r = jMax;
            this.f25279s = h(this.f25279s, Math.abs(j13 - jMax), this.f25267g);
        }
    }

    @Override // com.google.android.exoplayer2.s1
    public float a(long j11, long j12) {
        if (this.f25268h == C.TIME_UNSET) {
            return 1.0f;
        }
        i(j11, j12);
        if (this.f25277q != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.f25277q < this.f25263c) {
            return this.f25276p;
        }
        this.f25277q = SystemClock.elapsedRealtime();
        f(j11);
        long j13 = j11 - this.f25273m;
        if (Math.abs(j13) < this.f25265e) {
            this.f25276p = 1.0f;
        } else {
            this.f25276p = com.google.android.exoplayer2.util.p0.p((this.f25264d * j13) + 1.0f, this.f25275o, this.f25274n);
        }
        return this.f25276p;
    }

    @Override // com.google.android.exoplayer2.s1
    public long b() {
        return this.f25273m;
    }

    @Override // com.google.android.exoplayer2.s1
    public void c() {
        long j11 = this.f25273m;
        if (j11 == C.TIME_UNSET) {
            return;
        }
        long j12 = j11 + this.f25266f;
        this.f25273m = j12;
        long j13 = this.f25272l;
        if (j13 != C.TIME_UNSET && j12 > j13) {
            this.f25273m = j13;
        }
        this.f25277q = C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.s1
    public void d(long j11) {
        this.f25269i = j11;
        g();
    }

    @Override // com.google.android.exoplayer2.s1
    public void e(v1.g gVar) {
        this.f25268h = com.google.android.exoplayer2.util.p0.B0(gVar.f27762a);
        this.f25271k = com.google.android.exoplayer2.util.p0.B0(gVar.f27763b);
        this.f25272l = com.google.android.exoplayer2.util.p0.B0(gVar.f27764c);
        float f11 = gVar.f27765d;
        if (f11 == -3.4028235E38f) {
            f11 = this.f25261a;
        }
        this.f25275o = f11;
        float f12 = gVar.f27766e;
        if (f12 == -3.4028235E38f) {
            f12 = this.f25262b;
        }
        this.f25274n = f12;
        if (f11 == 1.0f && f12 == 1.0f) {
            this.f25268h = C.TIME_UNSET;
        }
        g();
    }
}
