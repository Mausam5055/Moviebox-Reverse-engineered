package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.os.Build;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import android.view.View;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.n1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e implements GraphicsLayerImpl {
    private static boolean G;
    private float A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n1 f4567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z.a f4568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RenderNode f4569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f4571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Matrix f4572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f4573i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f4574j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f4575k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f4576l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private v1 f4577m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f4578n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4579o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f4580p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f4581q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f4582r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f4583s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f4584t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f4585u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f4586v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f4587w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f4588x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f4589y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f4590z;
    public static final a F = new a(null);
    private static final AtomicBoolean H = new AtomicBoolean(true);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public e(View view, long j11, n1 n1Var, z.a aVar) {
        this.f4566b = j11;
        this.f4567c = n1Var;
        this.f4568d = aVar;
        RenderNode renderNodeCreate = RenderNode.create("Compose", view);
        this.f4569e = renderNodeCreate;
        o0.t.a aVar2 = o0.t.f70624b;
        this.f4570f = aVar2.a();
        this.f4574j = aVar2.a();
        if (H.getAndSet(false)) {
            renderNodeCreate.setScaleX(renderNodeCreate.getScaleX());
            renderNodeCreate.setScaleY(renderNodeCreate.getScaleY());
            renderNodeCreate.setTranslationX(renderNodeCreate.getTranslationX());
            renderNodeCreate.setTranslationY(renderNodeCreate.getTranslationY());
            renderNodeCreate.setElevation(renderNodeCreate.getElevation());
            renderNodeCreate.setRotation(renderNodeCreate.getRotation());
            renderNodeCreate.setRotationX(renderNodeCreate.getRotationX());
            renderNodeCreate.setRotationY(renderNodeCreate.getRotationY());
            renderNodeCreate.setCameraDistance(renderNodeCreate.getCameraDistance());
            renderNodeCreate.setPivotX(renderNodeCreate.getPivotX());
            renderNodeCreate.setPivotY(renderNodeCreate.getPivotY());
            renderNodeCreate.setClipToOutline(renderNodeCreate.getClipToOutline());
            renderNodeCreate.setClipToBounds(false);
            renderNodeCreate.setAlpha(renderNodeCreate.getAlpha());
            renderNodeCreate.isValid();
            renderNodeCreate.setLeftTopRightBottom(0, 0, 0, 0);
            renderNodeCreate.offsetLeftAndRight(0);
            renderNodeCreate.offsetTopAndBottom(0);
            S(renderNodeCreate);
            O();
            renderNodeCreate.setLayerType(0);
            renderNodeCreate.setHasOverlappingRendering(renderNodeCreate.hasOverlappingRendering());
        }
        if (G) {
            throw new NoClassDefFoundError();
        }
        renderNodeCreate.setClipToBounds(false);
        b.a aVar3 = b.f4512a;
        N(aVar3.a());
        this.f4575k = aVar3.a();
        this.f4576l = c1.f4292a.B();
        this.f4578n = 1.0f;
        this.f4580p = y.g.f78470b.b();
        this.f4581q = 1.0f;
        this.f4582r = 1.0f;
        u1.a aVar4 = u1.f4658b;
        this.f4586v = aVar4.a();
        this.f4587w = aVar4.a();
        this.A = 8.0f;
        this.E = true;
    }

    public /* synthetic */ e(View view, long j11, n1 n1Var, z.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, j11, (i11 & 4) != 0 ? new n1() : n1Var, (i11 & 8) != 0 ? new z.a() : aVar);
    }

    private final void M() {
        boolean z10 = false;
        boolean z11 = P() && !this.f4573i;
        if (P() && this.f4573i) {
            z10 = true;
        }
        if (z11 != this.C) {
            this.C = z11;
            this.f4569e.setClipToBounds(z11);
        }
        if (z10 != this.D) {
            this.D = z10;
            this.f4569e.setClipToOutline(z10);
        }
    }

    private final void N(int i11) {
        RenderNode renderNode = this.f4569e;
        b.a aVar = b.f4512a;
        if (b.e(i11, aVar.c())) {
            renderNode.setLayerType(2);
            renderNode.setLayerPaint(this.f4571g);
            renderNode.setHasOverlappingRendering(true);
        } else if (b.e(i11, aVar.b())) {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f4571g);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f4571g);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    private final boolean Q() {
        return (!b.e(z(), b.f4512a.c()) && c1.E(l(), c1.f4292a.B()) && i() == null) ? false : true;
    }

    private final void R() {
        if (Q()) {
            N(b.f4512a.c());
        } else {
            N(z());
        }
    }

    private final void S(RenderNode renderNode) {
        if (Build.VERSION.SDK_INT >= 28) {
            p0 p0Var = p0.f4600a;
            p0Var.c(renderNode, p0Var.a(renderNode));
            p0Var.d(renderNode, p0Var.b(renderNode));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float A() {
        return this.f4582r;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void B(int i11, int i12, long j11) {
        this.f4569e.setLeftTopRightBottom(i11, i12, o0.t.g(j11) + i11, o0.t.f(j11) + i12);
        if (o0.t.e(this.f4570f, j11)) {
            return;
        }
        if (this.f4579o) {
            this.f4569e.setPivotX(o0.t.g(j11) / 2.0f);
            this.f4569e.setPivotY(o0.t.f(j11) / 2.0f);
        }
        this.f4570f = j11;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public long C() {
        return this.f4586v;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public long D() {
        return this.f4587w;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public Matrix E() {
        Matrix matrix = this.f4572h;
        if (matrix == null) {
            matrix = new Matrix();
            this.f4572h = matrix;
        }
        this.f4569e.getMatrix(matrix);
        return matrix;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void F(boolean z10) {
        this.E = z10;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void G(Outline outline, long j11) {
        this.f4574j = j11;
        this.f4569e.setOutline(outline);
        this.f4573i = outline != null;
        M();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void H(long j11) {
        this.f4580p = j11;
        if (y.h.d(j11)) {
            this.f4579o = true;
            this.f4569e.setPivotX(o0.t.g(this.f4570f) / 2.0f);
            this.f4569e.setPivotY(o0.t.f(this.f4570f) / 2.0f);
        } else {
            this.f4579o = false;
            this.f4569e.setPivotX(y.g.m(j11));
            this.f4569e.setPivotY(y.g.n(j11));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        Canvas canvasStart = this.f4569e.start(Math.max(o0.t.g(this.f4570f), o0.t.g(this.f4574j)), Math.max(o0.t.f(this.f4570f), o0.t.f(this.f4574j)));
        try {
            n1 n1Var = this.f4567c;
            Canvas canvasV = n1Var.a().v();
            n1Var.a().w(canvasStart);
            androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
            z.a aVar = this.f4568d;
            long jD = o0.u.d(this.f4570f);
            o0.e density = aVar.H0().getDensity();
            LayoutDirection layoutDirection2 = aVar.H0().getLayoutDirection();
            m1 m1VarE = aVar.H0().e();
            long jI = aVar.H0().i();
            GraphicsLayer graphicsLayerG = aVar.H0().g();
            z.d dVarH0 = aVar.H0();
            dVarH0.b(eVar);
            dVarH0.a(layoutDirection);
            dVarH0.h(g0VarA);
            dVarH0.f(jD);
            dVarH0.d(graphicsLayer);
            g0VarA.n();
            try {
                function1.invoke(aVar);
                g0VarA.j();
                z.d dVarH1 = aVar.H0();
                dVarH1.b(density);
                dVarH1.a(layoutDirection2);
                dVarH1.h(m1VarE);
                dVarH1.f(jI);
                dVarH1.d(graphicsLayerG);
                n1Var.a().w(canvasV);
                this.f4569e.end(canvasStart);
                F(false);
            } catch (Throwable th2) {
                g0VarA.j();
                z.d dVarH2 = aVar.H0();
                dVarH2.b(density);
                dVarH2.a(layoutDirection2);
                dVarH2.h(m1VarE);
                dVarH2.f(jI);
                dVarH2.d(graphicsLayerG);
                throw th2;
            }
        } catch (Throwable th3) {
            this.f4569e.end(canvasStart);
            throw th3;
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void J(int i11) {
        this.f4575k = i11;
        R();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float K() {
        return this.f4585u;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void L(m1 m1Var) {
        DisplayListCanvas displayListCanvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        Intrinsics.f(displayListCanvasD, "null cannot be cast to non-null type android.view.DisplayListCanvas");
        displayListCanvasD.drawRenderNode(this.f4569e);
    }

    public final void O() {
        if (Build.VERSION.SDK_INT >= 24) {
            o0.f4599a.a(this.f4569e);
        } else {
            n0.f4598a.a(this.f4569e);
        }
    }

    public boolean P() {
        return this.B;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void a(float f11) {
        this.f4584t = f11;
        this.f4569e.setTranslationY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void b(float f11) {
        this.f4581q = f11;
        this.f4569e.setScaleX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void c(w4 w4Var) {
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void d(float f11) {
        this.A = f11;
        this.f4569e.setCameraDistance(-f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void e(float f11) {
        this.f4588x = f11;
        this.f4569e.setRotationX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void f(float f11) {
        this.f4589y = f11;
        this.f4569e.setRotationY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void g(float f11) {
        this.f4590z = f11;
        this.f4569e.setRotation(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float getAlpha() {
        return this.f4578n;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void h(float f11) {
        this.f4582r = f11;
        this.f4569e.setScaleY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public v1 i() {
        return this.f4577m;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void j(float f11) {
        this.f4583s = f11;
        this.f4569e.setTranslationX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void k() {
        O();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public int l() {
        return this.f4576l;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float m() {
        return this.f4589y;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public boolean n() {
        return this.f4569e.isValid();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float o() {
        return this.f4590z;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void p(long j11) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4586v = j11;
            p0.f4600a.c(this.f4569e, w1.j(j11));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float q() {
        return this.A;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void r(boolean z10) {
        this.B = z10;
        M();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void s(long j11) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4587w = j11;
            p0.f4600a.d(this.f4569e, w1.j(j11));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void setAlpha(float f11) {
        this.f4578n = f11;
        this.f4569e.setAlpha(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float t() {
        return this.f4581q;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void u(float f11) {
        this.f4585u = f11;
        this.f4569e.setElevation(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public w4 v() {
        return null;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float w() {
        return this.f4584t;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float x() {
        return this.f4583s;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float y() {
        return this.f4588x;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public int z() {
        return this.f4575k;
    }
}
