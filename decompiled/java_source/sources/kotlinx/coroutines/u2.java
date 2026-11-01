package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlinx.coroutines.internal.DispatchedContinuation;

/* JADX INFO: loaded from: classes7.dex */
public abstract class u2 {
    public static final Object a(Continuation continuation) {
        Object objF;
        CoroutineContext context = continuation.getContext();
        v1.i(context);
        Continuation continuationC = IntrinsicsKt.c(continuation);
        DispatchedContinuation dispatchedContinuation = continuationC instanceof DispatchedContinuation ? (DispatchedContinuation) continuationC : null;
        if (dispatchedContinuation == null) {
            objF = Unit.f67061a;
        } else {
            if (dispatchedContinuation.dispatcher.isDispatchNeeded(context)) {
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(context, Unit.f67061a);
            } else {
                t2 t2Var = new t2();
                CoroutineContext coroutineContextPlus = context.plus(t2Var);
                Unit unit = Unit.f67061a;
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(coroutineContextPlus, unit);
                objF = (!t2Var.f67999a || kotlinx.coroutines.internal.g.c(dispatchedContinuation)) ? IntrinsicsKt.f() : unit;
            }
            objF = IntrinsicsKt.f();
        }
        if (objF == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objF == IntrinsicsKt.f() ? objF : Unit.f67061a;
    }
}
