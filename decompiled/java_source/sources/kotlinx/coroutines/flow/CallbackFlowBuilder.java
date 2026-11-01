package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes7.dex */
final class CallbackFlowBuilder extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function2 f67713e;

    public CallbackFlowBuilder(Function2 function2, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        super(function2, coroutineContext, i11, bufferOverflow);
        this.f67713e = function2;
    }

    public /* synthetic */ CallbackFlowBuilder(Function2 function2, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i12 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i12 & 4) != 0 ? -2 : i11, (i12 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.a, kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object i(kotlinx.coroutines.channels.o oVar, Continuation continuation) throws Throwable {
        CallbackFlowBuilder$collectTo$1 callbackFlowBuilder$collectTo$1;
        if (continuation instanceof CallbackFlowBuilder$collectTo$1) {
            callbackFlowBuilder$collectTo$1 = (CallbackFlowBuilder$collectTo$1) continuation;
            int i11 = callbackFlowBuilder$collectTo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                callbackFlowBuilder$collectTo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, continuation);
            }
        } else {
            callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, continuation);
        }
        Object obj = callbackFlowBuilder$collectTo$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = callbackFlowBuilder$collectTo$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            callbackFlowBuilder$collectTo$1.L$0 = oVar;
            callbackFlowBuilder$collectTo$1.label = 1;
            if (super.i(oVar, callbackFlowBuilder$collectTo$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            oVar = (kotlinx.coroutines.channels.o) callbackFlowBuilder$collectTo$1.L$0;
            ResultKt.b(obj);
        }
        if (oVar.q()) {
            return Unit.f67061a;
        }
        throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow j(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return new CallbackFlowBuilder(this.f67713e, coroutineContext, i11, bufferOverflow);
    }
}
