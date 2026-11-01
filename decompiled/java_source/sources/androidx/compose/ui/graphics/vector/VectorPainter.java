package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.e1;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.n2;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class VectorPainter extends Painter {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final i1 f4730g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i1 f4731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final VectorComponent f4732i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final e1 f4733j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f4734k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private v1 f4735l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f4736m;

    /* JADX WARN: Multi-variable type inference failed */
    public VectorPainter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public VectorPainter(GroupComponent groupComponent) {
        this.f4730g = u2.c(y.m.c(y.m.f78491b.b()), null, 2, null);
        this.f4731h = u2.c(Boolean.FALSE, null, 2, null);
        VectorComponent vectorComponent = new VectorComponent(groupComponent);
        vectorComponent.o(new Function0<Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$vector$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m114invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m114invoke() {
                if (this.this$0.f4736m == this.this$0.o()) {
                    VectorPainter vectorPainter = this.this$0;
                    vectorPainter.s(vectorPainter.o() + 1);
                }
            }
        });
        this.f4732i = vectorComponent;
        this.f4733j = n2.a(0);
        this.f4734k = 1.0f;
        this.f4736m = -1;
    }

    public /* synthetic */ VectorPainter(GroupComponent groupComponent, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new GroupComponent() : groupComponent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int o() {
        return this.f4733j.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(int i11) {
        this.f4733j.setIntValue(i11);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f11) {
        this.f4734k = f11;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean b(v1 v1Var) {
        this.f4735l = v1Var;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long h() {
        return p();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void j(z.g gVar) {
        VectorComponent vectorComponent = this.f4732i;
        v1 v1VarK = this.f4735l;
        if (v1VarK == null) {
            v1VarK = vectorComponent.k();
        }
        if (n() && gVar.getLayoutDirection() == LayoutDirection.Rtl) {
            long jO0 = gVar.O0();
            z.d dVarH0 = gVar.H0();
            long jI = dVarH0.i();
            dVarH0.e().n();
            try {
                dVarH0.c().e(-1.0f, 1.0f, jO0);
                vectorComponent.i(gVar, this.f4734k, v1VarK);
                dVarH0.e().j();
                dVarH0.f(jI);
            } catch (Throwable th2) {
                dVarH0.e().j();
                dVarH0.f(jI);
                throw th2;
            }
        } else {
            vectorComponent.i(gVar, this.f4734k, v1VarK);
        }
        this.f4736m = o();
    }

    public final boolean n() {
        return ((Boolean) this.f4731h.getValue()).booleanValue();
    }

    public final long p() {
        return ((y.m) this.f4730g.getValue()).m();
    }

    public final void q(boolean z10) {
        this.f4731h.setValue(Boolean.valueOf(z10));
    }

    public final void r(v1 v1Var) {
        this.f4732i.n(v1Var);
    }

    public final void t(String str) {
        this.f4732i.p(str);
    }

    public final void u(long j11) {
        this.f4730g.setValue(y.m.c(j11));
    }

    public final void v(long j11) {
        this.f4732i.q(j11);
    }
}
