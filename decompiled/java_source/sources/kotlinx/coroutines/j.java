package kotlinx.coroutines;

import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class j {
    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    public static final Object a(CoroutineContext coroutineContext, Function2 function2) {
        e1 e1VarA;
        CoroutineContext coroutineContextK;
        Thread threadCurrentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.INSTANCE);
        if (continuationInterceptor == null) {
            e1VarA = o2.f67904a.b();
            coroutineContextK = g0.k(n1.f67901a, coroutineContext.plus(e1VarA));
        } else {
            e1 e1Var = continuationInterceptor instanceof e1 ? (e1) continuationInterceptor : null;
            if (e1Var == null) {
                e1VarA = o2.f67904a.a();
            } else {
                e1 e1Var2 = e1Var.shouldBeProcessedFromContext() ? e1Var : null;
                if (e1Var2 == null) {
                    e1VarA = o2.f67904a.a();
                } else {
                    e1VarA = e1Var2;
                }
            }
            coroutineContextK = g0.k(n1.f67901a, coroutineContext);
        }
        g gVar = new g(coroutineContextK, threadCurrentThread, e1VarA);
        gVar.start(CoroutineStart.DEFAULT, gVar, function2);
        return gVar.X();
    }

    public static /* synthetic */ Object b(CoroutineContext coroutineContext, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return i.e(coroutineContext, function2);
    }
}
