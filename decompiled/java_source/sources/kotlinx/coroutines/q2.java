package kotlinx.coroutines;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
public final class q2 extends kotlinx.coroutines.internal.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadLocal f67911a;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public q2(CoroutineContext coroutineContext, Continuation continuation) {
        r2 r2Var = r2.f67915a;
        super(coroutineContext.get(r2Var) == null ? coroutineContext.plus(r2Var) : coroutineContext, continuation);
        this.f67911a = new ThreadLocal();
        if (continuation.getContext().get(ContinuationInterceptor.INSTANCE) instanceof i0) {
            return;
        }
        Object objI = kotlinx.coroutines.internal.g0.i(coroutineContext, null);
        kotlinx.coroutines.internal.g0.f(coroutineContext, objI);
        Y(coroutineContext, objI);
    }

    public final boolean X() {
        boolean z10 = this.threadLocalIsSet && this.f67911a.get() == null;
        this.f67911a.remove();
        return !z10;
    }

    public final void Y(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.f67911a.set(TuplesKt.a(coroutineContext, obj));
    }

    @Override // kotlinx.coroutines.internal.v, kotlinx.coroutines.a
    protected void afterResume(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f67911a.get();
            if (pair != null) {
                kotlinx.coroutines.internal.g0.f((CoroutineContext) pair.component1(), pair.component2());
            }
            this.f67911a.remove();
        }
        Object objA = c0.a(obj, this.uCont);
        Continuation<Object> continuation = this.uCont;
        CoroutineContext context = continuation.getContext();
        Object objI = kotlinx.coroutines.internal.g0.i(context, null);
        q2 q2VarM = objI != kotlinx.coroutines.internal.g0.f67855a ? g0.m(continuation, context, objI) : null;
        try {
            this.uCont.resumeWith(objA);
            Unit unit = Unit.f67061a;
        } finally {
            if (q2VarM == null || q2VarM.X()) {
                kotlinx.coroutines.internal.g0.f(context, objI);
            }
        }
    }
}
