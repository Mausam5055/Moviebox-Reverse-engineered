package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.g0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ChannelFlowOperator extends ChannelFlow {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final kotlinx.coroutines.flow.b f67790d;

    public ChannelFlowOperator(kotlinx.coroutines.flow.b bVar, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        super(coroutineContext, i11, bufferOverflow);
        this.f67790d = bVar;
    }

    static /* synthetic */ Object o(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.flow.c cVar, Continuation continuation) {
        if (channelFlowOperator.f67788b == -3) {
            CoroutineContext f67028a = continuation.getContext();
            CoroutineContext coroutineContextJ = g0.j(f67028a, channelFlowOperator.f67787a);
            if (Intrinsics.c(coroutineContextJ, f67028a)) {
                Object objR = channelFlowOperator.r(cVar, continuation);
                return objR == IntrinsicsKt.f() ? objR : Unit.f67061a;
            }
            ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.c(coroutineContextJ.get(companion), f67028a.get(companion))) {
                Object objQ = channelFlowOperator.q(cVar, coroutineContextJ, continuation);
                return objQ == IntrinsicsKt.f() ? objQ : Unit.f67061a;
            }
        }
        Object objA = super.a(cVar, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }

    static /* synthetic */ Object p(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.channels.o oVar, Continuation continuation) {
        Object objR = channelFlowOperator.r(new r(oVar), continuation);
        return objR == IntrinsicsKt.f() ? objR : Unit.f67061a;
    }

    private final Object q(kotlinx.coroutines.flow.c cVar, CoroutineContext coroutineContext, Continuation continuation) {
        return d.c(coroutineContext, d.d(cVar, continuation.getContext()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), continuation, 4, null);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.b
    public Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
        return o(this, cVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object i(kotlinx.coroutines.channels.o oVar, Continuation continuation) {
        return p(this, oVar, continuation);
    }

    protected abstract Object r(kotlinx.coroutines.flow.c cVar, Continuation continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return this.f67790d + " -> " + super.toString();
    }
}
