package androidx.compose.ui.graphics.layer;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.n1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class d0 implements GraphicsLayerImpl {
    public static final b J = new b(null);
    private static final boolean K = !r0.f4602a.a();
    private static final Canvas L = new a();
    private float A;
    private float B;
    private float C;
    private float D;
    private long E;
    private long F;
    private float G;
    private float H;
    private float I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DrawChildContainer f4541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f4542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n1 f4543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ViewLayer f4544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Resources f4545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Rect f4546g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f4547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Picture f4548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final z.a f4549j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final n1 f4550k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f4551l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f4552m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f4553n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4554o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f4555p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f4556q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f4557r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final long f4558s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f4559t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private v1 f4560u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f4561v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f4562w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f4563x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f4564y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f4565z;

    public static final class a extends Canvas {
        a() {
        }

        @Override // android.graphics.Canvas
        public boolean isHardwareAccelerated() {
            return true;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d0(DrawChildContainer drawChildContainer, long j11, n1 n1Var, z.a aVar) {
        this.f4541b = drawChildContainer;
        this.f4542c = j11;
        this.f4543d = n1Var;
        ViewLayer viewLayer = new ViewLayer(drawChildContainer, n1Var, aVar);
        this.f4544e = viewLayer;
        this.f4545f = drawChildContainer.getResources();
        this.f4546g = new Rect();
        boolean z10 = K;
        this.f4548i = z10 ? new Picture() : null;
        this.f4549j = z10 ? new z.a() : null;
        this.f4550k = z10 ? new n1() : null;
        drawChildContainer.addView(viewLayer);
        viewLayer.setClipBounds(null);
        this.f4553n = o0.t.f70624b.a();
        this.f4555p = true;
        this.f4558s = View.generateViewId();
        this.f4559t = c1.f4292a.B();
        this.f4561v = androidx.compose.ui.graphics.layer.b.f4512a.a();
        this.f4562w = 1.0f;
        this.f4564y = y.g.f78470b.c();
        this.f4565z = 1.0f;
        this.A = 1.0f;
        u1.a aVar2 = u1.f4658b;
        this.E = aVar2.a();
        this.F = aVar2.a();
    }

    public /* synthetic */ d0(DrawChildContainer drawChildContainer, long j11, n1 n1Var, z.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(drawChildContainer, j11, (i11 & 4) != 0 ? new n1() : n1Var, (i11 & 8) != 0 ? new z.a() : aVar);
    }

    private final void M(int i11) {
        ViewLayer viewLayer = this.f4544e;
        androidx.compose.ui.graphics.layer.b.a aVar = androidx.compose.ui.graphics.layer.b.f4512a;
        boolean z10 = true;
        if (androidx.compose.ui.graphics.layer.b.e(i11, aVar.c())) {
            this.f4544e.setLayerType(2, this.f4547h);
        } else if (androidx.compose.ui.graphics.layer.b.e(i11, aVar.b())) {
            this.f4544e.setLayerType(0, this.f4547h);
            z10 = false;
        } else {
            this.f4544e.setLayerType(0, this.f4547h);
        }
        viewLayer.setCanUseCompositingLayer$ui_graphics_release(z10);
    }

    private final void O() {
        try {
            n1 n1Var = this.f4543d;
            Canvas canvas = L;
            Canvas canvasV = n1Var.a().v();
            n1Var.a().w(canvas);
            androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
            DrawChildContainer drawChildContainer = this.f4541b;
            ViewLayer viewLayer = this.f4544e;
            drawChildContainer.drawChild$ui_graphics_release(g0VarA, viewLayer, viewLayer.getDrawingTime());
            n1Var.a().w(canvasV);
        } catch (Throwable unused) {
        }
    }

    private final boolean P() {
        return androidx.compose.ui.graphics.layer.b.e(z(), androidx.compose.ui.graphics.layer.b.f4512a.c()) || Q();
    }

    private final boolean Q() {
        return (c1.E(l(), c1.f4292a.B()) && i() == null) ? false : true;
    }

    private final void R() {
        Rect rect;
        if (this.f4554o) {
            ViewLayer viewLayer = this.f4544e;
            if (!N() || this.f4556q) {
                rect = null;
            } else {
                rect = this.f4546g;
                rect.left = 0;
                rect.top = 0;
                rect.right = this.f4544e.getWidth();
                rect.bottom = this.f4544e.getHeight();
            }
            viewLayer.setClipBounds(rect);
        }
    }

    private final void S() {
        if (P()) {
            M(androidx.compose.ui.graphics.layer.b.f4512a.c());
        } else {
            M(z());
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float A() {
        return this.A;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void B(int i11, int i12, long j11) {
        if (o0.t.e(this.f4553n, j11)) {
            int i13 = this.f4551l;
            if (i13 != i11) {
                this.f4544e.offsetLeftAndRight(i11 - i13);
            }
            int i14 = this.f4552m;
            if (i14 != i12) {
                this.f4544e.offsetTopAndBottom(i12 - i14);
            }
        } else {
            if (N()) {
                this.f4554o = true;
            }
            this.f4544e.layout(i11, i12, o0.t.g(j11) + i11, o0.t.f(j11) + i12);
            this.f4553n = j11;
            if (this.f4563x) {
                this.f4544e.setPivotX(o0.t.g(j11) / 2.0f);
                this.f4544e.setPivotY(o0.t.f(j11) / 2.0f);
            }
        }
        this.f4551l = i11;
        this.f4552m = i12;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public long C() {
        return this.E;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public long D() {
        return this.F;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public Matrix E() {
        return this.f4544e.getMatrix();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void F(boolean z10) {
        this.f4555p = z10;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void G(Outline outline, long j11) {
        boolean layerOutline = this.f4544e.setLayerOutline(outline);
        if (N() && outline != null) {
            this.f4544e.setClipToOutline(true);
            if (this.f4557r) {
                this.f4557r = false;
                this.f4554o = true;
            }
        }
        this.f4556q = outline != null;
        if (layerOutline) {
            return;
        }
        this.f4544e.invalidate();
        O();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void H(long j11) {
        this.f4564y = j11;
        if (!y.h.d(j11)) {
            this.f4563x = false;
            this.f4544e.setPivotX(y.g.m(j11));
            this.f4544e.setPivotY(y.g.n(j11));
        } else {
            if (Build.VERSION.SDK_INT >= 28) {
                v0.f4603a.a(this.f4544e);
                return;
            }
            this.f4563x = true;
            this.f4544e.setPivotX(o0.t.g(this.f4553n) / 2.0f);
            this.f4544e.setPivotY(o0.t.f(this.f4553n) / 2.0f);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        if (this.f4544e.getParent() == null) {
            this.f4541b.addView(this.f4544e);
        }
        this.f4544e.setDrawParams(eVar, layoutDirection, graphicsLayer, function1);
        if (this.f4544e.isAttachedToWindow()) {
            this.f4544e.setVisibility(4);
            this.f4544e.setVisibility(0);
            O();
            Picture picture = this.f4548i;
            if (picture != null) {
                Canvas canvasBeginRecording = picture.beginRecording(o0.t.g(this.f4553n), o0.t.f(this.f4553n));
                try {
                    n1 n1Var = this.f4550k;
                    if (n1Var != null) {
                        Canvas canvasV = n1Var.a().v();
                        n1Var.a().w(canvasBeginRecording);
                        androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
                        z.a aVar = this.f4549j;
                        if (aVar != null) {
                            long jD = o0.u.d(this.f4553n);
                            z.a.C0973a c0973aF = aVar.F();
                            o0.e eVarA = c0973aF.a();
                            LayoutDirection layoutDirectionB = c0973aF.b();
                            m1 m1VarC = c0973aF.c();
                            long jD2 = c0973aF.d();
                            z.a.C0973a c0973aF2 = aVar.F();
                            c0973aF2.j(eVar);
                            c0973aF2.k(layoutDirection);
                            c0973aF2.i(g0VarA);
                            c0973aF2.l(jD);
                            g0VarA.n();
                            function1.invoke(aVar);
                            g0VarA.j();
                            z.a.C0973a c0973aF3 = aVar.F();
                            c0973aF3.j(eVarA);
                            c0973aF3.k(layoutDirectionB);
                            c0973aF3.i(m1VarC);
                            c0973aF3.l(jD2);
                        }
                        n1Var.a().w(canvasV);
                        Unit unit = Unit.f67061a;
                    }
                } finally {
                    picture.endRecording();
                }
            }
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void J(int i11) {
        this.f4561v = i11;
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float K() {
        return this.D;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void L(m1 m1Var) {
        R();
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (canvasD.isHardwareAccelerated()) {
            DrawChildContainer drawChildContainer = this.f4541b;
            ViewLayer viewLayer = this.f4544e;
            drawChildContainer.drawChild$ui_graphics_release(m1Var, viewLayer, viewLayer.getDrawingTime());
        } else {
            Picture picture = this.f4548i;
            if (picture != null) {
                canvasD.drawPicture(picture);
            }
        }
    }

    public boolean N() {
        return this.f4557r || this.f4544e.getClipToOutline();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void a(float f11) {
        this.C = f11;
        this.f4544e.setTranslationY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void b(float f11) {
        this.f4565z = f11;
        this.f4544e.setScaleX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void c(w4 w4Var) {
        if (Build.VERSION.SDK_INT >= 31) {
            x0.f4605a.a(this.f4544e, w4Var);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void d(float f11) {
        this.f4544e.setCameraDistance(f11 * this.f4545f.getDisplayMetrics().densityDpi);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void e(float f11) {
        this.G = f11;
        this.f4544e.setRotationX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void f(float f11) {
        this.H = f11;
        this.f4544e.setRotationY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void g(float f11) {
        this.I = f11;
        this.f4544e.setRotation(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float getAlpha() {
        return this.f4562w;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void h(float f11) {
        this.A = f11;
        this.f4544e.setScaleY(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public v1 i() {
        return this.f4560u;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void j(float f11) {
        this.B = f11;
        this.f4544e.setTranslationX(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void k() {
        this.f4541b.removeViewInLayout(this.f4544e);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public int l() {
        return this.f4559t;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float m() {
        return this.H;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public /* synthetic */ boolean n() {
        return c.a(this);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float o() {
        return this.I;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void p(long j11) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.E = j11;
            v0.f4603a.b(this.f4544e, w1.j(j11));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float q() {
        return this.f4544e.getCameraDistance() / this.f4545f.getDisplayMetrics().densityDpi;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void r(boolean z10) {
        boolean z11 = false;
        this.f4557r = z10 && !this.f4556q;
        this.f4554o = true;
        ViewLayer viewLayer = this.f4544e;
        if (z10 && this.f4556q) {
            z11 = true;
        }
        viewLayer.setClipToOutline(z11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void s(long j11) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.F = j11;
            v0.f4603a.c(this.f4544e, w1.j(j11));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void setAlpha(float f11) {
        this.f4562w = f11;
        this.f4544e.setAlpha(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float t() {
        return this.f4565z;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public void u(float f11) {
        this.D = f11;
        this.f4544e.setElevation(f11);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public w4 v() {
        return null;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float w() {
        return this.C;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float x() {
        return this.B;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public float y() {
        return this.G;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public int z() {
        return this.f4561v;
    }
}
