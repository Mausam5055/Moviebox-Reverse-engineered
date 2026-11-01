package kotlinx.coroutines.flow;

import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class FlowKt__EmittersKt {
    public static final void b(c cVar) {
        if (cVar instanceof l1) {
            throw ((l1) cVar).f67823a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(c cVar, Function3 function3, Throwable th2, Continuation continuation) throws Throwable {
        FlowKt__EmittersKt$invokeSafely$1 flowKt__EmittersKt$invokeSafely$1;
        if (continuation instanceof FlowKt__EmittersKt$invokeSafely$1) {
            flowKt__EmittersKt$invokeSafely$1 = (FlowKt__EmittersKt$invokeSafely$1) continuation;
            int i11 = flowKt__EmittersKt$invokeSafely$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                flowKt__EmittersKt$invokeSafely$1.label = i11 - Integer.MIN_VALUE;
            } else {
                flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(continuation);
            }
        } else {
            flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(continuation);
        }
        Object obj = flowKt__EmittersKt$invokeSafely$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = flowKt__EmittersKt$invokeSafely$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                flowKt__EmittersKt$invokeSafely$1.L$0 = th2;
                flowKt__EmittersKt$invokeSafely$1.label = 1;
                if (function3.invoke(cVar, th2, flowKt__EmittersKt$invokeSafely$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th2 = (Throwable) flowKt__EmittersKt$invokeSafely$1.L$0;
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        } catch (Throwable th3) {
            if (th2 != null && th2 != th3) {
                ExceptionsKt.a(th3, th2);
            }
            throw th3;
        }
    }

    public static final b d(b bVar, Function3 function3) {
        return new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(bVar, function3);
    }

    public static final b e(b bVar, Function2 function2) {
        return new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(function2, bVar);
    }
}
