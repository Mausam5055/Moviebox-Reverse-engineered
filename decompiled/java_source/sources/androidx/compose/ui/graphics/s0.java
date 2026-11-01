package androidx.compose.ui.graphics;

import android.graphics.Paint;
import android.graphics.Shader;

/* JADX INFO: loaded from: classes.dex */
public final class s0 implements m4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f4632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Shader f4634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v1 f4635d;

    public s0() {
        this(t0.j());
    }

    public s0(Paint paint) {
        this.f4632a = paint;
        this.f4633b = c1.f4292a.B();
    }

    @Override // androidx.compose.ui.graphics.m4
    public void A(float f11) {
        t0.t(this.f4632a, f11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public int B() {
        return t0.e(this.f4632a);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void C(int i11) {
        t0.v(this.f4632a, i11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public long a() {
        return t0.d(this.f4632a);
    }

    @Override // androidx.compose.ui.graphics.m4
    public float getAlpha() {
        return t0.c(this.f4632a);
    }

    @Override // androidx.compose.ui.graphics.m4
    public float getStrokeWidth() {
        return t0.i(this.f4632a);
    }

    @Override // androidx.compose.ui.graphics.m4
    public v1 i() {
        return this.f4635d;
    }

    @Override // androidx.compose.ui.graphics.m4
    public int l() {
        return this.f4633b;
    }

    @Override // androidx.compose.ui.graphics.m4
    public void m(int i11) {
        t0.r(this.f4632a, i11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void n(int i11) {
        if (c1.E(this.f4633b, i11)) {
            return;
        }
        this.f4633b = i11;
        t0.l(this.f4632a, i11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void o(int i11) {
        t0.o(this.f4632a, i11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public int p() {
        return t0.f(this.f4632a);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void q(p4 p4Var) {
        t0.p(this.f4632a, p4Var);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void r(int i11) {
        t0.s(this.f4632a, i11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void s(long j11) {
        t0.m(this.f4632a, j11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void setAlpha(float f11) {
        t0.k(this.f4632a, f11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public void setStrokeWidth(float f11) {
        t0.u(this.f4632a, f11);
    }

    @Override // androidx.compose.ui.graphics.m4
    public p4 t() {
        return null;
    }

    @Override // androidx.compose.ui.graphics.m4
    public int u() {
        return t0.g(this.f4632a);
    }

    @Override // androidx.compose.ui.graphics.m4
    public float v() {
        return t0.h(this.f4632a);
    }

    @Override // androidx.compose.ui.graphics.m4
    public Paint w() {
        return this.f4632a;
    }

    @Override // androidx.compose.ui.graphics.m4
    public void x(Shader shader) {
        this.f4634c = shader;
        t0.q(this.f4632a, shader);
    }

    @Override // androidx.compose.ui.graphics.m4
    public Shader y() {
        return this.f4634c;
    }

    @Override // androidx.compose.ui.graphics.m4
    public void z(v1 v1Var) {
        this.f4635d = v1Var;
        t0.n(this.f4632a, v1Var);
    }
}
