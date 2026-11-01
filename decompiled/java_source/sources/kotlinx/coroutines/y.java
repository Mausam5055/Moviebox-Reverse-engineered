package kotlinx.coroutines;

import kotlin.Result;

/* JADX INFO: loaded from: classes7.dex */
public abstract class y {
    public static final w a(t1 t1Var) {
        return new x(t1Var);
    }

    public static /* synthetic */ w b(t1 t1Var, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            t1Var = null;
        }
        return a(t1Var);
    }

    public static final boolean c(w wVar, Object obj) {
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(obj);
        return thM457exceptionOrNullimpl == null ? wVar.n(obj) : wVar.b(thM457exceptionOrNullimpl);
    }
}
