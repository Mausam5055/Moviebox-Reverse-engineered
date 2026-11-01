package com.google.android.exoplayer2.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f24737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f24739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f24740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f24741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f24742f;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AudioTrack f24743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AudioTimestamp f24744b = new AudioTimestamp();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f24745c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f24746d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f24747e;

        public a(AudioTrack audioTrack) {
            this.f24743a = audioTrack;
        }

        public long a() {
            return this.f24747e;
        }

        public long b() {
            return this.f24744b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.f24743a.getTimestamp(this.f24744b);
            if (timestamp) {
                long j11 = this.f24744b.framePosition;
                if (this.f24746d > j11) {
                    this.f24745c++;
                }
                this.f24746d = j11;
                this.f24747e = j11 + (this.f24745c << 32);
            }
            return timestamp;
        }
    }

    public s(AudioTrack audioTrack) {
        if (p0.f27626a >= 19) {
            this.f24737a = new a(audioTrack);
            g();
        } else {
            this.f24737a = null;
            h(3);
        }
    }

    private void h(int i11) {
        this.f24738b = i11;
        if (i11 == 0) {
            this.f24741e = 0L;
            this.f24742f = -1L;
            this.f24739c = System.nanoTime() / 1000;
            this.f24740d = 10000L;
            return;
        }
        if (i11 == 1) {
            this.f24740d = 10000L;
            return;
        }
        if (i11 == 2 || i11 == 3) {
            this.f24740d = 10000000L;
        } else {
            if (i11 != 4) {
                throw new IllegalStateException();
            }
            this.f24740d = 500000L;
        }
    }

    public void a() {
        if (this.f24738b == 4) {
            g();
        }
    }

    public long b() {
        a aVar = this.f24737a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1L;
    }

    public long c() {
        a aVar = this.f24737a;
        return aVar != null ? aVar.b() : C.TIME_UNSET;
    }

    public boolean d() {
        return this.f24738b == 2;
    }

    public boolean e(long j11) {
        a aVar = this.f24737a;
        if (aVar == null || j11 - this.f24741e < this.f24740d) {
            return false;
        }
        this.f24741e = j11;
        boolean zC = aVar.c();
        int i11 = this.f24738b;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zC) {
                        g();
                    }
                } else if (!zC) {
                    g();
                }
            } else if (!zC) {
                g();
            } else if (this.f24737a.a() > this.f24742f) {
                h(2);
            }
        } else if (zC) {
            if (this.f24737a.b() < this.f24739c) {
                return false;
            }
            this.f24742f = this.f24737a.a();
            h(1);
        } else if (j11 - this.f24739c > 500000) {
            h(3);
        }
        return zC;
    }

    public void f() {
        h(4);
    }

    public void g() {
        if (this.f24737a != null) {
            h(0);
        }
    }
}
