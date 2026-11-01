package androidx.media3.exoplayer.video;

import android.content.Context;
import android.view.Surface;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f13303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w f13304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f13305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13306d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f13309g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f13312j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f13315m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f13316n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f13307e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f13308f = C.TIME_UNSET;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f13310h = C.TIME_UNSET;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f13311i = C.TIME_UNSET;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f13313k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.media3.common.util.i f13314l = androidx.media3.common.util.i.f10387a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f13317a = C.TIME_UNSET;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f13318b = C.TIME_UNSET;

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.f13317a = C.TIME_UNSET;
            this.f13318b = C.TIME_UNSET;
        }

        public long f() {
            return this.f13317a;
        }

        public long g() {
            return this.f13318b;
        }
    }

    public interface b {
        boolean j(long j11, long j12);

        boolean k(long j11, long j12, long j13, boolean z10, boolean z11);

        boolean o(long j11, long j12, boolean z10);
    }

    public u(Context context, b bVar, long j11) {
        this.f13303a = bVar;
        this.f13305c = j11;
        this.f13304b = new w(context);
    }

    private long b(long j11, long j12, long j13) {
        long j14 = (long) ((j13 - j11) / ((double) this.f13313k));
        return this.f13306d ? j14 - (a1.R0(this.f13314l.elapsedRealtime()) - j12) : j14;
    }

    private void f(int i11) {
        this.f13307e = Math.min(this.f13307e, i11);
    }

    private boolean s(long j11, long j12, long j13) {
        if (this.f13311i != C.TIME_UNSET && !this.f13312j) {
            return false;
        }
        int i11 = this.f13307e;
        if (i11 == 0) {
            return this.f13306d;
        }
        if (i11 == 1) {
            return true;
        }
        if (i11 == 2) {
            return j11 >= j13;
        }
        if (i11 == 3) {
            return this.f13306d && this.f13303a.j(j12, a1.R0(this.f13314l.elapsedRealtime()) - this.f13309g);
        }
        throw new IllegalStateException();
    }

    public void a() {
        if (this.f13307e == 0) {
            this.f13307e = 1;
        }
    }

    public int c(long j11, long j12, long j13, long j14, boolean z10, boolean z11, a aVar) {
        aVar.h();
        if (this.f13308f == C.TIME_UNSET) {
            this.f13308f = j12;
        }
        if (this.f13310h != j11) {
            this.f13304b.h(j11);
            this.f13310h = j11;
        }
        aVar.f13317a = b(j12, j13, j11);
        if (z10 && !z11) {
            return 3;
        }
        if (!this.f13315m) {
            this.f13316n = true;
            if (this.f13303a.k(aVar.f13317a, j12, j13, z11, true)) {
                return 4;
            }
            return (!this.f13306d || aVar.f13317a >= 30000) ? 5 : 3;
        }
        boolean z12 = false;
        if (s(j12, aVar.f13317a, j14)) {
            return 0;
        }
        if (!this.f13306d || j12 == this.f13308f) {
            return 5;
        }
        long jNanoTime = this.f13314l.nanoTime();
        aVar.f13318b = this.f13304b.b((aVar.f13317a * 1000) + jNanoTime);
        aVar.f13317a = (aVar.f13318b - jNanoTime) / 1000;
        if (this.f13311i != C.TIME_UNSET && !this.f13312j) {
            z12 = true;
        }
        if (this.f13303a.k(aVar.f13317a, j12, j13, z11, z12)) {
            return 4;
        }
        if (this.f13303a.o(aVar.f13317a, j13, z11)) {
            return z12 ? 3 : 2;
        }
        return aVar.f13317a > 50000 ? 5 : 1;
    }

    public boolean d(boolean z10) {
        if (z10 && (this.f13307e == 3 || (!this.f13315m && this.f13316n))) {
            this.f13311i = C.TIME_UNSET;
            return true;
        }
        if (this.f13311i == C.TIME_UNSET) {
            return false;
        }
        if (this.f13314l.elapsedRealtime() < this.f13311i) {
            return true;
        }
        this.f13311i = C.TIME_UNSET;
        return false;
    }

    public void e(boolean z10) {
        this.f13312j = z10;
        this.f13311i = this.f13305c > 0 ? this.f13314l.elapsedRealtime() + this.f13305c : C.TIME_UNSET;
    }

    public void g() {
        f(0);
    }

    public void h(boolean z10) {
        this.f13307e = z10 ? 1 : 0;
    }

    public boolean i() {
        boolean z10 = this.f13307e != 3;
        this.f13307e = 3;
        this.f13309g = a1.R0(this.f13314l.elapsedRealtime());
        return z10;
    }

    public void j() {
        f(2);
    }

    public void k() {
        this.f13306d = true;
        this.f13309g = a1.R0(this.f13314l.elapsedRealtime());
        this.f13304b.k();
    }

    public void l() {
        this.f13306d = false;
        this.f13311i = C.TIME_UNSET;
        this.f13304b.l();
    }

    public void m() {
        this.f13304b.j();
        this.f13310h = C.TIME_UNSET;
        this.f13308f = C.TIME_UNSET;
        f(1);
        this.f13311i = C.TIME_UNSET;
    }

    public void n(int i11) {
        this.f13304b.o(i11);
    }

    public void o(androidx.media3.common.util.i iVar) {
        this.f13314l = iVar;
    }

    public void p(float f11) {
        this.f13304b.g(f11);
    }

    public void q(Surface surface) {
        this.f13315m = surface != null;
        this.f13316n = false;
        this.f13304b.m(surface);
        f(1);
    }

    public void r(float f11) {
        androidx.media3.common.util.a.a(f11 > 0.0f);
        if (f11 == this.f13313k) {
            return;
        }
        this.f13313k = f11;
        this.f13304b.i(f11);
    }
}
