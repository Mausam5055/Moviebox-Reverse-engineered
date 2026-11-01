package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes7.dex */
public final class e extends ChannelFlowOperator {
    public e(kotlinx.coroutines.flow.b bVar, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        super(bVar, coroutineContext, i11, bufferOverflow);
    }

    public /* synthetic */ e(kotlinx.coroutines.flow.b bVar, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, (i12 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i12 & 4) != 0 ? -3 : i11, (i12 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow j(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return new e(this.f67790d, coroutineContext, i11, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public kotlinx.coroutines.flow.b k() {
        return this.f67790d;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    protected Object r(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
        Object objA = this.f67790d.a(cVar, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }
}
