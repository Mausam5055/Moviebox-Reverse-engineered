package com.google.android.exoplayer2.video;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f27836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27837d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27839f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f27834a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f27835b = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f27838e = C.TIME_UNSET;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f27840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f27841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f27842c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f27843d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f27844e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f27845f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean[] f27846g = new boolean[15];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f27847h;

        private static int c(long j11) {
            return (int) (j11 % 15);
        }

        public long a() {
            long j11 = this.f27844e;
            if (j11 == 0) {
                return 0L;
            }
            return this.f27845f / j11;
        }

        public long b() {
            return this.f27845f;
        }

        public boolean d() {
            long j11 = this.f27843d;
            if (j11 == 0) {
                return false;
            }
            return this.f27846g[c(j11 - 1)];
        }

        public boolean e() {
            return this.f27843d > 15 && this.f27847h == 0;
        }

        public void f(long j11) {
            long j12 = this.f27843d;
            if (j12 == 0) {
                this.f27840a = j11;
            } else if (j12 == 1) {
                long j13 = j11 - this.f27840a;
                this.f27841b = j13;
                this.f27845f = j13;
                this.f27844e = 1L;
            } else {
                long j14 = j11 - this.f27842c;
                int iC = c(j12);
                if (Math.abs(j14 - this.f27841b) <= 1000000) {
                    this.f27844e++;
                    this.f27845f += j14;
                    boolean[] zArr = this.f27846g;
                    if (zArr[iC]) {
                        zArr[iC] = false;
                        this.f27847h--;
                    }
                } else {
                    boolean[] zArr2 = this.f27846g;
                    if (!zArr2[iC]) {
                        zArr2[iC] = true;
                        this.f27847h++;
                    }
                }
            }
            this.f27843d++;
            this.f27842c = j11;
        }

        public void g() {
            this.f27843d = 0L;
            this.f27844e = 0L;
            this.f27845f = 0L;
            this.f27847h = 0;
            Arrays.fill(this.f27846g, false);
        }
    }

    public long a() {
        return e() ? this.f27834a.a() : C.TIME_UNSET;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f27834a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f27839f;
    }

    public long d() {
        return e() ? this.f27834a.b() : C.TIME_UNSET;
    }

    public boolean e() {
        return this.f27834a.e();
    }

    public void f(long j11) {
        this.f27834a.f(j11);
        if (this.f27834a.e() && !this.f27837d) {
            this.f27836c = false;
        } else if (this.f27838e != C.TIME_UNSET) {
            if (!this.f27836c || this.f27835b.d()) {
                this.f27835b.g();
                this.f27835b.f(this.f27838e);
            }
            this.f27836c = true;
            this.f27835b.f(j11);
        }
        if (this.f27836c && this.f27835b.e()) {
            a aVar = this.f27834a;
            this.f27834a = this.f27835b;
            this.f27835b = aVar;
            this.f27836c = false;
            this.f27837d = false;
        }
        this.f27838e = j11;
        this.f27839f = this.f27834a.e() ? 0 : this.f27839f + 1;
    }

    public void g() {
        this.f27834a.g();
        this.f27835b.g();
        this.f27836c = false;
        this.f27838e = C.TIME_UNSET;
        this.f27839f = 0;
    }
}
