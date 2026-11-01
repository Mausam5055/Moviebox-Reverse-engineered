package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import kotlin.Unit;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    public static final VectorPainter a(VectorPainter vectorPainter, long j11, long j12, String str, v1 v1Var, boolean z10) {
        vectorPainter.u(j11);
        vectorPainter.q(z10);
        vectorPainter.r(v1Var);
        vectorPainter.v(j12);
        vectorPainter.t(str);
        return vectorPainter;
    }

    private static final v1 b(long j11, int i11) {
        if (j11 != 16) {
            return v1.f4675b.a(j11, i11);
        }
        return null;
    }

    public static final GroupComponent c(GroupComponent groupComponent, j jVar) {
        int iO = jVar.o();
        for (int i11 = 0; i11 < iO; i11++) {
            l lVarC = jVar.c(i11);
            if (lVarC instanceof n) {
                PathComponent pathComponent = new PathComponent();
                n nVar = (n) lVarC;
                pathComponent.k(nVar.f());
                pathComponent.l(nVar.h());
                pathComponent.j(nVar.e());
                pathComponent.h(nVar.a());
                pathComponent.i(nVar.c());
                pathComponent.m(nVar.j());
                pathComponent.n(nVar.l());
                pathComponent.r(nVar.p());
                pathComponent.o(nVar.m());
                pathComponent.p(nVar.n());
                pathComponent.q(nVar.o());
                pathComponent.u(nVar.s());
                pathComponent.s(nVar.q());
                pathComponent.t(nVar.r());
                groupComponent.i(i11, pathComponent);
            } else if (lVarC instanceof j) {
                GroupComponent groupComponent2 = new GroupComponent();
                j jVar2 = (j) lVarC;
                groupComponent2.p(jVar2.f());
                groupComponent2.s(jVar2.l());
                groupComponent2.t(jVar2.m());
                groupComponent2.u(jVar2.n());
                groupComponent2.v(jVar2.p());
                groupComponent2.w(jVar2.q());
                groupComponent2.q(jVar2.h());
                groupComponent2.r(jVar2.j());
                groupComponent2.o(jVar2.e());
                c(groupComponent2, jVar2);
                groupComponent.i(i11, groupComponent2);
            }
        }
        return groupComponent;
    }

    public static final VectorPainter d(o0.e eVar, c cVar, GroupComponent groupComponent) {
        long jE = e(eVar, cVar.e(), cVar.d());
        return a(new VectorPainter(groupComponent), jE, f(jE, cVar.l(), cVar.k()), cVar.g(), b(cVar.j(), cVar.i()), cVar.c());
    }

    private static final long e(o0.e eVar, float f11, float f12) {
        return y.n.a(eVar.E0(f11), eVar.E0(f12));
    }

    private static final long f(long j11, float f11, float f12) {
        if (Float.isNaN(f11)) {
            f11 = y.m.i(j11);
        }
        if (Float.isNaN(f12)) {
            f12 = y.m.g(j11);
        }
        return y.n.a(f11, f12);
    }

    public static final VectorPainter g(c cVar, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1413834416, i11, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:171)");
        }
        o0.e eVar = (o0.e) iVar.l(CompositionLocalsKt.c());
        float f11 = cVar.f();
        boolean zD = iVar.d((((long) Float.floatToRawIntBits(eVar.getDensity())) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
        Object objY = iVar.y();
        if (zD || objY == androidx.compose.runtime.i.f3736a.a()) {
            GroupComponent groupComponent = new GroupComponent();
            c(groupComponent, cVar.h());
            Unit unit = Unit.f67061a;
            objY = d(eVar, cVar, groupComponent);
            iVar.p(objY);
        }
        VectorPainter vectorPainter = (VectorPainter) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return vectorPainter;
    }
}
