package b00;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.b0;
import kotlinx.coroutines.internal.g0;
import kotlinx.coroutines.internal.v;
import kotlinx.coroutines.x1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {
    public static final void a(Function2 function2, Object obj, Continuation continuation) {
        Continuation continuationA = DebugProbesKt.a(continuation);
        try {
            CoroutineContext context = continuationA.getContext();
            Object objI = g0.i(context, null);
            try {
                DebugProbesKt.b(continuationA);
                Object objD = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt.d(function2, obj, continuationA) : ((Function2) TypeIntrinsics.e(function2, 2)).invoke(obj, continuationA);
                g0.f(context, objI);
                if (objD != IntrinsicsKt.f()) {
                    continuationA.resumeWith(Result.m454constructorimpl(objD));
                }
            } catch (Throwable th2) {
                g0.f(context, objI);
                throw th2;
            }
        } catch (Throwable th3) {
            Result.Companion companion = Result.INSTANCE;
            continuationA.resumeWith(Result.m454constructorimpl(ResultKt.a(th3)));
        }
    }

    public static final Object b(v vVar, Object obj, Function2 function2) {
        Object b0Var;
        Object objMakeCompletingOnce$kotlinx_coroutines_core;
        try {
            b0Var = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt.d(function2, obj, vVar) : ((Function2) TypeIntrinsics.e(function2, 2)).invoke(obj, vVar);
        } catch (Throwable th2) {
            b0Var = new b0(th2, false, 2, null);
        }
        if (b0Var != IntrinsicsKt.f() && (objMakeCompletingOnce$kotlinx_coroutines_core = vVar.makeCompletingOnce$kotlinx_coroutines_core(b0Var)) != x1.f68006b) {
            if (objMakeCompletingOnce$kotlinx_coroutines_core instanceof b0) {
                throw ((b0) objMakeCompletingOnce$kotlinx_coroutines_core).f67641a;
            }
            return x1.h(objMakeCompletingOnce$kotlinx_coroutines_core);
        }
        return IntrinsicsKt.f();
    }

    public static final Object c(v vVar, Object obj, Function2 function2) throws Throwable {
        Object b0Var;
        Object objMakeCompletingOnce$kotlinx_coroutines_core;
        try {
            b0Var = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt.d(function2, obj, vVar) : ((Function2) TypeIntrinsics.e(function2, 2)).invoke(obj, vVar);
        } catch (Throwable th2) {
            b0Var = new b0(th2, false, 2, null);
        }
        if (b0Var != IntrinsicsKt.f() && (objMakeCompletingOnce$kotlinx_coroutines_core = vVar.makeCompletingOnce$kotlinx_coroutines_core(b0Var)) != x1.f68006b) {
            if (objMakeCompletingOnce$kotlinx_coroutines_core instanceof b0) {
                Throwable th3 = ((b0) objMakeCompletingOnce$kotlinx_coroutines_core).f67641a;
                if (!(th3 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th3).coroutine != vVar) {
                    throw th3;
                }
                if (b0Var instanceof b0) {
                    throw ((b0) b0Var).f67641a;
                }
            } else {
                b0Var = x1.h(objMakeCompletingOnce$kotlinx_coroutines_core);
            }
            return b0Var;
        }
        return IntrinsicsKt.f();
    }
}
