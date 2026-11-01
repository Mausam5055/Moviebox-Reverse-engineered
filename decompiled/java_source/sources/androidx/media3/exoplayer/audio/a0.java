package androidx.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f11091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f11092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f11093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f11094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f11095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f11096f;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AudioTrack f11097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AudioTimestamp f11098b = new AudioTimestamp();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f11099c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f11100d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f11101e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f11102f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f11103g;

        public a(AudioTrack audioTrack) {
            this.f11097a = audioTrack;
        }

        public void a() {
            this.f11102f = true;
        }

        public long b() {
            return this.f11101e;
        }

        public long c() {
            return this.f11098b.nanoTime / 1000;
        }

        public boolean d() {
            boolean timestamp = this.f11097a.getTimestamp(this.f11098b);
            if (timestamp) {
                long j11 = this.f11098b.framePosition;
                long j12 = this.f11100d;
                if (j12 > j11) {
                    if (this.f11102f) {
                        this.f11103g += j12;
                        this.f11102f = false;
                    } else {
                        this.f11099c++;
                    }
                }
                this.f11100d = j11;
                this.f11101e = j11 + this.f11103g + (this.f11099c << 32);
            }
            return timestamp;
        }
    }

    public a0(AudioTrack audioTrack) {
        this.f11091a = new a(audioTrack);
        h();
    }

    private void i(int i11) {
        this.f11092b = i11;
        if (i11 == 0) {
            this.f11095e = 0L;
            this.f11096f = -1L;
            this.f11093c = System.nanoTime() / 1000;
            this.f11094d = 10000L;
            return;
        }
        if (i11 == 1) {
            this.f11094d = 10000L;
            return;
        }
        if (i11 == 2 || i11 == 3) {
            this.f11094d = 10000000L;
        } else {
            if (i11 != 4) {
                throw new IllegalStateException();
            }
            this.f11094d = 500000L;
        }
    }

    public void a() {
        if (this.f11092b == 4) {
            h();
        }
    }

    public void b() {
        a aVar = this.f11091a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public long c() {
        a aVar = this.f11091a;
        if (aVar != null) {
            return aVar.b();
        }
        return -1L;
    }

    public long d() {
        a aVar = this.f11091a;
        return aVar != null ? aVar.c() : C.TIME_UNSET;
    }

    public boolean e() {
        return this.f11092b == 2;
    }

    public boolean f(long j11) {
        a aVar = this.f11091a;
        if (aVar == null || j11 - this.f11095e < this.f11094d) {
            return false;
        }
        this.f11095e = j11;
        boolean zD = aVar.d();
        int i11 = this.f11092b;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zD) {
                        h();
                    }
                } else if (!zD) {
                    h();
                }
            } else if (!zD) {
                h();
            } else if (this.f11091a.b() > this.f11096f) {
                i(2);
            }
        } else if (zD) {
            if (this.f11091a.c() < this.f11093c) {
                return false;
            }
            this.f11096f = this.f11091a.b();
            i(1);
        } else if (j11 - this.f11093c > 500000) {
            i(3);
        }
        return zD;
    }

    public void g() {
        i(4);
    }

    public void h() {
        if (this.f11091a != null) {
            i(0);
        }
    }
}
