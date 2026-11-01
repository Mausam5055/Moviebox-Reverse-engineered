package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.f4;
import androidx.compose.ui.graphics.v1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import o0.u;

/* JADX INFO: loaded from: classes.dex */
public final class VectorComponent extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final GroupComponent f4718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4719c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4720d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f4721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function0 f4722f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final i1 f4723g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private v1 f4724h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final i1 f4725i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f4726j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f4727k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f4728l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Function1 f4729m;

    public VectorComponent(GroupComponent groupComponent) {
        super(null);
        this.f4718b = groupComponent;
        groupComponent.d(new Function1<i, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComponent.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((i) obj);
                return Unit.f67061a;
            }

            public final void invoke(i iVar) {
                VectorComponent.this.h();
            }
        });
        this.f4719c = "";
        this.f4720d = true;
        this.f4721e = new a();
        this.f4722f = new Function0<Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComponent$invalidateCallback$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m113invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m113invoke() {
            }
        };
        this.f4723g = u2.c(null, null, 2, null);
        y.m.a aVar = y.m.f78491b;
        this.f4725i = u2.c(y.m.c(aVar.b()), null, 2, null);
        this.f4726j = aVar.a();
        this.f4727k = 1.0f;
        this.f4728l = 1.0f;
        this.f4729m = new Function1<z.g, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComponent$drawVectorBlock$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z.g) obj);
                return Unit.f67061a;
            }

            public final void invoke(z.g gVar) {
                GroupComponent groupComponentL = this.this$0.l();
                VectorComponent vectorComponent = this.this$0;
                float f11 = vectorComponent.f4727k;
                float f12 = vectorComponent.f4728l;
                long jC = y.g.f78470b.c();
                z.d dVarH0 = gVar.H0();
                long jI = dVarH0.i();
                dVarH0.e().n();
                try {
                    dVarH0.c().e(f11, f12, jC);
                    groupComponentL.a(gVar);
                } finally {
                    dVarH0.e().j();
                    dVarH0.f(jI);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        this.f4720d = true;
        this.f4722f.invoke();
    }

    @Override // androidx.compose.ui.graphics.vector.i
    public void a(z.g gVar) {
        i(gVar, 1.0f, null);
    }

    public final void i(z.g gVar, float f11, v1 v1Var) {
        int iA = (this.f4718b.j() && this.f4718b.g() != 16 && k.f(k()) && k.f(v1Var)) ? f4.f4439b.a() : f4.f4439b.b();
        if (this.f4720d || !y.m.f(this.f4726j, gVar.i()) || !f4.i(iA, j())) {
            this.f4724h = f4.i(iA, f4.f4439b.a()) ? v1.a.b(v1.f4675b, this.f4718b.g(), 0, 2, null) : null;
            this.f4727k = y.m.i(gVar.i()) / y.m.i(m());
            this.f4728l = y.m.g(gVar.i()) / y.m.g(m());
            this.f4721e.b(iA, u.a((int) Math.ceil(y.m.i(gVar.i())), (int) Math.ceil(y.m.g(gVar.i()))), gVar, gVar.getLayoutDirection(), this.f4729m);
            this.f4720d = false;
            this.f4726j = gVar.i();
        }
        if (v1Var == null) {
            v1Var = k() != null ? k() : this.f4724h;
        }
        this.f4721e.c(gVar, f11, v1Var);
    }

    public final int j() {
        e4 e4VarD = this.f4721e.d();
        return e4VarD != null ? e4VarD.b() : f4.f4439b.b();
    }

    public final v1 k() {
        return (v1) this.f4723g.getValue();
    }

    public final GroupComponent l() {
        return this.f4718b;
    }

    public final long m() {
        return ((y.m) this.f4725i.getValue()).m();
    }

    public final void n(v1 v1Var) {
        this.f4723g.setValue(v1Var);
    }

    public final void o(Function0 function0) {
        this.f4722f = function0;
    }

    public final void p(String str) {
        this.f4719c = str;
    }

    public final void q(long j11) {
        this.f4725i.setValue(y.m.c(j11));
    }

    public String toString() {
        String str = "Params: \tname: " + this.f4719c + "\n\tviewportWidth: " + y.m.i(m()) + "\n\tviewportHeight: " + y.m.g(m()) + "\n";
        Intrinsics.g(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }
}
