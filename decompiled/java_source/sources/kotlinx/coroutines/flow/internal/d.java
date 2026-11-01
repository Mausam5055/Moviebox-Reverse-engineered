package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.internal.g0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {
    public static final Object b(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation) {
        Object objI = g0.i(coroutineContext, obj2);
        try {
            s sVar = new s(continuation, coroutineContext);
            Object objD = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt.d(function2, obj, sVar) : ((Function2) TypeIntrinsics.e(function2, 2)).invoke(obj, sVar);
            g0.f(coroutineContext, objI);
            if (objD == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return objD;
        } catch (Throwable th2) {
            g0.f(coroutineContext, objI);
            throw th2;
        }
    }

    public static /* synthetic */ Object c(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation, int i11, Object obj3) {
        if ((i11 & 4) != 0) {
            obj2 = g0.g(coroutineContext);
        }
        return b(coroutineContext, obj, obj2, function2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlinx.coroutines.flow.c d(kotlinx.coroutines.flow.c cVar, CoroutineContext coroutineContext) {
        return ((cVar instanceof r) || (cVar instanceof l)) ? cVar : new UndispatchedContextCollector(cVar, coroutineContext);
    }
}
