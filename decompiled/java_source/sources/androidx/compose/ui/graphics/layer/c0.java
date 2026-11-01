package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.n1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements GraphicsLayerImpl {
    private boolean A;
    private int B;
    private boolean C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n1 f4517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z.a f4518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RenderNode f4519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f4521g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Matrix f4522h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f4523i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f4524j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f4525k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private v1 f4526l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f4527m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f4528n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f4529o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f4530p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f4531q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f4532r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f4533s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f4534t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f4535u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f4536v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f4537w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f4538x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f4539y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f4540z;

    public c0(long j11, n1 n1Var, z.a aVar) {
        this.f4516b = j11;
        this.f4517c = n1Var;
        this.f4518d = aVar;
        RenderNode renderNodeA = androidx.compose.foundation.i.a("graphicsLayer");
        this.f4519e = renderNodeA;
        this.f4520f = y.m.f78491b.b();
        renderNodeA.setClipToBounds(false);
        b.a aVar2 = b.f4512a;
        N(renderNodeA, aVar2.a());
        this.f4524j = 1.0f;
        this.f4525k = c1.f4292a.B();
        this.f4527m = y.g.f78470b.b();
        this.f4528n = 1.0f;
        this.f4529o = 1.0f;
        u1.a aVar3 = u1.f4658b;
        this.f4533s = aVar3.a();
        this.f4534t = aVar3.a();
        this.f4538x = 8.0f;
        this.B = aVar2.a();
        this.C = true;
    }

    public /* synthetic */ c0(long j11, n1 n1Var, z.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, (i11 & 2) != 0 ? new n1() : n1Var, (i11 & 4) != 0 ? new z.a() : aVar);
    }

    private final void M() {
        boolean z10 = false;
        boolean z11 = O() && !this.f4523i;
        if (O() && this.f4523i) {
            z10 = true;
        }
        if (z11 != this.f4540z) {
            this.f4540z = z11;
            this.f4519e.setClipToBounds(z11);
        }
        if (z10 != this.A) {
            this.A = z10;
            this.f4519e.setClipToOutline(z10);
        }
    }

    private final void N(RenderNode renderNode, int i11) {
        b.a aVar = b.f4512a;
        if (b.e(i11, aVar.c())) {
            renderNode.setUseCompositingLayer(true, this.f4521g);
            renderNode.setHasOverlappingRendering(true);
        } else if (b.e(i11, aVar.b())) {
            renderNode.setUseCompositingLayer(false, this.f4521g);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, this.f4521g);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    private final boolean P() {
        if (b.e(z(), b.f4512a.c()) || Q()) {
            return true;
        }
        v();
        return false;
    }

    private final boolean Q() {
        return (c1.E(l(), c1.f4292a.B()) && i() == null) ? false : true;
    }

    private final void R() {
        if (P()) {
            N(this.f4519e, b.f4512a.c());
        } else {
            N(this.f4519e, z());
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float A() {
        return this.f4529o;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void B(int i11, int i12, long j11) {
        this.f4519e.setPosition(i11, i12, o0.t.g(j11) + i11, o0.t.f(j11) + i12);
        this.f4520f = o0.u.d(j11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public long C() {
        return this.f4533s;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public long D() {
        return this.f4534t;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public Matrix E() {
        Matrix matrix = this.f4522h;
        if (matrix == null) {
            matrix = new Matrix();
            this.f4522h = matrix;
        }
        this.f4519e.getMatrix(matrix);
        return matrix;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void F(boolean z10) {
        this.C = z10;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void G(Outline outline, long j11) {
        this.f4519e.setOutline(outline);
        this.f4523i = outline != null;
        M();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void H(long j11) {
        this.f4527m = j11;
        if (y.h.d(j11)) {
            this.f4519e.resetPivot();
        } else {
            this.f4519e.setPivotX(y.g.m(j11));
            this.f4519e.setPivotY(y.g.n(j11));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        RecordingCanvas recordingCanvasBeginRecording = this.f4519e.beginRecording();
        try {
            n1 n1Var = this.f4517c;
            Canvas canvasV = n1Var.a().v();
            n1Var.a().w(recordingCanvasBeginRecording);
            androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
            z.d dVarH0 = this.f4518d.H0();
            dVarH0.b(eVar);
            dVarH0.a(layoutDirection);
            dVarH0.d(graphicsLayer);
            dVarH0.f(this.f4520f);
            dVarH0.h(g0VarA);
            function1.invoke(this.f4518d);
            n1Var.a().w(canvasV);
            this.f4519e.endRecording();
            F(false);
        } catch (Throwable th2) {
            this.f4519e.endRecording();
            throw th2;
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void J(int i11) {
        this.B = i11;
        R();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float K() {
        return this.f4532r;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void L(m1 m1Var) {
        androidx.compose.ui.graphics.h0.d(m1Var).drawRenderNode(this.f4519e);
    }

    public boolean O() {
        return this.f4539y;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void a(float f11) {
        this.f4531q = f11;
        this.f4519e.setTranslationY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void b(float f11) {
        this.f4528n = f11;
        this.f4519e.setScaleX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void c(w4 w4Var) {
        if (Build.VERSION.SDK_INT >= 31) {
            q0.f4601a.a(this.f4519e, w4Var);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void d(float f11) {
        this.f4538x = f11;
        this.f4519e.setCameraDistance(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void e(float f11) {
        this.f4535u = f11;
        this.f4519e.setRotationX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void f(float f11) {
        this.f4536v = f11;
        this.f4519e.setRotationY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void g(float f11) {
        this.f4537w = f11;
        this.f4519e.setRotationZ(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float getAlpha() {
        return this.f4524j;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void h(float f11) {
        this.f4529o = f11;
        this.f4519e.setScaleY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public v1 i() {
        return this.f4526l;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void j(float f11) {
        this.f4530p = f11;
        this.f4519e.setTranslationX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void k() {
        this.f4519e.discardDisplayList();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public int l() {
        return this.f4525k;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float m() {
        return this.f4536v;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public boolean n() {
        return this.f4519e.hasDisplayList();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float o() {
        return this.f4537w;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void p(long j11) {
        this.f4533s = j11;
        this.f4519e.setAmbientShadowColor(w1.j(j11));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float q() {
        return this.f4538x;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void r(boolean z10) {
        this.f4539y = z10;
        M();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void s(long j11) {
        this.f4534t = j11;
        this.f4519e.setSpotShadowColor(w1.j(j11));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void setAlpha(float f11) {
        this.f4524j = f11;
        this.f4519e.setAlpha(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float t() {
        return this.f4528n;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void u(float f11) {
        this.f4532r = f11;
        this.f4519e.setElevation(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public w4 v() {
        return null;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float w() {
        return this.f4531q;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float x() {
        return this.f4530p;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float y() {
        return this.f4535u;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public int z() {
        return this.B;
    }
}
