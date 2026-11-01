package androidx.compose.ui.graphics;

import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes.dex */
public abstract class l4 {
    public static final void a(z.g gVar, k4 k4Var, j1 j1Var, float f11, z.h hVar, v1 v1Var, int i11) {
        Path pathB;
        if (k4Var instanceof k4.b) {
            y.i iVarB = ((k4.b) k4Var).b();
            gVar.N0(j1Var, g(iVarB), e(iVarB), f11, hVar, v1Var, i11);
            return;
        }
        if (k4Var instanceof k4.c) {
            k4.c cVar = (k4.c) k4Var;
            pathB = cVar.c();
            if (pathB == null) {
                y.k kVarB = cVar.b();
                gVar.V0(j1Var, h(kVarB), f(kVarB), y.b.b(y.a.d(kVarB.b()), 0.0f, 2, null), f11, hVar, v1Var, i11);
                return;
            }
        } else {
            if (!(k4Var instanceof k4.a)) {
                throw new NoWhenBranchMatchedException();
            }
            pathB = ((k4.a) k4Var).b();
        }
        gVar.i0(pathB, j1Var, f11, hVar, v1Var, i11);
    }

    public static /* synthetic */ void b(z.g gVar, k4 k4Var, j1 j1Var, float f11, z.h hVar, v1 v1Var, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            f11 = 1.0f;
        }
        float f12 = f11;
        if ((i12 & 8) != 0) {
            hVar = z.l.f79114a;
        }
        z.h hVar2 = hVar;
        if ((i12 & 16) != 0) {
            v1Var = null;
        }
        v1 v1Var2 = v1Var;
        if ((i12 & 32) != 0) {
            i11 = z.g.f79110o1.a();
        }
        a(gVar, k4Var, j1Var, f12, hVar2, v1Var2, i11);
    }

    public static final void c(z.g gVar, k4 k4Var, long j11, float f11, z.h hVar, v1 v1Var, int i11) {
        Path pathB;
        if (k4Var instanceof k4.b) {
            y.i iVarB = ((k4.b) k4Var).b();
            gVar.L0(j11, g(iVarB), e(iVarB), f11, hVar, v1Var, i11);
            return;
        }
        if (k4Var instanceof k4.c) {
            k4.c cVar = (k4.c) k4Var;
            pathB = cVar.c();
            if (pathB == null) {
                y.k kVarB = cVar.b();
                gVar.T(j11, h(kVarB), f(kVarB), y.b.b(y.a.d(kVarB.b()), 0.0f, 2, null), hVar, f11, v1Var, i11);
                return;
            }
        } else {
            if (!(k4Var instanceof k4.a)) {
                throw new NoWhenBranchMatchedException();
            }
            pathB = ((k4.a) k4Var).b();
        }
        gVar.D0(pathB, j11, f11, hVar, v1Var, i11);
    }

    private static final long e(y.i iVar) {
        return y.n.a(iVar.k(), iVar.e());
    }

    private static final long f(y.k kVar) {
        return y.n.a(kVar.j(), kVar.d());
    }

    private static final long g(y.i iVar) {
        return y.h.a(iVar.f(), iVar.i());
    }

    private static final long h(y.k kVar) {
        return y.h.a(kVar.e(), kVar.g());
    }
}
