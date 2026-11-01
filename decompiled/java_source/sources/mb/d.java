package mb;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class d {
    public static Object a(e eVar, Class cls) {
        return eVar.c(b0.b(cls));
    }

    public static Object b(e eVar, b0 b0Var) {
        ic.b bVarG = eVar.g(b0Var);
        if (bVarG == null) {
            return null;
        }
        return bVarG.get();
    }

    public static ic.a c(e eVar, Class cls) {
        return eVar.h(b0.b(cls));
    }

    public static ic.b d(e eVar, Class cls) {
        return eVar.g(b0.b(cls));
    }

    public static Set e(e eVar, Class cls) {
        return eVar.e(b0.b(cls));
    }

    public static Set f(e eVar, b0 b0Var) {
        return (Set) eVar.b(b0Var).get();
    }
}
