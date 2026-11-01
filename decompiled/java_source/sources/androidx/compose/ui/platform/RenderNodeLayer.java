package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.e5;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.v4;
import androidx.compose.ui.graphics.x4;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class RenderNodeLayer implements androidx.compose.ui.node.w0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f5665n = new a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f5666o = 8;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Function2 f5667p = new Function2<t0, Matrix, Unit>() { // from class: androidx.compose.ui.platform.RenderNodeLayer$Companion$getMatrix$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((t0) obj, (Matrix) obj2);
            return Unit.f67061a;
        }

        public final void invoke(t0 t0Var, Matrix matrix) {
            t0Var.x(matrix);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AndroidComposeView f5668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Function2 f5669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function0 f5670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5671d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5674g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m4 f5675h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final t0 f5679l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f5680m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f5672e = new i1();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d1 f5676i = new d1(f5667p);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.compose.ui.graphics.n1 f5677j = new androidx.compose.ui.graphics.n1();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f5678k = e5.f4436a.a();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public RenderNodeLayer(AndroidComposeView androidComposeView, Function2 function2, Function0 function0) {
        this.f5668a = androidComposeView;
        this.f5669b = function2;
        this.f5670c = function0;
        t0 w1Var = Build.VERSION.SDK_INT >= 29 ? new w1(androidComposeView) : new j1(androidComposeView);
        w1Var.w(true);
        w1Var.p(false);
        this.f5679l = w1Var;
    }

    private final void a(androidx.compose.ui.graphics.m1 m1Var) {
        if (this.f5679l.v() || this.f5679l.t()) {
            this.f5672e.a(m1Var);
        }
    }

    private final void b(boolean z10) {
        if (z10 != this.f5671d) {
            this.f5671d = z10;
            this.f5668a.notifyLayerIsDirty$ui_release(this, z10);
        }
    }

    private final void c() {
        if (Build.VERSION.SDK_INT >= 26) {
            a3.f5731a.a(this.f5668a);
        } else {
            this.f5668a.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.w0
    public void destroy() {
        if (this.f5679l.n()) {
            this.f5679l.k();
        }
        this.f5669b = null;
        this.f5670c = null;
        this.f5673f = true;
        b(false);
        this.f5668a.requestClearInvalidObservations();
        this.f5668a.recycle$ui_release(this);
    }

    @Override // androidx.compose.ui.node.w0
    public void drawLayer(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (canvasD.isHardwareAccelerated()) {
            updateDisplayList();
            boolean z10 = this.f5679l.H() > 0.0f;
            this.f5674g = z10;
            if (z10) {
                m1Var.k();
            }
            this.f5679l.o(canvasD);
            if (this.f5674g) {
                m1Var.o();
                return;
            }
            return;
        }
        float fI = this.f5679l.i();
        float fU = this.f5679l.u();
        float fM = this.f5679l.m();
        float fZ = this.f5679l.z();
        if (this.f5679l.getAlpha() < 1.0f) {
            m4 m4VarA = this.f5675h;
            if (m4VarA == null) {
                m4VarA = androidx.compose.ui.graphics.t0.a();
                this.f5675h = m4VarA;
            }
            m4VarA.setAlpha(this.f5679l.getAlpha());
            canvasD.saveLayer(fI, fU, fM, fZ, m4VarA.w());
        } else {
            m1Var.n();
        }
        m1Var.c(fI, fU);
        m1Var.p(this.f5676i.b(this.f5679l));
        a(m1Var);
        Function2 function2 = this.f5669b;
        if (function2 != null) {
            function2.invoke(m1Var, null);
        }
        m1Var.j();
        b(false);
    }

    @Override // androidx.compose.ui.node.w0
    public void invalidate() {
        if (this.f5671d || this.f5673f) {
            return;
        }
        this.f5668a.invalidate();
        b(true);
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: isInLayer-k-4lQ0M */
    public boolean mo138isInLayerk4lQ0M(long j11) {
        float fM = y.g.m(j11);
        float fN = y.g.n(j11);
        if (this.f5679l.t()) {
            return 0.0f <= fM && fM < ((float) this.f5679l.getWidth()) && 0.0f <= fN && fN < ((float) this.f5679l.getHeight());
        }
        if (this.f5679l.v()) {
            return this.f5672e.f(j11);
        }
        return true;
    }

    @Override // androidx.compose.ui.node.w0
    public void mapBounds(y.e eVar, boolean z10) {
        if (!z10) {
            i4.g(this.f5676i.b(this.f5679l), eVar);
            return;
        }
        float[] fArrA = this.f5676i.a(this.f5679l);
        if (fArrA == null) {
            eVar.g(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            i4.g(fArrA, eVar);
        }
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: mapOffset-8S9VItk */
    public long mo139mapOffset8S9VItk(long j11, boolean z10) {
        if (!z10) {
            return i4.f(this.f5676i.b(this.f5679l), j11);
        }
        float[] fArrA = this.f5676i.a(this.f5679l);
        return fArrA != null ? i4.f(fArrA, j11) : y.g.f78470b.a();
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: move--gyyYBs */
    public void mo140movegyyYBs(long j11) {
        int i11 = this.f5679l.i();
        int iU = this.f5679l.u();
        int iH = o0.p.h(j11);
        int i12 = o0.p.i(j11);
        if (i11 == iH && iU == i12) {
            return;
        }
        if (i11 != iH) {
            this.f5679l.y(iH - i11);
        }
        if (iU != i12) {
            this.f5679l.s(i12 - iU);
        }
        c();
        this.f5676i.c();
    }

    @Override // androidx.compose.ui.node.w0
    /* JADX INFO: renamed from: resize-ozmzZPI */
    public void mo141resizeozmzZPI(long j11) {
        int iG = o0.t.g(j11);
        int iF = o0.t.f(j11);
        this.f5679l.A(e5.d(this.f5678k) * iG);
        this.f5679l.B(e5.e(this.f5678k) * iF);
        t0 t0Var = this.f5679l;
        if (t0Var.q(t0Var.i(), this.f5679l.u(), this.f5679l.i() + iG, this.f5679l.u() + iF)) {
            this.f5679l.C(this.f5672e.b());
            invalidate();
            this.f5676i.c();
        }
    }

    @Override // androidx.compose.ui.node.w0
    public void reuseLayer(Function2 function2, Function0 function0) {
        b(false);
        this.f5673f = false;
        this.f5674g = false;
        this.f5678k = e5.f4436a.a();
        this.f5669b = function2;
        this.f5670c = function0;
    }

    @Override // androidx.compose.ui.node.w0
    public void updateDisplayList() {
        if (this.f5671d || !this.f5679l.n()) {
            Path pathD = (!this.f5679l.v() || this.f5672e.e()) ? null : this.f5672e.d();
            final Function2 function2 = this.f5669b;
            if (function2 != null) {
                this.f5679l.F(this.f5677j, pathD, new Function1<androidx.compose.ui.graphics.m1, Unit>() { // from class: androidx.compose.ui.platform.RenderNodeLayer$updateDisplayList$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((androidx.compose.ui.graphics.m1) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.ui.graphics.m1 m1Var) {
                        function2.invoke(m1Var, null);
                    }
                });
            }
            b(false);
        }
    }

    @Override // androidx.compose.ui.node.w0
    public void updateLayerProperties(x4 x4Var) {
        Function0 function0;
        int iF = x4Var.F() | this.f5680m;
        int i11 = iF & 4096;
        if (i11 != 0) {
            this.f5678k = x4Var.b0();
        }
        boolean z10 = false;
        boolean z11 = this.f5679l.v() && !this.f5672e.e();
        if ((iF & 1) != 0) {
            this.f5679l.b(x4Var.t());
        }
        if ((iF & 2) != 0) {
            this.f5679l.h(x4Var.A());
        }
        if ((iF & 4) != 0) {
            this.f5679l.setAlpha(x4Var.n());
        }
        if ((iF & 8) != 0) {
            this.f5679l.j(x4Var.x());
        }
        if ((iF & 16) != 0) {
            this.f5679l.a(x4Var.w());
        }
        if ((iF & 32) != 0) {
            this.f5679l.r(x4Var.L());
        }
        if ((iF & 64) != 0) {
            this.f5679l.D(androidx.compose.ui.graphics.w1.j(x4Var.v()));
        }
        if ((iF & 128) != 0) {
            this.f5679l.G(androidx.compose.ui.graphics.w1.j(x4Var.O()));
        }
        if ((iF & 1024) != 0) {
            this.f5679l.g(x4Var.o());
        }
        if ((iF & 256) != 0) {
            this.f5679l.e(x4Var.y());
        }
        if ((iF & 512) != 0) {
            this.f5679l.f(x4Var.m());
        }
        if ((iF & 2048) != 0) {
            this.f5679l.d(x4Var.q());
        }
        if (i11 != 0) {
            this.f5679l.A(e5.d(this.f5678k) * this.f5679l.getWidth());
            this.f5679l.B(e5.e(this.f5678k) * this.f5679l.getHeight());
        }
        boolean z12 = x4Var.z() && x4Var.M() != v4.a();
        if ((iF & 24576) != 0) {
            this.f5679l.E(z12);
            this.f5679l.p(x4Var.z() && x4Var.M() == v4.a());
        }
        if ((131072 & iF) != 0) {
            t0 t0Var = this.f5679l;
            x4Var.I();
            t0Var.c(null);
        }
        if ((32768 & iF) != 0) {
            this.f5679l.l(x4Var.B());
        }
        boolean zH = this.f5672e.h(x4Var.G(), x4Var.n(), z12, x4Var.L(), x4Var.i());
        if (this.f5672e.c()) {
            this.f5679l.C(this.f5672e.b());
        }
        if (z12 && !this.f5672e.e()) {
            z10 = true;
        }
        if (z11 != z10 || (z10 && zH)) {
            invalidate();
        } else {
            c();
        }
        if (!this.f5674g && this.f5679l.H() > 0.0f && (function0 = this.f5670c) != null) {
            function0.invoke();
        }
        if ((iF & 7963) != 0) {
            this.f5676i.c();
        }
        this.f5680m = x4Var.F();
    }
}
