package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.LimitedDispatcher;

/* JADX INFO: loaded from: classes.dex */
public abstract class i0 extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final a Key = new a(null);

    public static final class a extends AbstractCoroutineContextKey {
        private a() {
            super(ContinuationInterceptor.INSTANCE, new Function1() { // from class: kotlinx.coroutines.h0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return i0.a.d((CoroutineContext.Element) obj);
                }
            });
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final i0 d(CoroutineContext.Element element) {
            if (element instanceof i0) {
                return (i0) element;
            }
            return null;
        }
    }

    public i0() {
        super(ContinuationInterceptor.INSTANCE);
    }

    public static /* synthetic */ i0 limitedParallelism$default(i0 i0Var, int i11, String str, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: limitedParallelism");
        }
        if ((i12 & 2) != 0) {
            str = null;
        }
        return i0Var.limitedParallelism(i11, str);
    }

    public abstract void dispatch(CoroutineContext coroutineContext, Runnable runnable);

    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        dispatch(coroutineContext, runnable);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) ContinuationInterceptor.DefaultImpls.a(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final <T> Continuation<T> interceptContinuation(Continuation<? super T> continuation) {
        return new DispatchedContinuation(this, continuation);
    }

    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return true;
    }

    @Deprecated
    public /* synthetic */ i0 limitedParallelism(int i11) {
        return limitedParallelism(i11, null);
    }

    public i0 limitedParallelism(int i11, String str) {
        kotlinx.coroutines.internal.i.a(i11);
        return new LimitedDispatcher(this, i11, str);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return ContinuationInterceptor.DefaultImpls.b(this, key);
    }

    @Deprecated
    public final i0 plus(i0 i0Var) {
        return i0Var;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(Continuation<?> continuation) {
        Intrinsics.f(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((DispatchedContinuation) continuation).release$kotlinx_coroutines_core();
    }

    public String toString() {
        return p0.a(this) + '@' + p0.b(this);
    }
}
