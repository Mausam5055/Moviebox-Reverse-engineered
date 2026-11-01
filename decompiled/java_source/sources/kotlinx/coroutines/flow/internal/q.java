package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.v;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {
    public static final void b(final SafeCollector safeCollector, CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new Function2() { // from class: kotlinx.coroutines.flow.internal.o
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(q.c(safeCollector, ((Integer) obj).intValue(), (CoroutineContext.Element) obj2));
            }
        })).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(SafeCollector safeCollector, int i11, CoroutineContext.Element element) {
        CoroutineContext.Key key = element.getKey();
        CoroutineContext.Element element2 = safeCollector.collectContext.get(key);
        if (key != t1.f67996l1) {
            if (element != element2) {
                return Integer.MIN_VALUE;
            }
            return i11 + 1;
        }
        t1 t1Var = (t1) element2;
        Intrinsics.f(element, "null cannot be cast to non-null type kotlinx.coroutines.Job");
        t1 t1VarD = d((t1) element, t1Var);
        if (t1VarD == t1Var) {
            return t1Var == null ? i11 : i11 + 1;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + t1VarD + ", expected child of " + t1Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }

    public static final t1 d(t1 t1Var, t1 t1Var2) {
        while (t1Var != null) {
            if (t1Var == t1Var2 || !(t1Var instanceof v)) {
                return t1Var;
            }
            t1Var = ((v) t1Var).getParent();
        }
        return null;
    }
}
