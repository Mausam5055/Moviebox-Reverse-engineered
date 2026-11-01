package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
public abstract class TimeoutKt {
    public static final TimeoutCancellationException a(long j11, t0 t0Var, t1 t1Var) {
        return new TimeoutCancellationException("Timed out waiting for " + j11 + " ms", t1Var);
    }

    private static final Object b(TimeoutCoroutine timeoutCoroutine, Function2 function2) {
        v1.h(timeoutCoroutine, u0.b(timeoutCoroutine.uCont.getF67028a()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.getF67028a()));
        return b00.b.c(timeoutCoroutine, timeoutCoroutine, function2);
    }

    public static final Object c(long j11, Function2 function2, Continuation continuation) {
        if (j11 <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        Object objB = b(new TimeoutCoroutine(j11, continuation), function2);
        if (objB == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objB;
    }

    public static final Object d(long j11, Function2 function2, Continuation continuation) {
        return c(u0.c(j11), function2, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.TimeoutCoroutine] */
    public static final Object e(long j11, Function2 function2, Continuation continuation) {
        TimeoutKt$withTimeoutOrNull$1 timeoutKt$withTimeoutOrNull$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof TimeoutKt$withTimeoutOrNull$1) {
            timeoutKt$withTimeoutOrNull$1 = (TimeoutKt$withTimeoutOrNull$1) continuation;
            int i11 = timeoutKt$withTimeoutOrNull$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                timeoutKt$withTimeoutOrNull$1.label = i11 - Integer.MIN_VALUE;
            } else {
                timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuation);
            }
        } else {
            timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuation);
        }
        Object obj = timeoutKt$withTimeoutOrNull$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = timeoutKt$withTimeoutOrNull$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (j11 <= 0) {
                return null;
            }
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            try {
                timeoutKt$withTimeoutOrNull$1.L$0 = function2;
                timeoutKt$withTimeoutOrNull$1.L$1 = objectRef2;
                timeoutKt$withTimeoutOrNull$1.J$0 = j11;
                timeoutKt$withTimeoutOrNull$1.label = 1;
                ?? timeoutCoroutine = new TimeoutCoroutine(j11, timeoutKt$withTimeoutOrNull$1);
                objectRef2.element = timeoutCoroutine;
                Object objB = b(timeoutCoroutine, function2);
                if (objB == IntrinsicsKt.f()) {
                    DebugProbesKt.c(timeoutKt$withTimeoutOrNull$1);
                }
                return objB == objF ? objF : objB;
            } catch (TimeoutCancellationException e11) {
                e = e11;
                objectRef = objectRef2;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) timeoutKt$withTimeoutOrNull$1.L$1;
            try {
                ResultKt.b(obj);
                return obj;
            } catch (TimeoutCancellationException e12) {
                e = e12;
            }
        }
        if (e.coroutine == objectRef.element) {
            return null;
        }
        throw e;
    }
}
