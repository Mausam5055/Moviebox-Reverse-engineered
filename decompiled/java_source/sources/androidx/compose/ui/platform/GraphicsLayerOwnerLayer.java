package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.e5;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.w3;
import androidx.compose.ui.graphics.x4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class GraphicsLayerOwnerLayer implements androidx.compose.ui.node.w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private GraphicsLayer f5643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a4 f5644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AndroidComposeView f5645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function2 f5646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function0 f5647e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5649g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float[] f5651i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f5652j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f5656n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private k4 f5658p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Path f5659q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private m4 f5660r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f5661s;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f5648f = o0.u.a(Integer.MAX_VALUE, Integer.MAX_VALUE);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f5650h = i4.c(null, 1, null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private o0.e f5653k = o0.g.b(1.0f, 0.0f, 2, null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private LayoutDirection f5654l = LayoutDirection.Ltr;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final z.a f5655m = new z.a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f5657o = e5.f4436a.a();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Function1 f5662t = new Function1<z.g, Unit>() { // from class: androidx.compose.ui.platform.GraphicsLayerOwnerLayer$recordLambda$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((z.g) obj);
            return Unit.f67061a;
        }

        public final void invoke(z.g gVar) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = this.this$0;
            androidx.compose.ui.graphics.m1 m1VarE = gVar.H0().e();
            Function2 function2 = graphicsLayerOwnerLayer.f5646d;
            if (function2 != null) {
                function2.invoke(m1VarE, gVar.H0().g());
            }
        }
    };

    public GraphicsLayerOwnerLayer(GraphicsLayer graphicsLayer, a4 a4Var, AndroidComposeView androidComposeView, Function2 function2, Function0 function0) {
        this.f5643a = graphicsLayer;
        this.f5644b = a4Var;
        this.f5645c = androidComposeView;
        this.f5646d = function2;
        this.f5647e = function0;
    }

    private final void b(androidx.compose.ui.graphics.m1 m1Var) {
        if (this.f5643a.k()) {
            k4 k4VarN = this.f5643a.n();
            if (k4VarN instanceof k4.b) {
                androidx.compose.ui.graphics.l1.e(m1Var, ((k4.b) k4VarN).b(), 0, 2, null);
                return;
            }
            if (!(k4VarN instanceof k4.c)) {
                if (k4VarN instanceof k4.a) {
                    androidx.compose.ui.graphics.l1.c(m1Var, ((k4.a) k4VarN).b(), 0, 2, null);
                    return;
                }
                return;
            }
            Path pathA = this.f5659q;
            if (pathA == null) {
                pathA = androidx.compose.ui.graphics.x0.a();
                this.f5659q = pathA;
            }
            pathA.reset();
            o4.b(pathA, ((k4.c) k4VarN).b(), null, 2, null);
            androidx.compose.ui.graphics.l1.c(m1Var, pathA, 0, 2, null);
        }
    }

    private final float[] c() {
        float[] fArrD = d();
        float[] fArrC = this.f5651i;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f5651i = fArrC;
        }
        if (b1.a(fArrD, fArrC)) {
            return fArrC;
        }
        return null;
    }

    private final float[] d() {
        g();
        return this.f5650h;
    }

    private final void e(boolean z10) {
        if (z10 != this.f5652j) {
            this.f5652j = z10;
            this.f5645c.notifyLayerIsDirty$ui_release(this, z10);
        }
    }

    private final void f() {
        if (Build.VERSION.SDK_INT >= 26) {
            a3.f5731a.a(this.f5645c);
        } else {
            this.f5645c.invalidate();
        }
    }

    private final void g() {
        GraphicsLayer graphicsLayer = this.f5643a;
        long jB = y.h.d(graphicsLayer.o()) ? y.n.b(o0.u.d(this.f5648f)) : graphicsLayer.o();
        i4.h(this.f5650h);
        float[] fArr = this.f5650h;
        float[] fArrC = i4.c(null, 1, null);
        i4.q(fArrC, -y.g.m(jB), -y.g.n(jB), 0.0f, 4, null);
        i4.n(fArr, fArrC);
        float[] fArr2 = this.f5650h;
        float[] fArrC2 = i4.c(null, 1, null);
        i4.q(fArrC2, graphicsLayer.x(), graphicsLayer.y(), 0.0f, 4, null);
        i4.i(fArrC2, graphicsLayer.p());
        i4.j(fArrC2, graphicsLayer.q());
        i4.k(fArrC2, graphicsLayer.r());
        i4.m(fArrC2, graphicsLayer.s(), graphicsLayer.t(), 0.0f, 4, null);
        i4.n(fArr2, fArrC2);
        float[] fArr3 = this.f5650h;
        float[] fArrC3 = i4.c(null, 1, null);
        i4.q(fArrC3, y.g.m(jB), y.g.n(jB), 0.0f, 4, null);
        i4.n(fArr3, fArrC3);
    }

    private final void h() {
        Function0 function0;
        k4 k4Var = this.f5658p;
        if (k4Var == null) {
            return;
        }
        androidx.compose.ui.graphics.layer.d.b(this.f5643a, k4Var);
        if (!(k4Var instanceof k4.a) || Build.VERSION.SDK_INT >= 33 || (function0 = this.f5647e) == null) {
            return;
        }
        function0.invoke();
    }

    @Override // androidx.compose.ui.node.w0
    public void destroy() {
        this.f5646d = null;
        this.f5647e = null;
        this.f5649g = true;
        e(false);
        a4 a4Var = this.f5644b;
        if (a4Var != null) {
            a4Var.b(this.f5643a);
            this.f5645c.recycle$ui_release(this);
        }
    }

    @Override // androidx.compose.ui.node.w0
    public void drawLayer(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (canvasD.isHardwareAccelerated()) {
            updateDisplayList();
            this.f5661s = this.f5643a.u() > 0.0f;
            z.d dVarH0 = this.f5655m.H0();
            dVarH0.h(m1Var);
            dVarH0.d(graphicsLayer);
            androidx.compose.ui.graphics.layer.d.a(this.f5655m, this.f5643a);
            return;
        }
        float fH = o0.p.h(this.f5643a.w());
        float fI = o0.p.i(this.f5643a.w());
        float fG = fH + o0.t.g(this.f5648f);
        float f11 = fI + o0.t.f(this.f5648f);
        if (this.f5643a.i() < 1.0f) {
            m4 m4VarA = this.f5660r;
            if (m4VarA == null) {
                m4VarA = androidx.compose.ui.graphics.t0.a();
                this.f5660r = m4VarA;
            }
            m4VarA.setAlpha(this.f5643a.i());
            canvasD.saveLayer(fH, fI, fG, f11, m4VarA.w());
        } else {
            m1Var.n();
        }
        m1Var.c(fH, fI);
        m1Var.p(d());
        if (this.f5643a.k()) {
            b(m1Var);
        }
        Function2 function2 = this.f5646d;
        if (function2 != null) {
            function2.invoke(m1Var, null);
        }
        m1Var.j();
    }

    @Override // androidx.compose.ui.node.w0
    public void invalidate() {
        if (this.f5652j || this.f5649g) {
            return;
        }
        this.f5645c.invalidate();
        e(true);
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: isInLayer-k-4lQ0M */
    public boolean mo138isInLayerk4lQ0M(long j11) {
        float fM = y.g.m(j11);
        float fN = y.g.n(j11);
        if (this.f5643a.k()) {
            return f2.c(this.f5643a.n(), fM, fN, null, null, 24, null);
        }
        return true;
    }

    @Override // androidx.compose.ui.node.w0
    public void mapBounds(y.e eVar, boolean z10) {
        if (!z10) {
            i4.g(d(), eVar);
            return;
        }
        float[] fArrC = c();
        if (fArrC == null) {
            eVar.g(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            i4.g(fArrC, eVar);
        }
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: mapOffset-8S9VItk */
    public long mo139mapOffset8S9VItk(long j11, boolean z10) {
        if (!z10) {
            return i4.f(d(), j11);
        }
        float[] fArrC = c();
        return fArrC != null ? i4.f(fArrC, j11) : y.g.f78470b.a();
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: move--gyyYBs */
    public void mo140movegyyYBs(long j11) {
        this.f5643a.c0(j11);
        f();
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: resize-ozmzZPI */
    public void mo141resizeozmzZPI(long j11) {
        if (o0.t.e(j11, this.f5648f)) {
            return;
        }
        this.f5648f = j11;
        invalidate();
    }

    @Override // androidx.compose.ui.node.w0
    public void reuseLayer(Function2 function2, Function0 function0) {
        a4 a4Var = this.f5644b;
        if (a4Var == null) {
            throw new IllegalArgumentException("currently reuse is only supported when we manage the layer lifecycle");
        }
        if (!this.f5643a.z()) {
            throw new IllegalArgumentException("layer should have been released before reuse");
        }
        this.f5643a = a4Var.a();
        this.f5649g = false;
        this.f5646d = function2;
        this.f5647e = function0;
        this.f5657o = e5.f4436a.a();
        this.f5661s = false;
        this.f5648f = o0.u.a(Integer.MAX_VALUE, Integer.MAX_VALUE);
        this.f5658p = null;
        this.f5656n = 0;
    }

    @Override // androidx.compose.ui.node.w0
    public void updateDisplayList() {
        if (this.f5652j) {
            if (!e5.c(this.f5657o, e5.f4436a.a()) && !o0.t.e(this.f5643a.v(), this.f5648f)) {
                this.f5643a.P(y.h.a(e5.d(this.f5657o) * o0.t.g(this.f5648f), e5.e(this.f5657o) * o0.t.f(this.f5648f)));
            }
            this.f5643a.E(this.f5653k, this.f5654l, this.f5648f, this.f5662t);
            e(false);
        }
    }

    @Override // androidx.compose.ui.node.w0
    public void updateLayerProperties(x4 x4Var) {
        boolean z10;
        int iB;
        Function0 function0;
        int iF = x4Var.F() | this.f5656n;
        this.f5654l = x4Var.D();
        this.f5653k = x4Var.C();
        int i11 = iF & 4096;
        if (i11 != 0) {
            this.f5657o = x4Var.b0();
        }
        if ((iF & 1) != 0) {
            this.f5643a.X(x4Var.t());
        }
        if ((iF & 2) != 0) {
            this.f5643a.Y(x4Var.A());
        }
        if ((iF & 4) != 0) {
            this.f5643a.J(x4Var.n());
        }
        if ((iF & 8) != 0) {
            this.f5643a.d0(x4Var.x());
        }
        if ((iF & 16) != 0) {
            this.f5643a.e0(x4Var.w());
        }
        if ((iF & 32) != 0) {
            this.f5643a.Z(x4Var.L());
            if (x4Var.L() > 0.0f && !this.f5661s && (function0 = this.f5647e) != null) {
                function0.invoke();
            }
        }
        if ((iF & 64) != 0) {
            this.f5643a.K(x4Var.v());
        }
        if ((iF & 128) != 0) {
            this.f5643a.b0(x4Var.O());
        }
        if ((iF & 1024) != 0) {
            this.f5643a.V(x4Var.o());
        }
        if ((iF & 256) != 0) {
            this.f5643a.T(x4Var.y());
        }
        if ((iF & 512) != 0) {
            this.f5643a.U(x4Var.m());
        }
        if ((iF & 2048) != 0) {
            this.f5643a.L(x4Var.q());
        }
        if (i11 != 0) {
            if (e5.c(this.f5657o, e5.f4436a.a())) {
                this.f5643a.P(y.g.f78470b.b());
            } else {
                this.f5643a.P(y.h.a(e5.d(this.f5657o) * o0.t.g(this.f5648f), e5.e(this.f5657o) * o0.t.f(this.f5648f)));
            }
        }
        if ((iF & 16384) != 0) {
            this.f5643a.M(x4Var.z());
        }
        if ((131072 & iF) != 0) {
            GraphicsLayer graphicsLayer = this.f5643a;
            x4Var.I();
            graphicsLayer.S(null);
        }
        if ((32768 & iF) != 0) {
            GraphicsLayer graphicsLayer2 = this.f5643a;
            int iB2 = x4Var.B();
            w3.a aVar = w3.f4874a;
            if (w3.e(iB2, aVar.a())) {
                iB = androidx.compose.ui.graphics.layer.b.f4512a.a();
            } else if (w3.e(iB2, aVar.c())) {
                iB = androidx.compose.ui.graphics.layer.b.f4512a.c();
            } else {
                if (!w3.e(iB2, aVar.b())) {
                    throw new IllegalStateException("Not supported composition strategy");
                }
                iB = androidx.compose.ui.graphics.layer.b.f4512a.b();
            }
            graphicsLayer2.N(iB);
        }
        if (Intrinsics.c(this.f5658p, x4Var.G())) {
            z10 = false;
        } else {
            this.f5658p = x4Var.G();
            h();
            z10 = true;
        }
        this.f5656n = x4Var.F();
        if (iF != 0 || z10) {
            f();
        }
    }
}
