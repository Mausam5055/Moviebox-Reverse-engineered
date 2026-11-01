package androidx.media3.exoplayer.video;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f13123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13124d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f13126f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f13121a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f13122b = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f13125e = C.TIME_UNSET;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f13127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f13128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f13129c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f13130d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f13131e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f13132f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean[] f13133g = new boolean[15];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f13134h;

        private static int c(long j11) {
            return (int) (j11 % 15);
        }

        public long a() {
            long j11 = this.f13131e;
            if (j11 == 0) {
                return 0L;
            }
            return this.f13132f / j11;
        }

        public long b() {
            return this.f13132f;
        }

        public boolean d() {
            long j11 = this.f13130d;
            if (j11 == 0) {
                return false;
            }
            return this.f13133g[c(j11 - 1)];
        }

        public boolean e() {
            return this.f13130d > 15 && this.f13134h == 0;
        }

        public void f(long j11) {
            long j12 = this.f13130d;
            if (j12 == 0) {
                this.f13127a = j11;
            } else if (j12 == 1) {
                long j13 = j11 - this.f13127a;
                this.f13128b = j13;
                this.f13132f = j13;
                this.f13131e = 1L;
            } else {
                long j14 = j11 - this.f13129c;
                int iC = c(j12);
                if (Math.abs(j14 - this.f13128b) <= 1000000) {
                    this.f13131e++;
                    this.f13132f += j14;
                    boolean[] zArr = this.f13133g;
                    if (zArr[iC]) {
                        zArr[iC] = false;
                        this.f13134h--;
                    }
                } else {
                    boolean[] zArr2 = this.f13133g;
                    if (!zArr2[iC]) {
                        zArr2[iC] = true;
                        this.f13134h++;
                    }
                }
            }
            this.f13130d++;
            this.f13129c = j11;
        }

        public void g() {
            this.f13130d = 0L;
            this.f13131e = 0L;
            this.f13132f = 0L;
            this.f13134h = 0;
            Arrays.fill(this.f13133g, false);
        }
    }

    public long a() {
        return e() ? this.f13121a.a() : C.TIME_UNSET;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f13121a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f13126f;
    }

    public long d() {
        return e() ? this.f13121a.b() : C.TIME_UNSET;
    }

    public boolean e() {
        return this.f13121a.e();
    }

    public void f(long j11) {
        this.f13121a.f(j11);
        if (this.f13121a.e() && !this.f13124d) {
            this.f13123c = false;
        } else if (this.f13125e != C.TIME_UNSET) {
            if (!this.f13123c || this.f13122b.d()) {
                this.f13122b.g();
                this.f13122b.f(this.f13125e);
            }
            this.f13123c = true;
            this.f13122b.f(j11);
        }
        if (this.f13123c && this.f13122b.e()) {
            a aVar = this.f13121a;
            this.f13121a = this.f13122b;
            this.f13122b = aVar;
            this.f13123c = false;
            this.f13124d = false;
        }
        this.f13125e = j11;
        this.f13126f = this.f13121a.e() ? 0 : this.f13126f + 1;
    }

    public void g() {
        this.f13121a.g();
        this.f13122b.g();
        this.f13123c = false;
        this.f13125e = C.TIME_UNSET;
        this.f13126f = 0;
    }
}
