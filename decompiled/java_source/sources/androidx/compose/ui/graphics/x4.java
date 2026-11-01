package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x4 implements c4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4884a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f4888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f4889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f4890g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f4893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f4894k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f4895l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f4899p;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private k4 f4904u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f4885b = 1.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f4886c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f4887d = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f4891h = d4.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f4892i = d4.a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f4896m = 8.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f4897n = e5.f4436a.a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a5 f4898o = v4.a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f4900q = w3.f4874a.a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f4901r = y.m.f78491b.a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private o0.e f4902s = o0.g.b(1.0f, 0.0f, 2, null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private LayoutDirection f4903t = LayoutDirection.Ltr;

    @Override // androidx.compose.ui.graphics.c4
    public float A() {
        return this.f4886c;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void A0(a5 a5Var) {
        if (Intrinsics.c(this.f4898o, a5Var)) {
            return;
        }
        this.f4884a |= 8192;
        this.f4898o = a5Var;
    }

    public int B() {
        return this.f4900q;
    }

    public final o0.e C() {
        return this.f4902s;
    }

    @Override // o0.n
    public float C0() {
        return this.f4902s.C0();
    }

    public final LayoutDirection D() {
        return this.f4903t;
    }

    @Override // o0.e
    public /* synthetic */ float E0(float f11) {
        return o0.d.e(this, f11);
    }

    public final int F() {
        return this.f4884a;
    }

    public final k4 G() {
        return this.f4904u;
    }

    @Override // o0.n
    public /* synthetic */ long H(float f11) {
        return o0.m.b(this, f11);
    }

    public w4 I() {
        return null;
    }

    @Override // o0.n
    public /* synthetic */ float J(long j11) {
        return o0.m.a(this, j11);
    }

    public float L() {
        return this.f4890g;
    }

    public a5 M() {
        return this.f4898o;
    }

    public long O() {
        return this.f4892i;
    }

    public final void P() {
        b(1.0f);
        h(1.0f);
        setAlpha(1.0f);
        j(0.0f);
        a(0.0f);
        u(0.0f);
        p(d4.a());
        s(d4.a());
        e(0.0f);
        f(0.0f);
        g(0.0f);
        d(8.0f);
        d0(e5.f4436a.a());
        A0(v4.a());
        r(false);
        c(null);
        l(w3.f4874a.a());
        V(y.m.f78491b.a());
        this.f4904u = null;
        this.f4884a = 0;
    }

    @Override // o0.e
    public /* synthetic */ long Q(float f11) {
        return o0.d.g(this, f11);
    }

    @Override // o0.e
    public /* synthetic */ long Q0(long j11) {
        return o0.d.f(this, j11);
    }

    public final void R(o0.e eVar) {
        this.f4902s = eVar;
    }

    public final void U(LayoutDirection layoutDirection) {
        this.f4903t = layoutDirection;
    }

    public void V(long j11) {
        this.f4901r = j11;
    }

    public final void Y() {
        this.f4904u = M().a(i(), this.f4903t, this.f4902s);
    }

    @Override // androidx.compose.ui.graphics.c4
    public void a(float f11) {
        if (this.f4889f == f11) {
            return;
        }
        this.f4884a |= 16;
        this.f4889f = f11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void b(float f11) {
        if (this.f4885b == f11) {
            return;
        }
        this.f4884a |= 1;
        this.f4885b = f11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public long b0() {
        return this.f4897n;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void c(w4 w4Var) {
        if (Intrinsics.c(null, w4Var)) {
            return;
        }
        this.f4884a |= 131072;
    }

    @Override // o0.e
    public /* synthetic */ int c0(float f11) {
        return o0.d.a(this, f11);
    }

    @Override // androidx.compose.ui.graphics.c4
    public void d(float f11) {
        if (this.f4896m == f11) {
            return;
        }
        this.f4884a |= 2048;
        this.f4896m = f11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void d0(long j11) {
        if (e5.c(this.f4897n, j11)) {
            return;
        }
        this.f4884a |= 4096;
        this.f4897n = j11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void e(float f11) {
        if (this.f4893j == f11) {
            return;
        }
        this.f4884a |= 256;
        this.f4893j = f11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void f(float f11) {
        if (this.f4894k == f11) {
            return;
        }
        this.f4884a |= 512;
        this.f4894k = f11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void g(float f11) {
        if (this.f4895l == f11) {
            return;
        }
        this.f4884a |= 1024;
        this.f4895l = f11;
    }

    @Override // o0.e
    public float getDensity() {
        return this.f4902s.getDensity();
    }

    @Override // androidx.compose.ui.graphics.c4
    public void h(float f11) {
        if (this.f4886c == f11) {
            return;
        }
        this.f4884a |= 2;
        this.f4886c = f11;
    }

    @Override // o0.e
    public /* synthetic */ float h0(long j11) {
        return o0.d.d(this, j11);
    }

    public long i() {
        return this.f4901r;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void j(float f11) {
        if (this.f4888e == f11) {
            return;
        }
        this.f4884a |= 8;
        this.f4888e = f11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void l(int i11) {
        if (w3.e(this.f4900q, i11)) {
            return;
        }
        this.f4884a |= 32768;
        this.f4900q = i11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public float m() {
        return this.f4894k;
    }

    public float n() {
        return this.f4887d;
    }

    @Override // androidx.compose.ui.graphics.c4
    public float o() {
        return this.f4895l;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void p(long j11) {
        if (u1.m(this.f4891h, j11)) {
            return;
        }
        this.f4884a |= 64;
        this.f4891h = j11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public float q() {
        return this.f4896m;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void r(boolean z10) {
        if (this.f4899p != z10) {
            this.f4884a |= 16384;
            this.f4899p = z10;
        }
    }

    @Override // androidx.compose.ui.graphics.c4
    public void s(long j11) {
        if (u1.m(this.f4892i, j11)) {
            return;
        }
        this.f4884a |= 128;
        this.f4892i = j11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void setAlpha(float f11) {
        if (this.f4887d == f11) {
            return;
        }
        this.f4884a |= 4;
        this.f4887d = f11;
    }

    @Override // androidx.compose.ui.graphics.c4
    public float t() {
        return this.f4885b;
    }

    @Override // androidx.compose.ui.graphics.c4
    public void u(float f11) {
        if (this.f4890g == f11) {
            return;
        }
        this.f4884a |= 32;
        this.f4890g = f11;
    }

    public long v() {
        return this.f4891h;
    }

    @Override // androidx.compose.ui.graphics.c4
    public float w() {
        return this.f4889f;
    }

    @Override // androidx.compose.ui.graphics.c4
    public float x() {
        return this.f4888e;
    }

    @Override // o0.e
    public /* synthetic */ float x0(int i11) {
        return o0.d.c(this, i11);
    }

    @Override // androidx.compose.ui.graphics.c4
    public float y() {
        return this.f4893j;
    }

    @Override // o0.e
    public /* synthetic */ float y0(float f11) {
        return o0.d.b(this, f11);
    }

    public boolean z() {
        return this.f4899p;
    }
}
