package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes7.dex */
abstract class a extends ChannelFlow {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function2 f67772d;

    public a(Function2 function2, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        super(coroutineContext, i11, bufferOverflow);
        this.f67772d = function2;
    }

    static /* synthetic */ Object o(a aVar, kotlinx.coroutines.channels.o oVar, Continuation continuation) {
        Object objInvoke = aVar.f67772d.invoke(oVar, continuation);
        return objInvoke == IntrinsicsKt.f() ? objInvoke : Unit.f67061a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object i(kotlinx.coroutines.channels.o oVar, Continuation continuation) {
        return o(this, oVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return "block[" + this.f67772d + "] -> " + super.toString();
    }
}
