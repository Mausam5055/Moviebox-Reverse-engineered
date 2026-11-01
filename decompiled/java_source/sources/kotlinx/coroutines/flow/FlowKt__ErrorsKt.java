package kotlinx.coroutines.flow;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.t1;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class FlowKt__ErrorsKt {
    public static final b a(b bVar, Function3 function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(bVar, function3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object b(b bVar, c cVar, Continuation continuation) throws Throwable {
        FlowKt__ErrorsKt$catchImpl$1 flowKt__ErrorsKt$catchImpl$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ErrorsKt$catchImpl$1) {
            flowKt__ErrorsKt$catchImpl$1 = (FlowKt__ErrorsKt$catchImpl$1) continuation;
            int i11 = flowKt__ErrorsKt$catchImpl$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                flowKt__ErrorsKt$catchImpl$1.label = i11 - Integer.MIN_VALUE;
            } else {
                flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuation);
            }
        } else {
            flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuation);
        }
        Object obj = flowKt__ErrorsKt$catchImpl$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = flowKt__ErrorsKt$catchImpl$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            try {
                c flowKt__ErrorsKt$catchImpl$2 = new FlowKt__ErrorsKt$catchImpl$2(cVar, objectRef2);
                flowKt__ErrorsKt$catchImpl$1.L$0 = objectRef2;
                flowKt__ErrorsKt$catchImpl$1.label = 1;
                if (bVar.a(flowKt__ErrorsKt$catchImpl$2, flowKt__ErrorsKt$catchImpl$1) == objF) {
                    return objF;
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                objectRef = objectRef2;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ErrorsKt$catchImpl$1.L$0;
            try {
                ResultKt.b(obj);
                return null;
            } catch (Throwable th3) {
                th = th3;
            }
        }
        Throwable th4 = (Throwable) objectRef.element;
        if (d(th, th4) || c(th, flowKt__ErrorsKt$catchImpl$1.getContext())) {
            throw th;
        }
        if (th4 == null) {
            return th;
        }
        if (th instanceof CancellationException) {
            ExceptionsKt.a(th4, th);
            throw th4;
        }
        ExceptionsKt.a(th, th4);
        throw th;
    }

    private static final boolean c(Throwable th2, CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.f67996l1);
        if (t1Var == null || !t1Var.isCancelled()) {
            return false;
        }
        return d(th2, t1Var.getCancellationException());
    }

    private static final boolean d(Throwable th2, Throwable th3) {
        return th3 != null && Intrinsics.c(th3, th2);
    }

    public static final b e(b bVar, long j11, Function2 function2) {
        if (j11 > 0) {
            return d.E(bVar, new FlowKt__ErrorsKt$retry$3(j11, function2, null));
        }
        throw new IllegalArgumentException(("Expected positive amount of retries, but had " + j11).toString());
    }

    public static /* synthetic */ b f(b bVar, long j11, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = Long.MAX_VALUE;
        }
        if ((i11 & 2) != 0) {
            function2 = new FlowKt__ErrorsKt$retry$1(null);
        }
        return d.C(bVar, j11, function2);
    }

    public static final b g(b bVar, Function4 function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(bVar, function4);
    }
}
