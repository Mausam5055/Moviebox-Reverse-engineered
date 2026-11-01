package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o2;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final z f67853a = new z("UNDEFINED");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final z f67854b = new z("REUSABLE_CLAIMED");

    public static final void b(Continuation continuation, Object obj) {
        if (!(continuation instanceof DispatchedContinuation)) {
            continuation.resumeWith(obj);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        Object objB = kotlinx.coroutines.c0.b(obj);
        if (dispatchedContinuation.dispatcher.isDispatchNeeded(dispatchedContinuation.getContext())) {
            dispatchedContinuation._state = objB;
            dispatchedContinuation.resumeMode = 1;
            dispatchedContinuation.dispatcher.dispatch(dispatchedContinuation.getContext(), dispatchedContinuation);
            return;
        }
        e1 e1VarB = o2.f67904a.b();
        if (e1VarB.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = objB;
            dispatchedContinuation.resumeMode = 1;
            e1VarB.dispatchUnconfined(dispatchedContinuation);
            return;
        }
        e1VarB.incrementUseCount(true);
        try {
            t1 t1Var = (t1) dispatchedContinuation.getContext().get(t1.f67996l1);
            if (t1Var == null || t1Var.isActive()) {
                Continuation<T> continuation2 = dispatchedContinuation.continuation;
                Object obj2 = dispatchedContinuation.countOrElement;
                CoroutineContext context = continuation2.getContext();
                Object objI = g0.i(context, obj2);
                q2 q2VarM = objI != g0.f67855a ? kotlinx.coroutines.g0.m(continuation2, context, objI) : null;
                try {
                    dispatchedContinuation.continuation.resumeWith(obj);
                    Unit unit = Unit.f67061a;
                    if (q2VarM == null || q2VarM.X()) {
                        g0.f(context, objI);
                    }
                } catch (Throwable th2) {
                    if (q2VarM == null || q2VarM.X()) {
                        g0.f(context, objI);
                    }
                    throw th2;
                }
            } else {
                CancellationException cancellationException = t1Var.getCancellationException();
                dispatchedContinuation.cancelCompletedResult$kotlinx_coroutines_core(objB, cancellationException);
                Result.Companion companion = Result.INSTANCE;
                dispatchedContinuation.resumeWith(Result.m454constructorimpl(ResultKt.a(cancellationException)));
            }
            while (e1VarB.processUnconfinedEvent()) {
            }
        } catch (Throwable th3) {
            try {
                dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th3);
            } finally {
                e1VarB.decrementUseCount(true);
            }
        }
    }

    public static final boolean c(DispatchedContinuation dispatchedContinuation) {
        Unit unit = Unit.f67061a;
        e1 e1VarB = o2.f67904a.b();
        if (e1VarB.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (e1VarB.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = unit;
            dispatchedContinuation.resumeMode = 1;
            e1VarB.dispatchUnconfined(dispatchedContinuation);
            return true;
        }
        e1VarB.incrementUseCount(true);
        try {
            dispatchedContinuation.run();
            do {
            } while (e1VarB.processUnconfinedEvent());
        } catch (Throwable th2) {
            try {
                dispatchedContinuation.handleFatalException$kotlinx_coroutines_core(th2);
            } finally {
                e1VarB.decrementUseCount(true);
            }
        }
        return false;
    }
}
