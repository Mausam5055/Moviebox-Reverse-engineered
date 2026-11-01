package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c0 {
    public static final Object a(Object obj, Continuation continuation) {
        if (!(obj instanceof b0)) {
            return Result.m454constructorimpl(obj);
        }
        Result.Companion companion = Result.INSTANCE;
        return Result.m454constructorimpl(ResultKt.a(((b0) obj).f67641a));
    }

    public static final Object b(Object obj) {
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(obj);
        return thM457exceptionOrNullimpl == null ? obj : new b0(thM457exceptionOrNullimpl, false, 2, null);
    }

    public static final Object c(Object obj, n nVar) {
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(obj);
        return thM457exceptionOrNullimpl == null ? obj : new b0(thM457exceptionOrNullimpl, false, 2, null);
    }
}
