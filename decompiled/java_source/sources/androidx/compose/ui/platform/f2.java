package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.s4;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes.dex */
public abstract class f2 {
    private static final boolean a(y.k kVar) {
        return y.a.d(kVar.h()) + y.a.d(kVar.i()) <= kVar.j() && y.a.d(kVar.b()) + y.a.d(kVar.c()) <= kVar.j() && y.a.e(kVar.h()) + y.a.e(kVar.b()) <= kVar.d() && y.a.e(kVar.i()) + y.a.e(kVar.c()) <= kVar.d();
    }

    public static final boolean b(k4 k4Var, float f11, float f12, Path path, Path path2) {
        if (k4Var instanceof k4.b) {
            return e(((k4.b) k4Var).b(), f11, f12);
        }
        if (k4Var instanceof k4.c) {
            return f((k4.c) k4Var, f11, f12, path, path2);
        }
        if (k4Var instanceof k4.a) {
            return d(((k4.a) k4Var).b(), f11, f12, path, path2);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static /* synthetic */ boolean c(k4 k4Var, float f11, float f12, Path path, Path path2, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            path = null;
        }
        if ((i11 & 16) != 0) {
            path2 = null;
        }
        return b(k4Var, f11, f12, path, path2);
    }

    private static final boolean d(Path path, float f11, float f12, Path path2, Path path3) {
        y.i iVar = new y.i(f11 - 0.005f, f12 - 0.005f, f11 + 0.005f, f12 + 0.005f);
        if (path2 == null) {
            path2 = androidx.compose.ui.graphics.x0.a();
        }
        o4.a(path2, iVar, null, 2, null);
        if (path3 == null) {
            path3 = androidx.compose.ui.graphics.x0.a();
        }
        path3.l(path, path2, s4.f4638a.b());
        boolean zIsEmpty = path3.isEmpty();
        path3.reset();
        path2.reset();
        return !zIsEmpty;
    }

    private static final boolean e(y.i iVar, float f11, float f12) {
        return iVar.f() <= f11 && f11 < iVar.g() && iVar.i() <= f12 && f12 < iVar.c();
    }

    private static final boolean f(k4.c cVar, float f11, float f12, Path path, Path path2) {
        y.k kVarB = cVar.b();
        if (f11 < kVarB.e() || f11 >= kVarB.f() || f12 < kVarB.g() || f12 >= kVarB.a()) {
            return false;
        }
        if (!a(kVarB)) {
            Path pathA = path2 == null ? androidx.compose.ui.graphics.x0.a() : path2;
            o4.b(pathA, kVarB, null, 2, null);
            return d(pathA, f11, f12, path, path2);
        }
        float fD = y.a.d(kVarB.h()) + kVarB.e();
        float fE = y.a.e(kVarB.h()) + kVarB.g();
        float f13 = kVarB.f() - y.a.d(kVarB.i());
        float fE2 = y.a.e(kVarB.i()) + kVarB.g();
        float f14 = kVarB.f() - y.a.d(kVarB.c());
        float fA = kVarB.a() - y.a.e(kVarB.c());
        float fA2 = kVarB.a() - y.a.e(kVarB.b());
        float fD2 = y.a.d(kVarB.b()) + kVarB.e();
        if (f11 < fD && f12 < fE) {
            return g(f11, f12, kVarB.h(), fD, fE);
        }
        if (f11 < fD2 && f12 > fA2) {
            return g(f11, f12, kVarB.b(), fD2, fA2);
        }
        if (f11 > f13 && f12 < fE2) {
            return g(f11, f12, kVarB.i(), f13, fE2);
        }
        if (f11 <= f14 || f12 <= fA) {
            return true;
        }
        return g(f11, f12, kVarB.c(), f14, fA);
    }

    private static final boolean g(float f11, float f12, long j11, float f13, float f14) {
        float f15 = f11 - f13;
        float f16 = f12 - f14;
        float fD = y.a.d(j11);
        float fE = y.a.e(j11);
        return ((f15 * f15) / (fD * fD)) + ((f16 * f16) / (fE * fE)) <= 1.0f;
    }
}
