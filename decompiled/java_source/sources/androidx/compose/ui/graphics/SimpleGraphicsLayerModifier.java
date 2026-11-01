package androidx.compose.ui.graphics;

import androidx.compose.ui.node.NodeCoordinator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class SimpleGraphicsLayerModifier extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {
    private long A;
    private long B;
    private int C;
    private Function1 D;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f4277n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f4278o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f4279p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f4280q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f4281r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f4282s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f4283t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f4284u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f4285v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f4286w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f4287x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private a5 f4288y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f4289z;

    private SimpleGraphicsLayerModifier(float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, long j11, a5 a5Var, boolean z10, w4 w4Var, long j12, long j13, int i11) {
        this.f4277n = f11;
        this.f4278o = f12;
        this.f4279p = f13;
        this.f4280q = f14;
        this.f4281r = f15;
        this.f4282s = f16;
        this.f4283t = f17;
        this.f4284u = f18;
        this.f4285v = f19;
        this.f4286w = f20;
        this.f4287x = j11;
        this.f4288y = a5Var;
        this.f4289z = z10;
        this.A = j12;
        this.B = j13;
        this.C = i11;
        this.D = new Function1<c4, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$layerBlock$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((c4) obj);
                return Unit.f67061a;
            }

            public final void invoke(c4 c4Var) {
                c4Var.b(this.this$0.t());
                c4Var.h(this.this$0.A());
                c4Var.setAlpha(this.this$0.E1());
                c4Var.j(this.this$0.x());
                c4Var.a(this.this$0.w());
                c4Var.u(this.this$0.J1());
                c4Var.e(this.this$0.y());
                c4Var.f(this.this$0.m());
                c4Var.g(this.this$0.o());
                c4Var.d(this.this$0.q());
                c4Var.d0(this.this$0.b0());
                c4Var.A0(this.this$0.K1());
                c4Var.r(this.this$0.G1());
                this.this$0.I1();
                c4Var.c(null);
                c4Var.p(this.this$0.F1());
                c4Var.s(this.this$0.L1());
                c4Var.l(this.this$0.H1());
            }
        };
    }

    public /* synthetic */ SimpleGraphicsLayerModifier(float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, long j11, a5 a5Var, boolean z10, w4 w4Var, long j12, long j13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, j11, a5Var, z10, w4Var, j12, j13, i11);
    }

    public final float A() {
        return this.f4278o;
    }

    public final void A0(a5 a5Var) {
        this.f4288y = a5Var;
    }

    public final float E1() {
        return this.f4279p;
    }

    public final long F1() {
        return this.A;
    }

    public final boolean G1() {
        return this.f4289z;
    }

    public final int H1() {
        return this.C;
    }

    public final w4 I1() {
        return null;
    }

    public final float J1() {
        return this.f4282s;
    }

    public final a5 K1() {
        return this.f4288y;
    }

    public final long L1() {
        return this.B;
    }

    public final void M1() {
        NodeCoordinator nodeCoordinatorZ1 = androidx.compose.ui.node.g.h(this, androidx.compose.ui.node.s0.a(2)).Z1();
        if (nodeCoordinatorZ1 != null) {
            nodeCoordinatorZ1.L2(this.D, true);
        }
    }

    public final void a(float f11) {
        this.f4281r = f11;
    }

    public final void b(float f11) {
        this.f4277n = f11;
    }

    public final long b0() {
        return this.f4287x;
    }

    public final void c(w4 w4Var) {
    }

    public final void d(float f11) {
        this.f4286w = f11;
    }

    public final void d0(long j11) {
        this.f4287x = j11;
    }

    public final void e(float f11) {
        this.f4283t = f11;
    }

    public final void f(float f11) {
        this.f4284u = f11;
    }

    public final void g(float f11) {
        this.f4285v = f11;
    }

    public final void h(float f11) {
        this.f4278o = f11;
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return false;
    }

    public final void j(float f11) {
        this.f4280q = f11;
    }

    public final void l(int i11) {
        this.C = i11;
    }

    public final float m() {
        return this.f4284u;
    }

    public final float o() {
        return this.f4285v;
    }

    public final void p(long j11) {
        this.A = j11;
    }

    public final float q() {
        return this.f4286w;
    }

    public final void r(boolean z10) {
        this.f4289z = z10;
    }

    public final void s(long j11) {
        this.B = j11;
    }

    public final void setAlpha(float f11) {
        this.f4279p = f11;
    }

    public final float t() {
        return this.f4277n;
    }

    public String toString() {
        return "SimpleGraphicsLayerModifier(scaleX=" + this.f4277n + ", scaleY=" + this.f4278o + ", alpha = " + this.f4279p + ", translationX=" + this.f4280q + ", translationY=" + this.f4281r + ", shadowElevation=" + this.f4282s + ", rotationX=" + this.f4283t + ", rotationY=" + this.f4284u + ", rotationZ=" + this.f4285v + ", cameraDistance=" + this.f4286w + ", transformOrigin=" + ((Object) e5.g(this.f4287x)) + ", shape=" + this.f4288y + ", clip=" + this.f4289z + ", renderEffect=" + ((Object) null) + ", ambientShadowColor=" + ((Object) u1.t(this.A)) + ", spotShadowColor=" + ((Object) u1.t(this.B)) + ", compositingStrategy=" + ((Object) w3.g(this.C)) + ')';
    }

    public final void u(float f11) {
        this.f4282s = f11;
    }

    public final float w() {
        return this.f4281r;
    }

    public final float x() {
        return this.f4280q;
    }

    public final float y() {
        return this.f4283t;
    }

    @Override // androidx.compose.ui.node.x
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(j11);
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0.a.t(aVar, g0VarP, 0, 0, 0.0f, this.D, 4, null);
            }
        }, 4, null);
    }
}
