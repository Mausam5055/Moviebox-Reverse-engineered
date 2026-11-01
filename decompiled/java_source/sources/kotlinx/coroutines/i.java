package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
public abstract class i {
    public static final r0 a(n0 n0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        return k.a(n0Var, coroutineContext, coroutineStart, function2);
    }

    public static final t1 c(n0 n0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        return k.c(n0Var, coroutineContext, coroutineStart, function2);
    }

    public static /* synthetic */ t1 d(n0 n0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i11, Object obj) {
        return k.d(n0Var, coroutineContext, coroutineStart, function2, i11, obj);
    }

    public static final Object e(CoroutineContext coroutineContext, Function2 function2) {
        return j.a(coroutineContext, function2);
    }

    public static final Object g(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        return k.e(coroutineContext, function2, continuation);
    }
}
