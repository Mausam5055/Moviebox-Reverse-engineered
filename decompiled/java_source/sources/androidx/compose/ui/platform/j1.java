package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.os.Build;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.w3;
import androidx.compose.ui.graphics.w4;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j1 implements t0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f5827k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AndroidComposeView f5829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RenderNode f5830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5834f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f5835g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5836h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f5825i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f5826j = 8;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f5828l = true;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public j1(AndroidComposeView androidComposeView) {
        this.f5829a = androidComposeView;
        RenderNode renderNodeCreate = RenderNode.create("Compose", androidComposeView);
        this.f5830b = renderNodeCreate;
        this.f5831c = w3.f4874a.a();
        if (f5828l) {
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
            N(renderNodeCreate);
            I();
            renderNodeCreate.setLayerType(0);
            renderNodeCreate.setHasOverlappingRendering(renderNodeCreate.hasOverlappingRendering());
            f5828l = false;
        }
        if (f5827k) {
            throw new NoClassDefFoundError();
        }
    }

    private final void I() {
        if (Build.VERSION.SDK_INT >= 24) {
            z1.f5891a.a(this.f5830b);
        } else {
            y1.f5883a.a(this.f5830b);
        }
    }

    private final void N(RenderNode renderNode) {
        if (Build.VERSION.SDK_INT >= 28) {
            a2 a2Var = a2.f5730a;
            a2Var.c(renderNode, a2Var.a(renderNode));
            a2Var.d(renderNode, a2Var.b(renderNode));
        }
    }

    @Override // androidx.compose.ui.platform.t0
    public void A(float f11) {
        this.f5830b.setPivotX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void B(float f11) {
        this.f5830b.setPivotY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void C(Outline outline) {
        this.f5830b.setOutline(outline);
    }

    @Override // androidx.compose.ui.platform.t0
    public void D(int i11) {
        if (Build.VERSION.SDK_INT >= 28) {
            a2.f5730a.c(this.f5830b, i11);
        }
    }

    @Override // androidx.compose.ui.platform.t0
    public void E(boolean z10) {
        this.f5830b.setClipToOutline(z10);
    }

    @Override // androidx.compose.ui.platform.t0
    public void F(androidx.compose.ui.graphics.n1 n1Var, Path path, Function1 function1) {
        DisplayListCanvas displayListCanvasStart = this.f5830b.start(getWidth(), getHeight());
        Canvas canvasV = n1Var.a().v();
        n1Var.a().w((Canvas) displayListCanvasStart);
        androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
        if (path != null) {
            g0VarA.n();
            androidx.compose.ui.graphics.l1.c(g0VarA, path, 0, 2, null);
        }
        function1.invoke(g0VarA);
        if (path != null) {
            g0VarA.j();
        }
        n1Var.a().w(canvasV);
        this.f5830b.end(displayListCanvasStart);
    }

    @Override // androidx.compose.ui.platform.t0
    public void G(int i11) {
        if (Build.VERSION.SDK_INT >= 28) {
            a2.f5730a.d(this.f5830b, i11);
        }
    }

    @Override // androidx.compose.ui.platform.t0
    public float H() {
        return this.f5830b.getElevation();
    }

    public void J(int i11) {
        this.f5835g = i11;
    }

    public void K(int i11) {
        this.f5832d = i11;
    }

    public void L(int i11) {
        this.f5834f = i11;
    }

    public void M(int i11) {
        this.f5833e = i11;
    }

    @Override // androidx.compose.ui.platform.t0
    public void a(float f11) {
        this.f5830b.setTranslationY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void b(float f11) {
        this.f5830b.setScaleX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void c(w4 w4Var) {
    }

    @Override // androidx.compose.ui.platform.t0
    public void d(float f11) {
        this.f5830b.setCameraDistance(-f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void e(float f11) {
        this.f5830b.setRotationX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void f(float f11) {
        this.f5830b.setRotationY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void g(float f11) {
        this.f5830b.setRotation(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public float getAlpha() {
        return this.f5830b.getAlpha();
    }

    @Override // androidx.compose.ui.platform.t0
    public int getHeight() {
        return z() - u();
    }

    @Override // androidx.compose.ui.platform.t0
    public int getWidth() {
        return m() - i();
    }

    @Override // androidx.compose.ui.platform.t0
    public void h(float f11) {
        this.f5830b.setScaleY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public int i() {
        return this.f5832d;
    }

    @Override // androidx.compose.ui.platform.t0
    public void j(float f11) {
        this.f5830b.setTranslationX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void k() {
        I();
    }

    @Override // androidx.compose.ui.platform.t0
    public void l(int i11) {
        w3.a aVar = w3.f4874a;
        if (w3.e(i11, aVar.c())) {
            this.f5830b.setLayerType(2);
            this.f5830b.setHasOverlappingRendering(true);
        } else if (w3.e(i11, aVar.b())) {
            this.f5830b.setLayerType(0);
            this.f5830b.setHasOverlappingRendering(false);
        } else {
            this.f5830b.setLayerType(0);
            this.f5830b.setHasOverlappingRendering(true);
        }
        this.f5831c = i11;
    }

    @Override // androidx.compose.ui.platform.t0
    public int m() {
        return this.f5834f;
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean n() {
        return this.f5830b.isValid();
    }

    @Override // androidx.compose.ui.platform.t0
    public void o(Canvas canvas) {
        Intrinsics.f(canvas, "null cannot be cast to non-null type android.view.DisplayListCanvas");
        ((DisplayListCanvas) canvas).drawRenderNode(this.f5830b);
    }

    @Override // androidx.compose.ui.platform.t0
    public void p(boolean z10) {
        this.f5836h = z10;
        this.f5830b.setClipToBounds(z10);
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean q(int i11, int i12, int i13, int i14) {
        K(i11);
        M(i12);
        L(i13);
        J(i14);
        return this.f5830b.setLeftTopRightBottom(i11, i12, i13, i14);
    }

    @Override // androidx.compose.ui.platform.t0
    public void r(float f11) {
        this.f5830b.setElevation(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void s(int i11) {
        M(u() + i11);
        J(z() + i11);
        this.f5830b.offsetTopAndBottom(i11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void setAlpha(float f11) {
        this.f5830b.setAlpha(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean t() {
        return this.f5836h;
    }

    @Override // androidx.compose.ui.platform.t0
    public int u() {
        return this.f5833e;
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean v() {
        return this.f5830b.getClipToOutline();
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean w(boolean z10) {
        return this.f5830b.setHasOverlappingRendering(z10);
    }

    @Override // androidx.compose.ui.platform.t0
    public void x(Matrix matrix) {
        this.f5830b.getMatrix(matrix);
    }

    @Override // androidx.compose.ui.platform.t0
    public void y(int i11) {
        K(i() + i11);
        L(m() + i11);
        this.f5830b.offsetLeftAndRight(i11);
    }

    @Override // androidx.compose.ui.platform.t0
    public int z() {
        return this.f5835g;
    }
}
