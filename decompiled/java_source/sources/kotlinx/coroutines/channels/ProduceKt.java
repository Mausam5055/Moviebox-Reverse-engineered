package kotlinx.coroutines.channels;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.g0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ProduceKt {

    static final class a implements Function1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.n f67680a;

        a(kotlinx.coroutines.n nVar) {
            this.f67680a = nVar;
        }

        public final void a(Throwable th2) {
            kotlinx.coroutines.n nVar = this.f67680a;
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(o oVar, Function0 function0, Continuation continuation) throws Throwable {
        ProduceKt$awaitClose$1 produceKt$awaitClose$1;
        if (continuation instanceof ProduceKt$awaitClose$1) {
            produceKt$awaitClose$1 = (ProduceKt$awaitClose$1) continuation;
            int i11 = produceKt$awaitClose$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                produceKt$awaitClose$1.label = i11 - Integer.MIN_VALUE;
            } else {
                produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuation);
            }
        } else {
            produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuation);
        }
        Object obj = produceKt$awaitClose$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = produceKt$awaitClose$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                if (produceKt$awaitClose$1.getContext().get(t1.f67996l1) != oVar) {
                    throw new IllegalStateException("awaitClose() can only be invoked from the producer context");
                }
                produceKt$awaitClose$1.L$0 = oVar;
                produceKt$awaitClose$1.L$1 = function0;
                produceKt$awaitClose$1.label = 1;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(produceKt$awaitClose$1), 1);
                cancellableContinuationImpl.initCancellability();
                oVar.a(new a(cancellableContinuationImpl));
                Object result = cancellableContinuationImpl.getResult();
                if (result == IntrinsicsKt.f()) {
                    DebugProbesKt.c(produceKt$awaitClose$1);
                }
                if (result == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function0 = (Function0) produceKt$awaitClose$1.L$1;
                ResultKt.b(obj);
            }
            function0.invoke();
            return Unit.f67061a;
        } catch (Throwable th2) {
            function0.invoke();
            throw th2;
        }
    }

    public static final q b(n0 n0Var, CoroutineContext coroutineContext, int i11, Function2 function2) {
        return c(n0Var, coroutineContext, i11, BufferOverflow.SUSPEND, CoroutineStart.DEFAULT, null, function2);
    }

    public static final q c(n0 n0Var, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2) {
        n nVar = new n(g0.k(n0Var, coroutineContext), g.b(i11, bufferOverflow, null, 4, null));
        if (function1 != null) {
            nVar.invokeOnCompletion(function1);
        }
        nVar.start(coroutineStart, nVar, function2);
        return nVar;
    }

    public static /* synthetic */ q d(n0 n0Var, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        int i13 = i11;
        if ((i12 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if ((i12 & 8) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i12 & 16) != 0) {
            function1 = null;
        }
        return c(n0Var, coroutineContext2, i13, bufferOverflow2, coroutineStart2, function1, function2);
    }
}
