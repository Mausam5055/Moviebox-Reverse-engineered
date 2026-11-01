package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class s1 extends q {
    public s1(Function0 function0) {
        super(function0, null);
    }

    private final g3 f(t1 t1Var) {
        if (!t1Var.i()) {
            if (t1Var.c() != null) {
                return new x(t1Var.c());
            }
            return t1Var.f() != null ? new f0(t1Var.f()) : new c3(t1Var.d());
        }
        i1 i1VarF = t1Var.f();
        if (i1VarF == null) {
            Object objG = t1Var.g();
            q2 q2VarE = t1Var.e();
            if (q2VarE == null) {
                q2VarE = r2.j();
            }
            i1VarF = r2.e(objG, q2VarE);
        }
        return new f0(i1VarF);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034 A[PHI: r5
  0x0034: PHI (r5v2 androidx.compose.runtime.g3) = (r5v5 androidx.compose.runtime.g3), (r5v6 androidx.compose.runtime.g3) binds: [B:17:0x0044, B:12:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.runtime.q
    public g3 b(t1 t1Var, g3 g3Var) {
        x xVar;
        g3 g3Var2;
        c3 c3Var;
        f0 f0Var;
        g3 g3Var3 = null;
        g3Var3 = null;
        g3Var3 = null;
        g3Var3 = null;
        g3Var3 = null;
        if (g3Var instanceof f0) {
            if (t1Var.i()) {
                f0Var = (f0) g3Var;
                f0Var.b().setValue(t1Var.d());
            }
        } else if (g3Var instanceof c3) {
            if (t1Var.j()) {
                c3Var = (c3) g3Var;
                if (Intrinsics.c(t1Var.d(), c3Var.b())) {
                    g3Var2 = xVar;
                    g3Var2 = c3Var;
                    g3Var3 = g3Var2;
                }
            }
        } else if (g3Var instanceof x) {
            xVar = (x) g3Var;
            if (t1Var.c() == xVar.b()) {
                g3Var2 = xVar;
                g3Var2 = c3Var;
                g3Var3 = g3Var2;
            }
        }
        if (g3Var3 == null) {
            g3Var3 = f0Var;
            return f(t1Var);
        }
        g3Var3 = f0Var;
        return g3Var3;
    }

    public abstract t1 c(Object obj);

    public final t1 d(Object obj) {
        return c(obj);
    }

    public final t1 e(Object obj) {
        return c(obj).h();
    }
}
