package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuation;

/* JADX INFO: loaded from: classes7.dex */
public abstract class w0 {
    public static final void a(DispatchedTask dispatchedTask, int i11) {
        Continuation delegate$kotlinx_coroutines_core = dispatchedTask.getDelegate$kotlinx_coroutines_core();
        boolean z10 = i11 == 4;
        if (z10 || !(delegate$kotlinx_coroutines_core instanceof DispatchedContinuation) || b(i11) != b(dispatchedTask.resumeMode)) {
            d(dispatchedTask, delegate$kotlinx_coroutines_core, z10);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) delegate$kotlinx_coroutines_core;
        i0 i0Var = dispatchedContinuation.dispatcher;
        CoroutineContext f67028a = dispatchedContinuation.getContext();
        if (i0Var.isDispatchNeeded(f67028a)) {
            i0Var.dispatch(f67028a, dispatchedTask);
        } else {
            e(dispatchedTask);
        }
    }

    public static final boolean b(int i11) {
        return i11 == 1 || i11 == 2;
    }

    public static final boolean c(int i11) {
        return i11 == 2;
    }

    public static final void d(DispatchedTask dispatchedTask, Continuation continuation, boolean z10) {
        Object successfulResult$kotlinx_coroutines_core;
        Object objTakeState$kotlinx_coroutines_core = dispatchedTask.takeState$kotlinx_coroutines_core();
        Throwable exceptionalResult$kotlinx_coroutines_core = dispatchedTask.getExceptionalResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            Result.Companion companion = Result.INSTANCE;
            successfulResult$kotlinx_coroutines_core = ResultKt.a(exceptionalResult$kotlinx_coroutines_core);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            successfulResult$kotlinx_coroutines_core = dispatchedTask.getSuccessfulResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core);
        }
        Object objM454constructorimpl = Result.m454constructorimpl(successfulResult$kotlinx_coroutines_core);
        if (!z10) {
            continuation.resumeWith(objM454constructorimpl);
            return;
        }
        Intrinsics.f(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        Continuation<T> continuation2 = dispatchedContinuation.continuation;
        Object obj = dispatchedContinuation.countOrElement;
        CoroutineContext f67028a = continuation2.getContext();
        Object objI = kotlinx.coroutines.internal.g0.i(f67028a, obj);
        q2 q2VarM = objI != kotlinx.coroutines.internal.g0.f67855a ? g0.m(continuation2, f67028a, objI) : null;
        try {
            dispatchedContinuation.continuation.resumeWith(objM454constructorimpl);
            Unit unit = Unit.f67061a;
        } finally {
            if (q2VarM == null || q2VarM.X()) {
                kotlinx.coroutines.internal.g0.f(f67028a, objI);
            }
        }
    }

    private static final void e(DispatchedTask dispatchedTask) {
        e1 e1VarB = o2.f67904a.b();
        if (e1VarB.isUnconfinedLoopActive()) {
            e1VarB.dispatchUnconfined(dispatchedTask);
            return;
        }
        e1VarB.incrementUseCount(true);
        try {
            d(dispatchedTask, dispatchedTask.getDelegate$kotlinx_coroutines_core(), true);
            do {
            } while (e1VarB.processUnconfinedEvent());
        } catch (Throwable th2) {
            try {
                dispatchedTask.handleFatalException$kotlinx_coroutines_core(th2);
            } finally {
                e1VarB.decrementUseCount(true);
            }
        }
    }
}
