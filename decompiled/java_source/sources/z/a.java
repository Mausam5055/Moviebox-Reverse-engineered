package z;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.p4;
import androidx.compose.ui.graphics.t0;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.x3;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final C0973a f79097a = new C0973a(null, null, null, 0, 15, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f79098b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m4 f79099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m4 f79100d;

    /* JADX INFO: renamed from: z.a$a, reason: collision with other inner class name */
    public static final class C0973a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private o0.e f79101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LayoutDirection f79102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private m1 f79103c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f79104d;

        private C0973a(o0.e eVar, LayoutDirection layoutDirection, m1 m1Var, long j11) {
            this.f79101a = eVar;
            this.f79102b = layoutDirection;
            this.f79103c = m1Var;
            this.f79104d = j11;
        }

        public /* synthetic */ C0973a(o0.e eVar, LayoutDirection layoutDirection, m1 m1Var, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? e.a() : eVar, (i11 & 2) != 0 ? LayoutDirection.Ltr : layoutDirection, (i11 & 4) != 0 ? new k() : m1Var, (i11 & 8) != 0 ? y.m.f78491b.b() : j11, null);
        }

        public /* synthetic */ C0973a(o0.e eVar, LayoutDirection layoutDirection, m1 m1Var, long j11, DefaultConstructorMarker defaultConstructorMarker) {
            this(eVar, layoutDirection, m1Var, j11);
        }

        public final o0.e a() {
            return this.f79101a;
        }

        public final LayoutDirection b() {
            return this.f79102b;
        }

        public final m1 c() {
            return this.f79103c;
        }

        public final long d() {
            return this.f79104d;
        }

        public final m1 e() {
            return this.f79103c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0973a)) {
                return false;
            }
            C0973a c0973a = (C0973a) obj;
            return Intrinsics.c(this.f79101a, c0973a.f79101a) && this.f79102b == c0973a.f79102b && Intrinsics.c(this.f79103c, c0973a.f79103c) && y.m.f(this.f79104d, c0973a.f79104d);
        }

        public final o0.e f() {
            return this.f79101a;
        }

        public final LayoutDirection g() {
            return this.f79102b;
        }

        public final long h() {
            return this.f79104d;
        }

        public int hashCode() {
            return (((((this.f79101a.hashCode() * 31) + this.f79102b.hashCode()) * 31) + this.f79103c.hashCode()) * 31) + y.m.j(this.f79104d);
        }

        public final void i(m1 m1Var) {
            this.f79103c = m1Var;
        }

        public final void j(o0.e eVar) {
            this.f79101a = eVar;
        }

        public final void k(LayoutDirection layoutDirection) {
            this.f79102b = layoutDirection;
        }

        public final void l(long j11) {
            this.f79104d = j11;
        }

        public String toString() {
            return "DrawParams(density=" + this.f79101a + ", layoutDirection=" + this.f79102b + ", canvas=" + this.f79103c + ", size=" + ((Object) y.m.l(this.f79104d)) + ')';
        }
    }

    public static final class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j f79105a = z.b.b(this);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private GraphicsLayer f79106b;

        b() {
        }

        @Override // z.d
        public void a(LayoutDirection layoutDirection) {
            a.this.F().k(layoutDirection);
        }

        @Override // z.d
        public void b(o0.e eVar) {
            a.this.F().j(eVar);
        }

        @Override // z.d
        public j c() {
            return this.f79105a;
        }

        @Override // z.d
        public void d(GraphicsLayer graphicsLayer) {
            this.f79106b = graphicsLayer;
        }

        @Override // z.d
        public m1 e() {
            return a.this.F().e();
        }

        @Override // z.d
        public void f(long j11) {
            a.this.F().l(j11);
        }

        @Override // z.d
        public GraphicsLayer g() {
            return this.f79106b;
        }

        @Override // z.d
        public o0.e getDensity() {
            return a.this.F().f();
        }

        @Override // z.d
        public LayoutDirection getLayoutDirection() {
            return a.this.F().g();
        }

        @Override // z.d
        public void h(m1 m1Var) {
            a.this.F().i(m1Var);
        }

        @Override // z.d
        public long i() {
            return a.this.F().h();
        }
    }

    static /* synthetic */ m4 B(a aVar, j1 j1Var, h hVar, float f11, v1 v1Var, int i11, int i12, int i13, Object obj) {
        if ((i13 & 32) != 0) {
            i12 = g.f79110o1.b();
        }
        return aVar.z(j1Var, hVar, f11, v1Var, i11, i12);
    }

    private final m4 C(long j11, float f11, float f12, int i11, int i12, p4 p4Var, float f13, v1 v1Var, int i13, int i14) {
        m4 m4VarL = L();
        long jG = G(j11, f13);
        if (!u1.m(m4VarL.a(), jG)) {
            m4VarL.s(jG);
        }
        if (m4VarL.y() != null) {
            m4VarL.x(null);
        }
        if (!Intrinsics.c(m4VarL.i(), v1Var)) {
            m4VarL.z(v1Var);
        }
        if (!c1.E(m4VarL.l(), i13)) {
            m4VarL.n(i13);
        }
        if (m4VarL.getStrokeWidth() != f11) {
            m4VarL.setStrokeWidth(f11);
        }
        if (m4VarL.v() != f12) {
            m4VarL.A(f12);
        }
        if (!c5.e(m4VarL.p(), i11)) {
            m4VarL.m(i11);
        }
        if (!d5.e(m4VarL.u(), i12)) {
            m4VarL.r(i12);
        }
        m4VarL.t();
        if (!Intrinsics.c(null, p4Var)) {
            m4VarL.q(p4Var);
        }
        if (!x3.d(m4VarL.B(), i14)) {
            m4VarL.o(i14);
        }
        return m4VarL;
    }

    static /* synthetic */ m4 D(a aVar, long j11, float f11, float f12, int i11, int i12, p4 p4Var, float f13, v1 v1Var, int i13, int i14, int i15, Object obj) {
        return aVar.C(j11, f11, f12, i11, i12, p4Var, f13, v1Var, i13, (i15 & 512) != 0 ? g.f79110o1.b() : i14);
    }

    private final long G(long j11, float f11) {
        return f11 == 1.0f ? j11 : u1.k(j11, u1.n(j11) * f11, 0.0f, 0.0f, 0.0f, 14, null);
    }

    private final m4 I() {
        m4 m4Var = this.f79099c;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarA = t0.a();
        m4VarA.C(n4.f4608a.a());
        this.f79099c = m4VarA;
        return m4VarA;
    }

    private final m4 L() {
        m4 m4Var = this.f79100d;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarA = t0.a();
        m4VarA.C(n4.f4608a.b());
        this.f79100d = m4VarA;
        return m4VarA;
    }

    private final m4 M(h hVar) {
        if (Intrinsics.c(hVar, l.f79114a)) {
            return I();
        }
        if (!(hVar instanceof m)) {
            throw new NoWhenBranchMatchedException();
        }
        m4 m4VarL = L();
        m mVar = (m) hVar;
        if (m4VarL.getStrokeWidth() != mVar.f()) {
            m4VarL.setStrokeWidth(mVar.f());
        }
        if (!c5.e(m4VarL.p(), mVar.b())) {
            m4VarL.m(mVar.b());
        }
        if (m4VarL.v() != mVar.d()) {
            m4VarL.A(mVar.d());
        }
        if (!d5.e(m4VarL.u(), mVar.c())) {
            m4VarL.r(mVar.c());
        }
        m4VarL.t();
        mVar.e();
        if (!Intrinsics.c(null, null)) {
            mVar.e();
            m4VarL.q(null);
        }
        return m4VarL;
    }

    private final m4 n(long j11, h hVar, float f11, v1 v1Var, int i11, int i12) {
        m4 m4VarM = M(hVar);
        long jG = G(j11, f11);
        if (!u1.m(m4VarM.a(), jG)) {
            m4VarM.s(jG);
        }
        if (m4VarM.y() != null) {
            m4VarM.x(null);
        }
        if (!Intrinsics.c(m4VarM.i(), v1Var)) {
            m4VarM.z(v1Var);
        }
        if (!c1.E(m4VarM.l(), i11)) {
            m4VarM.n(i11);
        }
        if (!x3.d(m4VarM.B(), i12)) {
            m4VarM.o(i12);
        }
        return m4VarM;
    }

    static /* synthetic */ m4 v(a aVar, long j11, h hVar, float f11, v1 v1Var, int i11, int i12, int i13, Object obj) {
        return aVar.n(j11, hVar, f11, v1Var, i11, (i13 & 32) != 0 ? g.f79110o1.b() : i12);
    }

    private final m4 z(j1 j1Var, h hVar, float f11, v1 v1Var, int i11, int i12) {
        m4 m4VarM = M(hVar);
        if (j1Var != null) {
            j1Var.a(i(), m4VarM, f11);
        } else {
            if (m4VarM.y() != null) {
                m4VarM.x(null);
            }
            long jA = m4VarM.a();
            u1.a aVar = u1.f4658b;
            if (!u1.m(jA, aVar.a())) {
                m4VarM.s(aVar.a());
            }
            if (m4VarM.getAlpha() != f11) {
                m4VarM.setAlpha(f11);
            }
        }
        if (!Intrinsics.c(m4VarM.i(), v1Var)) {
            m4VarM.z(v1Var);
        }
        if (!c1.E(m4VarM.l(), i11)) {
            m4VarM.n(i11);
        }
        if (!x3.d(m4VarM.B(), i12)) {
            m4VarM.o(i12);
        }
        return m4VarM;
    }

    @Override // o0.n
    public float C0() {
        return this.f79097a.f().C0();
    }

    @Override // z.g
    public void D0(Path path, long j11, float f11, h hVar, v1 v1Var, int i11) {
        this.f79097a.e().q(path, v(this, j11, hVar, f11, v1Var, i11, 0, 32, null));
    }

    @Override // o0.e
    public /* synthetic */ float E0(float f11) {
        return o0.d.e(this, f11);
    }

    public final C0973a F() {
        return this.f79097a;
    }

    @Override // z.g
    public void G0(List list, int i11, long j11, float f11, int i12, p4 p4Var, float f12, v1 v1Var, int i13) {
        this.f79097a.e().g(i11, list, D(this, j11, f11, 4.0f, i12, d5.f4430a.b(), p4Var, f12, v1Var, i13, 0, 512, null));
    }

    @Override // o0.n
    public /* synthetic */ long H(float f11) {
        return o0.m.b(this, f11);
    }

    @Override // z.g
    public d H0() {
        return this.f79098b;
    }

    @Override // o0.n
    public /* synthetic */ float J(long j11) {
        return o0.m.a(this, j11);
    }

    @Override // z.g
    public void K0(long j11, float f11, long j12, float f12, h hVar, v1 v1Var, int i11) {
        this.f79097a.e().r(j12, f11, v(this, j11, hVar, f12, v1Var, i11, 0, 32, null));
    }

    @Override // z.g
    public void L0(long j11, long j12, long j13, float f11, h hVar, v1 v1Var, int i11) {
        this.f79097a.e().f(y.g.m(j12), y.g.n(j12), y.g.m(j12) + y.m.i(j13), y.g.n(j12) + y.m.g(j13), v(this, j11, hVar, f11, v1Var, i11, 0, 32, null));
    }

    @Override // z.g
    public void N0(j1 j1Var, long j11, long j12, float f11, h hVar, v1 v1Var, int i11) {
        this.f79097a.e().f(y.g.m(j11), y.g.n(j11), y.g.m(j11) + y.m.i(j12), y.g.n(j11) + y.m.g(j12), B(this, j1Var, hVar, f11, v1Var, i11, 0, 32, null));
    }

    @Override // z.g
    public /* synthetic */ long O0() {
        return f.a(this);
    }

    @Override // o0.e
    public /* synthetic */ long Q(float f11) {
        return o0.d.g(this, f11);
    }

    @Override // o0.e
    public /* synthetic */ long Q0(long j11) {
        return o0.d.f(this, j11);
    }

    @Override // z.g
    public void T(long j11, long j12, long j13, long j14, h hVar, float f11, v1 v1Var, int i11) {
        this.f79097a.e().s(y.g.m(j12), y.g.n(j12), y.g.m(j12) + y.m.i(j13), y.g.n(j12) + y.m.g(j13), y.a.d(j14), y.a.e(j14), v(this, j11, hVar, f11, v1Var, i11, 0, 32, null));
    }

    @Override // z.g
    public void U0(e4 e4Var, long j11, long j12, long j13, long j14, float f11, h hVar, v1 v1Var, int i11, int i12) {
        this.f79097a.e().h(e4Var, j11, j12, j13, j14, z(null, hVar, f11, v1Var, i11, i12));
    }

    @Override // z.g
    public void V0(j1 j1Var, long j11, long j12, long j13, float f11, h hVar, v1 v1Var, int i11) {
        this.f79097a.e().s(y.g.m(j11), y.g.n(j11), y.g.m(j11) + y.m.i(j12), y.g.n(j11) + y.m.g(j12), y.a.d(j13), y.a.e(j13), B(this, j1Var, hVar, f11, v1Var, i11, 0, 32, null));
    }

    @Override // o0.e
    public /* synthetic */ int c0(float f11) {
        return o0.d.a(this, f11);
    }

    @Override // o0.e
    public float getDensity() {
        return this.f79097a.f().getDensity();
    }

    @Override // z.g
    public LayoutDirection getLayoutDirection() {
        return this.f79097a.g();
    }

    @Override // o0.e
    public /* synthetic */ float h0(long j11) {
        return o0.d.d(this, j11);
    }

    @Override // z.g
    public /* synthetic */ long i() {
        return f.b(this);
    }

    @Override // z.g
    public void i0(Path path, j1 j1Var, float f11, h hVar, v1 v1Var, int i11) {
        this.f79097a.e().q(path, B(this, j1Var, hVar, f11, v1Var, i11, 0, 32, null));
    }

    @Override // z.g
    public void q0(long j11, long j12, long j13, float f11, int i11, p4 p4Var, float f12, v1 v1Var, int i12) {
        this.f79097a.e().m(j12, j13, D(this, j11, f11, 4.0f, i11, d5.f4430a.b(), p4Var, f12, v1Var, i12, 0, 512, null));
    }

    @Override // o0.e
    public /* synthetic */ float x0(int i11) {
        return o0.d.c(this, i11);
    }

    @Override // o0.e
    public /* synthetic */ float y0(float f11) {
        return o0.d.b(this, f11);
    }
}
