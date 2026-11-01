package androidx.media3.exoplayer.video;

import androidx.media3.common.m0;
import androidx.media3.common.util.o0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f13344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f13345b;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f13354k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final u.a f13346c = new u.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o0 f13347d = new o0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o0 f13348e = new o0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.common.util.w f13349f = new androidx.media3.common.util.w();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f13350g = C.TIME_UNSET;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private m0 f13353j = m0.f10111e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f13351h = C.TIME_UNSET;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f13352i = C.TIME_UNSET;

    interface a {
        void a();

        void b(long j11, long j12, boolean z10);

        void onVideoSizeChanged(m0 m0Var);
    }

    public x(a aVar, u uVar) {
        this.f13344a = aVar;
        this.f13345b = uVar;
    }

    private void a() {
        this.f13349f.f();
        this.f13344a.a();
    }

    private static Object c(o0 o0Var) {
        androidx.media3.common.util.a.a(o0Var.l() > 0);
        while (o0Var.l() > 1) {
            o0Var.i();
        }
        return androidx.media3.common.util.a.e(o0Var.i());
    }

    private boolean e(long j11) {
        Long l11 = (Long) this.f13348e.j(j11);
        if (l11 == null || l11.longValue() == this.f13354k) {
            return false;
        }
        this.f13354k = l11.longValue();
        return true;
    }

    private boolean f(long j11) {
        m0 m0Var = (m0) this.f13347d.j(j11);
        if (m0Var == null || m0Var.equals(m0.f10111e) || m0Var.equals(this.f13353j)) {
            return false;
        }
        this.f13353j = m0Var;
        return true;
    }

    private void k(boolean z10) {
        long jF = this.f13349f.f();
        if (f(jF)) {
            this.f13344a.onVideoSizeChanged(this.f13353j);
        }
        this.f13344a.b(z10 ? -1L : this.f13346c.g(), jF, this.f13345b.i());
    }

    public void b() {
        this.f13349f.b();
        this.f13350g = C.TIME_UNSET;
        this.f13351h = C.TIME_UNSET;
        this.f13352i = C.TIME_UNSET;
        if (this.f13348e.l() > 0) {
            Long l11 = (Long) c(this.f13348e);
            l11.longValue();
            this.f13348e.a(0L, l11);
        }
        if (this.f13347d.l() > 0) {
            this.f13347d.a(0L, (m0) c(this.f13347d));
        }
    }

    public boolean d() {
        long j11 = this.f13352i;
        return j11 != C.TIME_UNSET && this.f13351h == j11;
    }

    public void g(long j11) {
        this.f13349f.a(j11);
        this.f13350g = j11;
        this.f13352i = C.TIME_UNSET;
    }

    public void h(long j11) {
        o0 o0Var = this.f13348e;
        long j12 = this.f13350g;
        o0Var.a(j12 == C.TIME_UNSET ? 0L : j12 + 1, Long.valueOf(j11));
    }

    public void i(int i11, int i12) {
        o0 o0Var = this.f13347d;
        long j11 = this.f13350g;
        o0Var.a(j11 == C.TIME_UNSET ? 0L : j11 + 1, new m0(i11, i12));
    }

    public void j(long j11, long j12) {
        while (!this.f13349f.e()) {
            long jD = this.f13349f.d();
            if (e(jD)) {
                this.f13345b.j();
            }
            int iC = this.f13345b.c(jD, j11, j12, this.f13354k, false, false, this.f13346c);
            if (iC == 0 || iC == 1) {
                this.f13351h = jD;
                k(iC == 0);
            } else if (iC == 2 || iC == 3) {
                this.f13351h = jD;
                a();
            } else {
                if (iC != 4) {
                    if (iC != 5) {
                        throw new IllegalStateException(String.valueOf(iC));
                    }
                    return;
                }
                this.f13351h = jD;
            }
        }
    }

    public void l() {
        this.f13352i = this.f13350g;
    }
}
