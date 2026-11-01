package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.w3;
import androidx.compose.ui.graphics.w4;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class w1 implements t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AndroidComposeView f5870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RenderNode f5871b = androidx.compose.foundation.i.a("Compose");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5872c = w3.f4874a.a();

    public w1(AndroidComposeView androidComposeView) {
        this.f5870a = androidComposeView;
    }

    @Override // androidx.compose.ui.platform.t0
    public void A(float f11) {
        this.f5871b.setPivotX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void B(float f11) {
        this.f5871b.setPivotY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void C(Outline outline) {
        this.f5871b.setOutline(outline);
    }

    @Override // androidx.compose.ui.platform.t0
    public void D(int i11) {
        this.f5871b.setAmbientShadowColor(i11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void E(boolean z10) {
        this.f5871b.setClipToOutline(z10);
    }

    @Override // androidx.compose.ui.platform.t0
    public void F(androidx.compose.ui.graphics.n1 n1Var, Path path, Function1 function1) {
        RecordingCanvas recordingCanvasBeginRecording = this.f5871b.beginRecording();
        Canvas canvasV = n1Var.a().v();
        n1Var.a().w(recordingCanvasBeginRecording);
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
        this.f5871b.endRecording();
    }

    @Override // androidx.compose.ui.platform.t0
    public void G(int i11) {
        this.f5871b.setSpotShadowColor(i11);
    }

    @Override // androidx.compose.ui.platform.t0
    public float H() {
        return this.f5871b.getElevation();
    }

    @Override // androidx.compose.ui.platform.t0
    public void a(float f11) {
        this.f5871b.setTranslationY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void b(float f11) {
        this.f5871b.setScaleX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void c(w4 w4Var) {
        if (Build.VERSION.SDK_INT >= 31) {
            x1.f5879a.a(this.f5871b, w4Var);
        }
    }

    @Override // androidx.compose.ui.platform.t0
    public void d(float f11) {
        this.f5871b.setCameraDistance(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void e(float f11) {
        this.f5871b.setRotationX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void f(float f11) {
        this.f5871b.setRotationY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void g(float f11) {
        this.f5871b.setRotationZ(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public float getAlpha() {
        return this.f5871b.getAlpha();
    }

    @Override // androidx.compose.ui.platform.t0
    public int getHeight() {
        return this.f5871b.getHeight();
    }

    @Override // androidx.compose.ui.platform.t0
    public int getWidth() {
        return this.f5871b.getWidth();
    }

    @Override // androidx.compose.ui.platform.t0
    public void h(float f11) {
        this.f5871b.setScaleY(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public int i() {
        return this.f5871b.getLeft();
    }

    @Override // androidx.compose.ui.platform.t0
    public void j(float f11) {
        this.f5871b.setTranslationX(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void k() {
        this.f5871b.discardDisplayList();
    }

    @Override // androidx.compose.ui.platform.t0
    public void l(int i11) {
        RenderNode renderNode = this.f5871b;
        w3.a aVar = w3.f4874a;
        if (w3.e(i11, aVar.c())) {
            renderNode.setUseCompositingLayer(true, null);
            renderNode.setHasOverlappingRendering(true);
        } else if (w3.e(i11, aVar.b())) {
            renderNode.setUseCompositingLayer(false, null);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, null);
            renderNode.setHasOverlappingRendering(true);
        }
        this.f5872c = i11;
    }

    @Override // androidx.compose.ui.platform.t0
    public int m() {
        return this.f5871b.getRight();
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean n() {
        return this.f5871b.hasDisplayList();
    }

    @Override // androidx.compose.ui.platform.t0
    public void o(Canvas canvas) {
        canvas.drawRenderNode(this.f5871b);
    }

    @Override // androidx.compose.ui.platform.t0
    public void p(boolean z10) {
        this.f5871b.setClipToBounds(z10);
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean q(int i11, int i12, int i13, int i14) {
        return this.f5871b.setPosition(i11, i12, i13, i14);
    }

    @Override // androidx.compose.ui.platform.t0
    public void r(float f11) {
        this.f5871b.setElevation(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void s(int i11) {
        this.f5871b.offsetTopAndBottom(i11);
    }

    @Override // androidx.compose.ui.platform.t0
    public void setAlpha(float f11) {
        this.f5871b.setAlpha(f11);
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean t() {
        return this.f5871b.getClipToBounds();
    }

    @Override // androidx.compose.ui.platform.t0
    public int u() {
        return this.f5871b.getTop();
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean v() {
        return this.f5871b.getClipToOutline();
    }

    @Override // androidx.compose.ui.platform.t0
    public boolean w(boolean z10) {
        return this.f5871b.setHasOverlappingRendering(z10);
    }

    @Override // androidx.compose.ui.platform.t0
    public void x(Matrix matrix) {
        this.f5871b.getMatrix(matrix);
    }

    @Override // androidx.compose.ui.platform.t0
    public void y(int i11) {
        this.f5871b.offsetLeftAndRight(i11);
    }

    @Override // androidx.compose.ui.platform.t0
    public int z() {
        return this.f5871b.getBottom();
    }
}
