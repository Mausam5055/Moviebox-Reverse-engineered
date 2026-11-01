package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.t0;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import y.i;
import y.j;
import y.m;
import y.n;
import z.g;

/* JADX INFO: loaded from: classes.dex */
public abstract class Painter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m4 f4615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private v1 f4617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f4618d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LayoutDirection f4619e = LayoutDirection.Ltr;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1 f4620f = new Function1<g, Unit>() { // from class: androidx.compose.ui.graphics.painter.Painter$drawLambda$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((g) obj);
            return Unit.f67061a;
        }

        public final void invoke(g gVar) {
            this.this$0.j(gVar);
        }
    };

    private final void d(float f11) {
        if (this.f4618d == f11) {
            return;
        }
        if (!a(f11)) {
            if (f11 == 1.0f) {
                m4 m4Var = this.f4615a;
                if (m4Var != null) {
                    m4Var.setAlpha(f11);
                }
                this.f4616b = false;
            } else {
                i().setAlpha(f11);
                this.f4616b = true;
            }
        }
        this.f4618d = f11;
    }

    private final void e(v1 v1Var) {
        if (Intrinsics.c(this.f4617c, v1Var)) {
            return;
        }
        if (!b(v1Var)) {
            if (v1Var == null) {
                m4 m4Var = this.f4615a;
                if (m4Var != null) {
                    m4Var.z(null);
                }
                this.f4616b = false;
            } else {
                i().z(v1Var);
                this.f4616b = true;
            }
        }
        this.f4617c = v1Var;
    }

    private final void f(LayoutDirection layoutDirection) {
        if (this.f4619e != layoutDirection) {
            c(layoutDirection);
            this.f4619e = layoutDirection;
        }
    }

    private final m4 i() {
        m4 m4Var = this.f4615a;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarA = t0.a();
        this.f4615a = m4VarA;
        return m4VarA;
    }

    protected boolean a(float f11) {
        return false;
    }

    protected boolean b(v1 v1Var) {
        return false;
    }

    protected boolean c(LayoutDirection layoutDirection) {
        return false;
    }

    public final void g(g gVar, long j11, float f11, v1 v1Var) {
        d(f11);
        e(v1Var);
        f(gVar.getLayoutDirection());
        float fI = m.i(gVar.i()) - m.i(j11);
        float fG = m.g(gVar.i()) - m.g(j11);
        gVar.H0().c().f(0.0f, 0.0f, fI, fG);
        if (f11 > 0.0f) {
            try {
                if (m.i(j11) > 0.0f && m.g(j11) > 0.0f) {
                    if (this.f4616b) {
                        i iVarA = j.a(y.g.f78470b.c(), n.a(m.i(j11), m.g(j11)));
                        m1 m1VarE = gVar.H0().e();
                        try {
                            m1VarE.d(iVarA, i());
                            j(gVar);
                            m1VarE.j();
                        } catch (Throwable th2) {
                            m1VarE.j();
                            throw th2;
                        }
                    } else {
                        j(gVar);
                    }
                }
            } catch (Throwable th3) {
                gVar.H0().c().f(-0.0f, -0.0f, -fI, -fG);
                throw th3;
            }
        }
        gVar.H0().c().f(-0.0f, -0.0f, -fI, -fG);
    }

    public abstract long h();

    protected abstract void j(g gVar);
}
