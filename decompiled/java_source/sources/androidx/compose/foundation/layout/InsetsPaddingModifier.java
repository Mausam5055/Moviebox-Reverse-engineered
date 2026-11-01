package androidx.compose.foundation.layout;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class InsetsPaddingModifier implements androidx.compose.ui.layout.o, androidx.compose.ui.modifier.d, androidx.compose.ui.modifier.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0 f2754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i1 f2755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i1 f2756d;

    public InsetsPaddingModifier(h0 h0Var) {
        this.f2754b = h0Var;
        this.f2755c = u2.c(h0Var, null, 2, null);
        this.f2756d = u2.c(h0Var, null, 2, null);
    }

    private final h0 a() {
        return (h0) this.f2756d.getValue();
    }

    private final h0 i() {
        return (h0) this.f2755c.getValue();
    }

    private final void k(h0 h0Var) {
        this.f2756d.setValue(h0Var);
    }

    private final void l(h0 h0Var) {
        this.f2755c.setValue(h0Var);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InsetsPaddingModifier) {
            return Intrinsics.c(((InsetsPaddingModifier) obj).f2754b, this.f2754b);
        }
        return false;
    }

    @Override // androidx.compose.ui.modifier.d
    public void f(androidx.compose.ui.modifier.k kVar) {
        h0 h0Var = (h0) kVar.P(WindowInsetsPaddingKt.a());
        l(i0.b(this.f2754b, h0Var));
        k(i0.c(h0Var, this.f2754b));
    }

    @Override // androidx.compose.ui.modifier.j
    public androidx.compose.ui.modifier.l getKey() {
        return WindowInsetsPaddingKt.a();
    }

    public int hashCode() {
        return this.f2754b.hashCode();
    }

    @Override // androidx.compose.ui.modifier.j
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public h0 getValue() {
        return a();
    }

    @Override // androidx.compose.ui.layout.o
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        final int iC = i().c(xVar, xVar.getLayoutDirection());
        final int iA = i().a(xVar);
        int iD = i().d(xVar, xVar.getLayoutDirection()) + iC;
        int iB = i().b(xVar) + iA;
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.n(j11, -iD, -iB));
        return androidx.compose.ui.layout.w.b(xVar, o0.c.i(j11, g0VarP.u0() + iD), o0.c.h(j11, g0VarP.l0() + iB), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.InsetsPaddingModifier$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0.a.h(aVar, g0VarP, iC, iA, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
