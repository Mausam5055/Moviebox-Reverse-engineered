package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.m0;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.x;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import o0.p;
import o0.u;
import y.m;

/* JADX INFO: loaded from: classes.dex */
final class PainterNode extends androidx.compose.ui.f.c implements x, n {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Painter f4155n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4156o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.compose.ui.b f4157p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private androidx.compose.ui.layout.e f4158q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f4159r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private v1 f4160s;

    public PainterNode(Painter painter, boolean z10, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f11, v1 v1Var) {
        this.f4155n = painter;
        this.f4156o = z10;
        this.f4157p = bVar;
        this.f4158q = eVar;
        this.f4159r = f11;
        this.f4160s = v1Var;
    }

    private final long D1(long j11) {
        if (!G1()) {
            return j11;
        }
        long jA = y.n.a(!I1(this.f4155n.h()) ? m.i(j11) : m.i(this.f4155n.h()), !H1(this.f4155n.h()) ? m.g(j11) : m.g(this.f4155n.h()));
        return (m.i(j11) == 0.0f || m.g(j11) == 0.0f) ? m.f78491b.b() : m0.b(jA, this.f4158q.a(jA, j11));
    }

    private final boolean G1() {
        return this.f4156o && this.f4155n.h() != 9205357640488583168L;
    }

    private final boolean H1(long j11) {
        if (!m.f(j11, m.f78491b.a())) {
            float fG = m.g(j11);
            if (!Float.isInfinite(fG) && !Float.isNaN(fG)) {
                return true;
            }
        }
        return false;
    }

    private final boolean I1(long j11) {
        if (!m.f(j11, m.f78491b.a())) {
            float fI = m.i(j11);
            if (!Float.isInfinite(fI) && !Float.isNaN(fI)) {
                return true;
            }
        }
        return false;
    }

    private final long J1(long j11) {
        boolean z10 = false;
        boolean z11 = o0.b.h(j11) && o0.b.g(j11);
        if (o0.b.j(j11) && o0.b.i(j11)) {
            z10 = true;
        }
        if ((!G1() && z11) || z10) {
            return o0.b.d(j11, o0.b.l(j11), 0, o0.b.k(j11), 0, 10, null);
        }
        long jH = this.f4155n.h();
        long jD1 = D1(y.n.a(o0.c.i(j11, I1(jH) ? Math.round(m.i(jH)) : o0.b.n(j11)), o0.c.h(j11, H1(jH) ? Math.round(m.g(jH)) : o0.b.m(j11))));
        return o0.b.d(j11, o0.c.i(j11, Math.round(m.i(jD1))), 0, o0.c.h(j11, Math.round(m.g(jD1))), 0, 10, null);
    }

    public final Painter E1() {
        return this.f4155n;
    }

    public final boolean F1() {
        return this.f4156o;
    }

    public final void K1(androidx.compose.ui.b bVar) {
        this.f4157p = bVar;
    }

    public final void L1(v1 v1Var) {
        this.f4160s = v1Var;
    }

    public final void M1(androidx.compose.ui.layout.e eVar) {
        this.f4158q = eVar;
    }

    public final void N1(Painter painter) {
        this.f4155n = painter;
    }

    public final void O1(boolean z10) {
        this.f4156o = z10;
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return false;
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        long jH = this.f4155n.h();
        long jA = y.n.a(I1(jH) ? m.i(jH) : m.i(cVar.i()), H1(jH) ? m.g(jH) : m.g(cVar.i()));
        long jB = (m.i(cVar.i()) == 0.0f || m.g(cVar.i()) == 0.0f) ? m.f78491b.b() : m0.b(jA, this.f4158q.a(jA, cVar.i()));
        long jA2 = this.f4157p.a(u.a(Math.round(m.i(jB)), Math.round(m.g(jB))), u.a(Math.round(m.i(cVar.i())), Math.round(m.g(cVar.i()))), cVar.getLayoutDirection());
        float fH = p.h(jA2);
        float fI = p.i(jA2);
        cVar.H0().c().c(fH, fI);
        try {
            this.f4155n.g(cVar, jB, this.f4159r, this.f4160s);
            cVar.H0().c().c(-fH, -fI);
            cVar.Y0();
        } catch (Throwable th2) {
            cVar.H0().c().c(-fH, -fI);
            throw th2;
        }
    }

    public final void setAlpha(float f11) {
        this.f4159r = f11;
    }

    public String toString() {
        return "PainterModifier(painter=" + this.f4155n + ", sizeToIntrinsics=" + this.f4156o + ", alignment=" + this.f4157p + ", alpha=" + this.f4159r + ", colorFilter=" + this.f4160s + ')';
    }

    @Override // androidx.compose.ui.node.n
    public /* synthetic */ void w0() {
        androidx.compose.ui.node.m.a(this);
    }

    @Override // androidx.compose.ui.node.x
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j11) {
        final g0 g0VarP = sVar.P(J1(j11));
        return w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<g0.a, Unit>() { // from class: androidx.compose.ui.draw.PainterNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(g0.a aVar) {
                g0.a.l(aVar, g0VarP, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
