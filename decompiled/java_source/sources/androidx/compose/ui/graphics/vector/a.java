package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.f4;
import androidx.compose.ui.graphics.g4;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.o1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import o0.t;
import o0.u;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e4 f4737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private m1 f4738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o0.e f4739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutDirection f4740d = LayoutDirection.Ltr;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f4741e = t.f70624b.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4742f = f4.f4439b.b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z.a f4743g = new z.a();

    private final void a(z.g gVar) {
        z.f.j(gVar, u1.f4658b.a(), 0L, 0L, 0.0f, null, null, c1.f4292a.a(), 62, null);
    }

    public final void b(int i11, long j11, o0.e eVar, LayoutDirection layoutDirection, Function1 function1) {
        this.f4739c = eVar;
        this.f4740d = layoutDirection;
        e4 e4VarB = this.f4737a;
        m1 m1VarA = this.f4738b;
        if (e4VarB == null || m1VarA == null || t.g(j11) > e4VarB.getWidth() || t.f(j11) > e4VarB.getHeight() || !f4.i(this.f4742f, i11)) {
            e4VarB = g4.b(t.g(j11), t.f(j11), i11, false, null, 24, null);
            m1VarA = o1.a(e4VarB);
            this.f4737a = e4VarB;
            this.f4738b = m1VarA;
            this.f4742f = i11;
        }
        this.f4741e = j11;
        z.a aVar = this.f4743g;
        long jD = u.d(j11);
        z.a.C0973a c0973aF = aVar.F();
        o0.e eVarA = c0973aF.a();
        LayoutDirection layoutDirectionB = c0973aF.b();
        m1 m1VarC = c0973aF.c();
        long jD2 = c0973aF.d();
        z.a.C0973a c0973aF2 = aVar.F();
        c0973aF2.j(eVar);
        c0973aF2.k(layoutDirection);
        c0973aF2.i(m1VarA);
        c0973aF2.l(jD);
        m1VarA.n();
        a(aVar);
        function1.invoke(aVar);
        m1VarA.j();
        z.a.C0973a c0973aF3 = aVar.F();
        c0973aF3.j(eVarA);
        c0973aF3.k(layoutDirectionB);
        c0973aF3.i(m1VarC);
        c0973aF3.l(jD2);
        e4VarB.a();
    }

    public final void c(z.g gVar, float f11, v1 v1Var) {
        e4 e4Var = this.f4737a;
        if (!(e4Var != null)) {
            g0.a.b("drawCachedImage must be invoked first before attempting to draw the result into another destination");
        }
        z.f.e(gVar, e4Var, 0L, this.f4741e, 0L, 0L, f11, null, v1Var, 0, 0, 858, null);
    }

    public final e4 d() {
        return this.f4737a;
    }
}
