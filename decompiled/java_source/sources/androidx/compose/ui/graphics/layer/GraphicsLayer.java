package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.l1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class GraphicsLayer {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final a f4468x = new a(null);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final f0 f4469y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GraphicsLayerImpl f4470a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Outline f4475f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f4477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f4478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f4479j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private k4 f4480k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Path f4481l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Path f4482m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f4483n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private m4 f4484o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f4485p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.compose.ui.graphics.layer.a f4486q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f4487r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f4488s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f4489t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f4490u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f4491v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private RectF f4492w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o0.e f4471b = z.e.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutDirection f4472c = LayoutDirection.Ltr;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function1 f4473d = new Function1<z.g, Unit>() { // from class: androidx.compose.ui.graphics.layer.GraphicsLayer$drawBlock$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((z.g) obj);
            return Unit.f67061a;
        }

        public final void invoke(z.g gVar) {
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f4474e = new Function1<z.g, Unit>() { // from class: androidx.compose.ui.graphics.layer.GraphicsLayer$clipDrawBlock$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((z.g) obj);
            return Unit.f67061a;
        }

        public final void invoke(z.g gVar) {
            Path path = this.this$0.f4481l;
            if (!this.this$0.f4483n || !this.this$0.k() || path == null) {
                this.this$0.f4473d.invoke(gVar);
                return;
            }
            Function1 function1 = this.this$0.f4473d;
            int iB = t1.f4647a.b();
            z.d dVarH0 = gVar.H0();
            long jI = dVarH0.i();
            dVarH0.e().n();
            try {
                dVarH0.c().b(path, iB);
                function1.invoke(gVar);
            } finally {
                dVarH0.e().j();
                dVarH0.f(jI);
            }
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4476g = true;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        f0 f0Var;
        if (e0.f4591a.a()) {
            f0Var = g0.f4593a;
        } else if (Build.VERSION.SDK_INT >= 28) {
            f0Var = i0.f4595a;
        } else {
            f0Var = r0.f4602a.a() ? h0.f4594a : g0.f4593a;
        }
        f4469y = f0Var;
    }

    public GraphicsLayer(GraphicsLayerImpl graphicsLayerImpl, e0 e0Var) {
        this.f4470a = graphicsLayerImpl;
        y.g.a aVar = y.g.f78470b;
        this.f4477h = aVar.c();
        this.f4478i = y.m.f78491b.a();
        this.f4486q = new androidx.compose.ui.graphics.layer.a();
        graphicsLayerImpl.r(false);
        this.f4488s = o0.p.f70615b.a();
        this.f4489t = o0.t.f70624b.a();
        this.f4490u = aVar.b();
    }

    private final Outline A() {
        Outline outline = this.f4475f;
        if (outline != null) {
            return outline;
        }
        Outline outline2 = new Outline();
        this.f4475f = outline2;
        return outline2;
    }

    private final RectF B() {
        RectF rectF = this.f4492w;
        if (rectF != null) {
            return rectF;
        }
        RectF rectF2 = new RectF();
        this.f4492w = rectF2;
        return rectF2;
    }

    private final void C() {
        this.f4485p++;
    }

    private final void D() {
        this.f4485p--;
        f();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0091 A[LOOP:0: B:20:0x005a->B:30:0x0091, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x0094 A[EDGE_INSN: B:34:0x0094->B:31:0x0094 BREAK  A[LOOP:0: B:20:0x005a->B:30:0x0091], SYNTHETIC] */
    private final void F() {
        androidx.compose.ui.graphics.layer.a aVar = this.f4486q;
        aVar.f4508b = aVar.f4507a;
        MutableScatterSet mutableScatterSet = aVar.f4509c;
        if (mutableScatterSet != null && mutableScatterSet.e()) {
            MutableScatterSet mutableScatterSetA = aVar.f4510d;
            if (mutableScatterSetA == null) {
                mutableScatterSetA = androidx.collection.w0.a();
                aVar.f4510d = mutableScatterSetA;
            }
            mutableScatterSetA.i(mutableScatterSet);
            mutableScatterSet.m();
        }
        aVar.f4511e = true;
        this.f4470a.I(this.f4471b, this.f4472c, this, this.f4474e);
        aVar.f4511e = false;
        GraphicsLayer graphicsLayer = aVar.f4508b;
        if (graphicsLayer != null) {
            graphicsLayer.D();
        }
        MutableScatterSet mutableScatterSet2 = aVar.f4510d;
        if (mutableScatterSet2 == null || !mutableScatterSet2.e()) {
            return;
        }
        Object[] objArr = mutableScatterSet2.f2247b;
        long[] jArr = mutableScatterSet2.f2246a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128) {
                            ((GraphicsLayer) objArr[(i11 << 3) + i13]).D();
                        }
                        j11 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    } else if (i11 != length) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
        mutableScatterSet2.m();
    }

    private final void G() {
        if (this.f4470a.n()) {
            return;
        }
        try {
            F();
        } catch (Throwable unused) {
        }
    }

    private final void I() {
        this.f4480k = null;
        this.f4481l = null;
        this.f4478i = y.m.f78491b.a();
        this.f4477h = y.g.f78470b.c();
        this.f4479j = 0.0f;
        this.f4476g = true;
        this.f4483n = false;
    }

    private final void Q(long j11, long j12) {
        this.f4470a.B(o0.p.h(j11), o0.p.i(j11), j12);
    }

    private final void a0(long j11) {
        if (o0.t.e(this.f4489t, j11)) {
            return;
        }
        this.f4489t = j11;
        Q(this.f4488s, j11);
        if (this.f4478i == 9205357640488583168L) {
            this.f4476g = true;
            e();
        }
    }

    private final void d(GraphicsLayer graphicsLayer) {
        if (this.f4486q.i(graphicsLayer)) {
            graphicsLayer.C();
        }
    }

    private final void e() {
        if (this.f4476g) {
            Outline outline = null;
            if (this.f4491v || u() > 0.0f) {
                Path path = this.f4481l;
                if (path != null) {
                    RectF rectFB = B();
                    if (!(path instanceof androidx.compose.ui.graphics.u0)) {
                        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
                    }
                    ((androidx.compose.ui.graphics.u0) path).p().computeBounds(rectFB, false);
                    Outline outlineG0 = g0(path);
                    if (outlineG0 != null) {
                        outlineG0.setAlpha(i());
                        outline = outlineG0;
                    }
                    this.f4470a.G(outline, o0.u.a(Math.round(rectFB.width()), Math.round(rectFB.height())));
                    if (this.f4483n && this.f4491v) {
                        this.f4470a.r(false);
                        this.f4470a.k();
                    } else {
                        this.f4470a.r(this.f4491v);
                    }
                } else {
                    this.f4470a.r(this.f4491v);
                    y.m.f78491b.b();
                    Outline outlineA = A();
                    long jD = o0.u.d(this.f4489t);
                    long j11 = this.f4477h;
                    long j12 = this.f4478i;
                    long j13 = j12 == 9205357640488583168L ? jD : j12;
                    outlineA.setRoundRect(Math.round(y.g.m(j11)), Math.round(y.g.n(j11)), Math.round(y.g.m(j11) + y.m.i(j13)), Math.round(y.g.n(j11) + y.m.g(j13)), this.f4479j);
                    outlineA.setAlpha(i());
                    this.f4470a.G(outlineA, o0.u.c(j13));
                }
            } else {
                this.f4470a.r(false);
                this.f4470a.G(null, o0.t.f70624b.a());
            }
        }
        this.f4476g = false;
    }

    private final void f() {
        if (this.f4487r && this.f4485p == 0) {
            g();
        }
    }

    private final void f0(Canvas canvas) {
        float fH = o0.p.h(this.f4488s);
        float fI = o0.p.i(this.f4488s);
        float fH2 = o0.p.h(this.f4488s) + o0.t.g(this.f4489t);
        float fI2 = o0.p.i(this.f4488s) + o0.t.f(this.f4489t);
        float fI3 = i();
        v1 v1VarL = l();
        int iJ = j();
        if (fI3 < 1.0f || !c1.E(iJ, c1.f4292a.B()) || v1VarL != null || b.e(m(), b.f4512a.c())) {
            m4 m4VarA = this.f4484o;
            if (m4VarA == null) {
                m4VarA = androidx.compose.ui.graphics.t0.a();
                this.f4484o = m4VarA;
            }
            m4VarA.setAlpha(fI3);
            m4VarA.n(iJ);
            m4VarA.z(v1VarL);
            canvas.saveLayer(fH, fI, fH2, fI2, m4VarA.w());
        } else {
            canvas.save();
        }
        canvas.translate(fH, fI);
        canvas.concat(this.f4470a.E());
    }

    private final Outline g0(Path path) {
        Outline outline;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 > 28 || path.a()) {
            Outline outlineA = A();
            if (i11 >= 30) {
                l0.f4597a.a(outlineA, path);
            } else {
                if (!(path instanceof androidx.compose.ui.graphics.u0)) {
                    throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
                }
                outlineA.setConvexPath(((androidx.compose.ui.graphics.u0) path).p());
            }
            this.f4483n = !outlineA.canClip();
            outline = outlineA;
        } else {
            Outline outline2 = this.f4475f;
            if (outline2 != null) {
                outline2.setEmpty();
            }
            this.f4483n = true;
            this.f4470a.F(true);
            outline = null;
        }
        this.f4481l = path;
        return outline;
    }

    public final void E(o0.e eVar, LayoutDirection layoutDirection, long j11, Function1 function1) {
        a0(j11);
        this.f4471b = eVar;
        this.f4472c = layoutDirection;
        this.f4473d = function1;
        this.f4470a.F(true);
        F();
    }

    public final void H() {
        if (this.f4487r) {
            return;
        }
        this.f4487r = true;
        f();
    }

    public final void J(float f11) {
        if (this.f4470a.getAlpha() == f11) {
            return;
        }
        this.f4470a.setAlpha(f11);
    }

    public final void K(long j11) {
        if (u1.m(j11, this.f4470a.C())) {
            return;
        }
        this.f4470a.p(j11);
    }

    public final void L(float f11) {
        if (this.f4470a.q() == f11) {
            return;
        }
        this.f4470a.d(f11);
    }

    public final void M(boolean z10) {
        if (this.f4491v != z10) {
            this.f4491v = z10;
            this.f4476g = true;
            e();
        }
    }

    public final void N(int i11) {
        if (b.e(this.f4470a.z(), i11)) {
            return;
        }
        this.f4470a.J(i11);
    }

    public final void O(Path path) {
        I();
        this.f4481l = path;
        e();
    }

    public final void P(long j11) {
        if (y.g.j(this.f4490u, j11)) {
            return;
        }
        this.f4490u = j11;
        this.f4470a.H(j11);
    }

    public final void R(long j11, long j12) {
        W(j11, j12, 0.0f);
    }

    public final void S(w4 w4Var) {
        this.f4470a.v();
        if (Intrinsics.c(null, w4Var)) {
            return;
        }
        this.f4470a.c(w4Var);
    }

    public final void T(float f11) {
        if (this.f4470a.y() == f11) {
            return;
        }
        this.f4470a.e(f11);
    }

    public final void U(float f11) {
        if (this.f4470a.m() == f11) {
            return;
        }
        this.f4470a.f(f11);
    }

    public final void V(float f11) {
        if (this.f4470a.o() == f11) {
            return;
        }
        this.f4470a.g(f11);
    }

    public final void W(long j11, long j12, float f11) {
        if (y.g.j(this.f4477h, j11) && y.m.f(this.f4478i, j12) && this.f4479j == f11 && this.f4481l == null) {
            return;
        }
        I();
        this.f4477h = j11;
        this.f4478i = j12;
        this.f4479j = f11;
        e();
    }

    public final void X(float f11) {
        if (this.f4470a.t() == f11) {
            return;
        }
        this.f4470a.b(f11);
    }

    public final void Y(float f11) {
        if (this.f4470a.A() == f11) {
            return;
        }
        this.f4470a.h(f11);
    }

    public final void Z(float f11) {
        if (this.f4470a.K() == f11) {
            return;
        }
        this.f4470a.u(f11);
        this.f4476g = true;
        e();
    }

    public final void b0(long j11) {
        if (u1.m(j11, this.f4470a.D())) {
            return;
        }
        this.f4470a.s(j11);
    }

    public final void c0(long j11) {
        if (o0.p.g(this.f4488s, j11)) {
            return;
        }
        this.f4488s = j11;
        Q(j11, this.f4489t);
    }

    public final void d0(float f11) {
        if (this.f4470a.x() == f11) {
            return;
        }
        this.f4470a.j(f11);
    }

    public final void e0(float f11) {
        if (this.f4470a.w() == f11) {
            return;
        }
        this.f4470a.a(f11);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0057 A[LOOP:0: B:10:0x0020->B:20:0x0057, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x005a A[EDGE_INSN: B:25:0x005a->B:21:0x005a BREAK  A[LOOP:0: B:10:0x0020->B:20:0x0057], SYNTHETIC] */
    public final void g() {
        androidx.compose.ui.graphics.layer.a aVar = this.f4486q;
        GraphicsLayer graphicsLayer = aVar.f4507a;
        if (graphicsLayer != null) {
            graphicsLayer.D();
            aVar.f4507a = null;
        }
        MutableScatterSet mutableScatterSet = aVar.f4509c;
        if (mutableScatterSet != null) {
            Object[] objArr = mutableScatterSet.f2247b;
            long[] jArr = mutableScatterSet.f2246a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i11 = 0;
                while (true) {
                    long j11 = jArr[i11];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i11 != length) {
                            break;
                            break;
                        }
                        i11++;
                    } else {
                        int i12 = 8 - ((~(i11 - length)) >>> 31);
                        for (int i13 = 0; i13 < i12; i13++) {
                            if ((255 & j11) < 128) {
                                ((GraphicsLayer) objArr[(i11 << 3) + i13]).D();
                            }
                            j11 >>= 8;
                        }
                        if (i12 != 8) {
                            break;
                        } else if (i11 != length) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
            }
            mutableScatterSet.m();
        }
        this.f4470a.k();
    }

    public final void h(m1 m1Var, GraphicsLayer graphicsLayer) {
        if (this.f4487r) {
            return;
        }
        e();
        G();
        boolean z10 = u() > 0.0f;
        if (z10) {
            m1Var.k();
        }
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        boolean zIsHardwareAccelerated = canvasD.isHardwareAccelerated();
        if (!zIsHardwareAccelerated) {
            canvasD.save();
            f0(canvasD);
        }
        boolean z11 = !zIsHardwareAccelerated && this.f4491v;
        if (z11) {
            m1Var.n();
            k4 k4VarN = n();
            if (k4VarN instanceof k4.b) {
                l1.e(m1Var, k4VarN.a(), 0, 2, null);
            } else if (k4VarN instanceof k4.c) {
                Path pathA = this.f4482m;
                if (pathA != null) {
                    pathA.b();
                } else {
                    pathA = androidx.compose.ui.graphics.x0.a();
                    this.f4482m = pathA;
                }
                o4.b(pathA, ((k4.c) k4VarN).b(), null, 2, null);
                l1.c(m1Var, pathA, 0, 2, null);
            } else if (k4VarN instanceof k4.a) {
                l1.c(m1Var, ((k4.a) k4VarN).b(), 0, 2, null);
            }
        }
        if (graphicsLayer != null) {
            graphicsLayer.d(this);
        }
        this.f4470a.L(m1Var);
        if (z11) {
            m1Var.j();
        }
        if (z10) {
            m1Var.o();
        }
        if (zIsHardwareAccelerated) {
            return;
        }
        canvasD.restore();
    }

    public final float i() {
        return this.f4470a.getAlpha();
    }

    public final int j() {
        return this.f4470a.l();
    }

    public final boolean k() {
        return this.f4491v;
    }

    public final v1 l() {
        return this.f4470a.i();
    }

    public final int m() {
        return this.f4470a.z();
    }

    public final k4 n() {
        k4 k4Var = this.f4480k;
        Path path = this.f4481l;
        if (k4Var != null) {
            return k4Var;
        }
        if (path != null) {
            k4.a aVar = new k4.a(path);
            this.f4480k = aVar;
            return aVar;
        }
        long jD = o0.u.d(this.f4489t);
        long j11 = this.f4477h;
        long j12 = this.f4478i;
        if (j12 != 9205357640488583168L) {
            jD = j12;
        }
        float fM = y.g.m(j11);
        float fN = y.g.n(j11);
        float fI = fM + y.m.i(jD);
        float fG = fN + y.m.g(jD);
        float f11 = this.f4479j;
        k4 cVar = f11 > 0.0f ? new k4.c(y.l.c(fM, fN, fI, fG, y.b.b(f11, 0.0f, 2, null))) : new k4.b(new y.i(fM, fN, fI, fG));
        this.f4480k = cVar;
        return cVar;
    }

    public final long o() {
        return this.f4490u;
    }

    public final float p() {
        return this.f4470a.y();
    }

    public final float q() {
        return this.f4470a.m();
    }

    public final float r() {
        return this.f4470a.o();
    }

    public final float s() {
        return this.f4470a.t();
    }

    public final float t() {
        return this.f4470a.A();
    }

    public final float u() {
        return this.f4470a.K();
    }

    public final long v() {
        return this.f4489t;
    }

    public final long w() {
        return this.f4488s;
    }

    public final float x() {
        return this.f4470a.x();
    }

    public final float y() {
        return this.f4470a.w();
    }

    public final boolean z() {
        return this.f4487r;
    }
}
