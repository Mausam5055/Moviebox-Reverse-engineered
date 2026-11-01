package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {
    public static final boolean a(n1 n1Var, q qVar) {
        Intrinsics.f(qVar, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
        return n1Var.containsKey(qVar);
    }

    public static final Object b(n1 n1Var, q qVar) {
        Intrinsics.f(qVar, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
        Object objA = n1Var.get(qVar);
        if (objA == null) {
            objA = qVar.a();
        }
        return ((g3) objA).a(n1Var);
    }

    public static final n1 c(t1[] t1VarArr, n1 n1Var, n1 n1Var2) {
        androidx.compose.runtime.internal.d.a aVarZ = androidx.compose.runtime.internal.e.a().builder();
        for (t1 t1Var : t1VarArr) {
            q qVarB = t1Var.b();
            Intrinsics.f(qVarB, "null cannot be cast to non-null type androidx.compose.runtime.ProvidableCompositionLocal<kotlin.Any?>");
            s1 s1Var = (s1) qVarB;
            if (t1Var.a() || !a(n1Var, s1Var)) {
                g3 g3Var = (g3) n1Var2.get(s1Var);
                Intrinsics.f(t1Var, "null cannot be cast to non-null type androidx.compose.runtime.ProvidedValue<kotlin.Any?>");
                aVarZ.put(s1Var, s1Var.b(t1Var, g3Var));
            }
        }
        return aVarZ.build();
    }

    public static /* synthetic */ n1 d(t1[] t1VarArr, n1 n1Var, n1 n1Var2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            n1Var2 = androidx.compose.runtime.internal.e.a();
        }
        return c(t1VarArr, n1Var, n1Var2);
    }
}
