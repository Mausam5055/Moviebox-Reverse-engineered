package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes7.dex */
public final class ChannelFlowTransformLatest extends ChannelFlowOperator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function3 f67791e;

    public ChannelFlowTransformLatest(Function3 function3, kotlinx.coroutines.flow.b bVar, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        super(bVar, coroutineContext, i11, bufferOverflow);
        this.f67791e = function3;
    }

    public /* synthetic */ ChannelFlowTransformLatest(Function3 function3, kotlinx.coroutines.flow.b bVar, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(function3, bVar, (i12 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i12 & 8) != 0 ? -2 : i11, (i12 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow j(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return new ChannelFlowTransformLatest(this.f67791e, this.f67790d, coroutineContext, i11, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    protected Object r(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
        Object objE = o0.e(new ChannelFlowTransformLatest$flowCollect$3(this, cVar, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f67061a;
    }
}
