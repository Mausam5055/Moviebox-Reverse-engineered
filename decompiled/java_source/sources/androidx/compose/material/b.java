package androidx.compose.material;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i1 f3385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i1 f3386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i1 f3387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i1 f3388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f3389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i1 f3390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final i1 f3391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i1 f3392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final i1 f3393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final i1 f3394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final i1 f3395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final i1 f3396l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final i1 f3397m;

    private b(long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, boolean z10) {
        this.f3385a = r2.e(u1.g(j11), r2.j());
        this.f3386b = r2.e(u1.g(j12), r2.j());
        this.f3387c = r2.e(u1.g(j13), r2.j());
        this.f3388d = r2.e(u1.g(j14), r2.j());
        this.f3389e = r2.e(u1.g(j15), r2.j());
        this.f3390f = r2.e(u1.g(j16), r2.j());
        this.f3391g = r2.e(u1.g(j17), r2.j());
        this.f3392h = r2.e(u1.g(j18), r2.j());
        this.f3393i = r2.e(u1.g(j19), r2.j());
        this.f3394j = r2.e(u1.g(j20), r2.j());
        this.f3395k = r2.e(u1.g(j21), r2.j());
        this.f3396l = r2.e(u1.g(j22), r2.j());
        this.f3397m = r2.e(Boolean.valueOf(z10), r2.j());
    }

    public /* synthetic */ b(long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, z10);
    }

    public final long a() {
        return ((u1) this.f3389e.getValue()).u();
    }

    public final long b() {
        return ((u1) this.f3391g.getValue()).u();
    }

    public final long c() {
        return ((u1) this.f3394j.getValue()).u();
    }

    public final long d() {
        return ((u1) this.f3396l.getValue()).u();
    }

    public final long e() {
        return ((u1) this.f3392h.getValue()).u();
    }

    public final long f() {
        return ((u1) this.f3393i.getValue()).u();
    }

    public final long g() {
        return ((u1) this.f3395k.getValue()).u();
    }

    public final long h() {
        return ((u1) this.f3385a.getValue()).u();
    }

    public final long i() {
        return ((u1) this.f3386b.getValue()).u();
    }

    public final long j() {
        return ((u1) this.f3387c.getValue()).u();
    }

    public final long k() {
        return ((u1) this.f3388d.getValue()).u();
    }

    public final long l() {
        return ((u1) this.f3390f.getValue()).u();
    }

    public final boolean m() {
        return ((Boolean) this.f3397m.getValue()).booleanValue();
    }

    public String toString() {
        return "Colors(primary=" + ((Object) u1.t(h())) + ", primaryVariant=" + ((Object) u1.t(i())) + ", secondary=" + ((Object) u1.t(j())) + ", secondaryVariant=" + ((Object) u1.t(k())) + ", background=" + ((Object) u1.t(a())) + ", surface=" + ((Object) u1.t(l())) + ", error=" + ((Object) u1.t(b())) + ", onPrimary=" + ((Object) u1.t(e())) + ", onSecondary=" + ((Object) u1.t(f())) + ", onBackground=" + ((Object) u1.t(c())) + ", onSurface=" + ((Object) u1.t(g())) + ", onError=" + ((Object) u1.t(d())) + ", isLight=" + m() + ')';
    }
}
