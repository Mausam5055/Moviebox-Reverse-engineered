package androidx.compose.ui.platform;

import android.graphics.Outline;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.o4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5808a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Outline f5809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k4 f5810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Path f5811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Path f5812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5814g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Path f5815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private y.k f5816i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f5817j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f5818k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f5819l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f5820m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Path f5821n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Path f5822o;

    public i1() {
        Outline outline = new Outline();
        outline.setAlpha(1.0f);
        this.f5809b = outline;
        this.f5818k = y.g.f78470b.c();
        this.f5819l = y.m.f78491b.b();
    }

    private final boolean g(y.k kVar, long j11, long j12, float f11) {
        return kVar != null && y.l.e(kVar) && kVar.e() == y.g.m(j11) && kVar.g() == y.g.n(j11) && kVar.f() == y.g.m(j11) + y.m.i(j12) && kVar.a() == y.g.n(j11) + y.m.g(j12) && y.a.d(kVar.h()) == f11;
    }

    private final void i() {
        if (this.f5813f) {
            this.f5818k = y.g.f78470b.c();
            this.f5817j = 0.0f;
            this.f5812e = null;
            this.f5813f = false;
            this.f5814g = false;
            k4 k4Var = this.f5810c;
            if (k4Var == null || !this.f5820m || y.m.i(this.f5819l) <= 0.0f || y.m.g(this.f5819l) <= 0.0f) {
                this.f5809b.setEmpty();
                return;
            }
            this.f5808a = true;
            if (k4Var instanceof k4.b) {
                k(((k4.b) k4Var).b());
            } else if (k4Var instanceof k4.c) {
                l(((k4.c) k4Var).b());
            } else if (k4Var instanceof k4.a) {
                j(((k4.a) k4Var).b());
            }
        }
    }

    private final void j(Path path) {
        if (Build.VERSION.SDK_INT > 28 || path.a()) {
            Outline outline = this.f5809b;
            if (!(path instanceof androidx.compose.ui.graphics.u0)) {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
            outline.setConvexPath(((androidx.compose.ui.graphics.u0) path).p());
            this.f5814g = !this.f5809b.canClip();
        } else {
            this.f5808a = false;
            this.f5809b.setEmpty();
            this.f5814g = true;
        }
        this.f5812e = path;
    }

    private final void k(y.i iVar) {
        this.f5818k = y.h.a(iVar.f(), iVar.i());
        this.f5819l = y.n.a(iVar.k(), iVar.e());
        this.f5809b.setRect(Math.round(iVar.f()), Math.round(iVar.i()), Math.round(iVar.g()), Math.round(iVar.c()));
    }

    private final void l(y.k kVar) {
        float fD = y.a.d(kVar.h());
        this.f5818k = y.h.a(kVar.e(), kVar.g());
        this.f5819l = y.n.a(kVar.j(), kVar.d());
        if (y.l.e(kVar)) {
            this.f5809b.setRoundRect(Math.round(kVar.e()), Math.round(kVar.g()), Math.round(kVar.f()), Math.round(kVar.a()), fD);
            this.f5817j = fD;
            return;
        }
        Path pathA = this.f5811d;
        if (pathA == null) {
            pathA = androidx.compose.ui.graphics.x0.a();
            this.f5811d = pathA;
        }
        pathA.reset();
        o4.b(pathA, kVar, null, 2, null);
        j(pathA);
    }

    public final void a(androidx.compose.ui.graphics.m1 m1Var) {
        Path pathD = d();
        if (pathD != null) {
            androidx.compose.ui.graphics.l1.c(m1Var, pathD, 0, 2, null);
            return;
        }
        float f11 = this.f5817j;
        if (f11 <= 0.0f) {
            androidx.compose.ui.graphics.l1.d(m1Var, y.g.m(this.f5818k), y.g.n(this.f5818k), y.g.m(this.f5818k) + y.m.i(this.f5819l), y.g.n(this.f5818k) + y.m.g(this.f5819l), 0, 16, null);
            return;
        }
        Path pathA = this.f5815h;
        y.k kVar = this.f5816i;
        if (pathA == null || !g(kVar, this.f5818k, this.f5819l, f11)) {
            y.k kVarC = y.l.c(y.g.m(this.f5818k), y.g.n(this.f5818k), y.g.m(this.f5818k) + y.m.i(this.f5819l), y.g.n(this.f5818k) + y.m.g(this.f5819l), y.b.b(this.f5817j, 0.0f, 2, null));
            if (pathA == null) {
                pathA = androidx.compose.ui.graphics.x0.a();
            } else {
                pathA.reset();
            }
            o4.b(pathA, kVarC, null, 2, null);
            this.f5816i = kVarC;
            this.f5815h = pathA;
        }
        androidx.compose.ui.graphics.l1.c(m1Var, pathA, 0, 2, null);
    }

    public final Outline b() {
        i();
        if (this.f5820m && this.f5808a) {
            return this.f5809b;
        }
        return null;
    }

    public final boolean c() {
        return this.f5813f;
    }

    public final Path d() {
        i();
        return this.f5812e;
    }

    public final boolean e() {
        return !this.f5814g;
    }

    public final boolean f(long j11) {
        k4 k4Var;
        if (this.f5820m && (k4Var = this.f5810c) != null) {
            return f2.b(k4Var, y.g.m(j11), y.g.n(j11), this.f5821n, this.f5822o);
        }
        return true;
    }

    public final boolean h(k4 k4Var, float f11, boolean z10, float f12, long j11) {
        this.f5809b.setAlpha(f11);
        boolean zC = Intrinsics.c(this.f5810c, k4Var);
        boolean z11 = !zC;
        if (!zC) {
            this.f5810c = k4Var;
            this.f5813f = true;
        }
        this.f5819l = j11;
        boolean z12 = k4Var != null && (z10 || f12 > 0.0f);
        if (this.f5820m != z12) {
            this.f5820m = z12;
            this.f5813f = true;
        }
        return z11;
    }
}
