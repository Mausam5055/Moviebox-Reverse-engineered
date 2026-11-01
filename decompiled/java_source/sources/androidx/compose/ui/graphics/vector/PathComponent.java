package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.r4;
import androidx.compose.ui.graphics.w0;
import androidx.compose.ui.graphics.x0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class PathComponent extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j1 f4698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f4699d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f4700e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4701f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f4702g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f4703h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private j1 f4704i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f4705j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f4706k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f4707l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f4708m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f4709n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f4710o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f4711p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f4712q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f4713r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private z.m f4714s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Path f4715t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Path f4716u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Lazy f4717v;

    public PathComponent() {
        super(null);
        this.f4697b = "";
        this.f4699d = 1.0f;
        this.f4700e = k.d();
        this.f4701f = k.a();
        this.f4702g = 1.0f;
        this.f4705j = k.b();
        this.f4706k = k.c();
        this.f4707l = 4.0f;
        this.f4709n = 1.0f;
        this.f4711p = true;
        this.f4712q = true;
        Path pathA = x0.a();
        this.f4715t = pathA;
        this.f4716u = pathA;
        this.f4717v = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<r4>() { // from class: androidx.compose.ui.graphics.vector.PathComponent$pathMeasure$2
            @Override // kotlin.jvm.functions.Function0
            public final r4 invoke() {
                return w0.a();
            }
        });
    }

    private final r4 f() {
        return (r4) this.f4717v.getValue();
    }

    private final void v() {
        h.c(this.f4700e, this.f4715t);
        w();
    }

    private final void w() {
        if (this.f4708m == 0.0f && this.f4709n == 1.0f) {
            this.f4716u = this.f4715t;
            return;
        }
        if (Intrinsics.c(this.f4716u, this.f4715t)) {
            this.f4716u = x0.a();
        } else {
            int iH = this.f4716u.h();
            this.f4716u.b();
            this.f4716u.e(iH);
        }
        f().b(this.f4715t, false);
        float length = f().getLength();
        float f11 = this.f4708m;
        float f12 = this.f4710o;
        float f13 = ((f11 + f12) % 1.0f) * length;
        float f14 = ((this.f4709n + f12) % 1.0f) * length;
        if (f13 <= f14) {
            f().a(f13, f14, this.f4716u, true);
        } else {
            f().a(f13, length, this.f4716u, true);
            f().a(0.0f, f14, this.f4716u, true);
        }
    }

    @Override // androidx.compose.ui.graphics.vector.i
    public void a(z.g gVar) {
        if (this.f4711p) {
            v();
        } else if (this.f4713r) {
            w();
        }
        this.f4711p = false;
        this.f4713r = false;
        j1 j1Var = this.f4698c;
        if (j1Var != null) {
            z.f.g(gVar, this.f4716u, j1Var, this.f4699d, null, null, 0, 56, null);
        }
        j1 j1Var2 = this.f4704i;
        if (j1Var2 != null) {
            z.m mVar = this.f4714s;
            if (this.f4712q || mVar == null) {
                mVar = new z.m(this.f4703h, this.f4707l, this.f4705j, this.f4706k, null, 16, null);
                this.f4714s = mVar;
                this.f4712q = false;
            }
            z.f.g(gVar, this.f4716u, j1Var2, this.f4702g, mVar, null, 0, 48, null);
        }
    }

    public final j1 e() {
        return this.f4698c;
    }

    public final j1 g() {
        return this.f4704i;
    }

    public final void h(j1 j1Var) {
        this.f4698c = j1Var;
        c();
    }

    public final void i(float f11) {
        this.f4699d = f11;
        c();
    }

    public final void j(String str) {
        this.f4697b = str;
        c();
    }

    public final void k(List list) {
        this.f4700e = list;
        this.f4711p = true;
        c();
    }

    public final void l(int i11) {
        this.f4701f = i11;
        this.f4716u.e(i11);
        c();
    }

    public final void m(j1 j1Var) {
        this.f4704i = j1Var;
        c();
    }

    public final void n(float f11) {
        this.f4702g = f11;
        c();
    }

    public final void o(int i11) {
        this.f4705j = i11;
        this.f4712q = true;
        c();
    }

    public final void p(int i11) {
        this.f4706k = i11;
        this.f4712q = true;
        c();
    }

    public final void q(float f11) {
        this.f4707l = f11;
        this.f4712q = true;
        c();
    }

    public final void r(float f11) {
        this.f4703h = f11;
        this.f4712q = true;
        c();
    }

    public final void s(float f11) {
        this.f4709n = f11;
        this.f4713r = true;
        c();
    }

    public final void t(float f11) {
        this.f4710o = f11;
        this.f4713r = true;
        c();
    }

    public String toString() {
        return this.f4715t.toString();
    }

    public final void u(float f11) {
        this.f4708m = f11;
        this.f4713r = true;
        c();
    }
}
