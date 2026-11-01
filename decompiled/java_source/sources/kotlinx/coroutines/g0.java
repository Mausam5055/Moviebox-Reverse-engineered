package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    private static final CoroutineContext d(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, final boolean z10) {
        boolean zH = h(coroutineContext);
        boolean zH2 = h(coroutineContext2);
        if (!zH && !zH2) {
            return coroutineContext.plus(coroutineContext2);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new Function2() { // from class: kotlinx.coroutines.e0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return g0.e(objectRef, z10, (CoroutineContext) obj, (CoroutineContext.Element) obj2);
            }
        });
        if (zH2) {
            objectRef.element = ((CoroutineContext) objectRef.element).fold(emptyCoroutineContext, new Function2() { // from class: kotlinx.coroutines.f0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return g0.f((CoroutineContext) obj, (CoroutineContext.Element) obj2);
                }
            });
        }
        return coroutineContext3.plus((CoroutineContext) objectRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineContext e(Ref.ObjectRef objectRef, boolean z10, CoroutineContext coroutineContext, CoroutineContext.Element element) {
        return coroutineContext.plus(element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineContext f(CoroutineContext coroutineContext, CoroutineContext.Element element) {
        return coroutineContext.plus(element);
    }

    public static final String g(CoroutineContext coroutineContext) {
        return null;
    }

    private static final boolean h(CoroutineContext coroutineContext) {
        return ((Boolean) coroutineContext.fold(Boolean.FALSE, new Function2() { // from class: kotlinx.coroutines.d0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(g0.i(((Boolean) obj).booleanValue(), (CoroutineContext.Element) obj2));
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean i(boolean z10, CoroutineContext.Element element) {
        return z10;
    }

    public static final CoroutineContext j(CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
        return !h(coroutineContext2) ? coroutineContext.plus(coroutineContext2) : d(coroutineContext, coroutineContext2, false);
    }

    public static final CoroutineContext k(n0 n0Var, CoroutineContext coroutineContext) {
        CoroutineContext coroutineContextD = d(n0Var.getCoroutineContext(), coroutineContext, true);
        return (coroutineContextD == y0.a() || coroutineContextD.get(ContinuationInterceptor.INSTANCE) != null) ? coroutineContextD : coroutineContextD.plus(y0.a());
    }

    public static final q2 l(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof v0) && (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) != null) {
            if (coroutineStackFrame instanceof q2) {
                return (q2) coroutineStackFrame;
            }
        }
        return null;
    }

    public static final q2 m(Continuation continuation, CoroutineContext coroutineContext, Object obj) {
        if (!(continuation instanceof CoroutineStackFrame) || coroutineContext.get(r2.f67915a) == null) {
            return null;
        }
        q2 q2VarL = l((CoroutineStackFrame) continuation);
        if (q2VarL != null) {
            q2VarL.Y(coroutineContext, obj);
        }
        return q2VarL;
    }
}
