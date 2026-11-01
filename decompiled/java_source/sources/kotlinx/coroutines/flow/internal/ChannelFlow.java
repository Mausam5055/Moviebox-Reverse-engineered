package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;

/* JADX INFO: loaded from: classes.dex */
public abstract class ChannelFlow implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f67787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f67788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BufferOverflow f67789c;

    public ChannelFlow(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        this.f67787a = coroutineContext;
        this.f67788b = i11;
        this.f67789c = bufferOverflow;
    }

    static /* synthetic */ Object h(ChannelFlow channelFlow, kotlinx.coroutines.flow.c cVar, Continuation continuation) {
        Object objE = o0.e(new ChannelFlow$collect$2(cVar, channelFlow, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f67061a;
    }

    @Override // kotlinx.coroutines.flow.b
    public Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
        return h(this, cVar, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    @Override // kotlinx.coroutines.flow.internal.j
    public kotlinx.coroutines.flow.b d(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        CoroutineContext coroutineContextPlus = coroutineContext.plus(this.f67787a);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i12 = this.f67788b;
            if (i12 != -3) {
                if (i11 == -3) {
                    i11 = i12;
                } else if (i12 != -2) {
                    if (i11 == -2) {
                        i11 = i12;
                    } else {
                        i11 += i12;
                        if (i11 < 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                    }
                }
            }
            bufferOverflow = this.f67789c;
        }
        return (Intrinsics.c(coroutineContextPlus, this.f67787a) && i11 == this.f67788b && bufferOverflow == this.f67789c) ? this : j(coroutineContextPlus, i11, bufferOverflow);
    }

    protected String g() {
        return null;
    }

    protected abstract Object i(kotlinx.coroutines.channels.o oVar, Continuation continuation);

    protected abstract ChannelFlow j(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow);

    public kotlinx.coroutines.flow.b k() {
        return null;
    }

    public final Function2 l() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int m() {
        int i11 = this.f67788b;
        if (i11 == -3) {
            return -2;
        }
        return i11;
    }

    public kotlinx.coroutines.channels.q n(n0 n0Var) {
        return ProduceKt.d(n0Var, this.f67787a, m(), this.f67789c, CoroutineStart.ATOMIC, null, l(), 16, null);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strG = g();
        if (strG != null) {
            arrayList.add(strG);
        }
        if (this.f67787a != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + this.f67787a);
        }
        if (this.f67788b != -3) {
            arrayList.add("capacity=" + this.f67788b);
        }
        if (this.f67789c != BufferOverflow.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.f67789c);
        }
        return p0.a(this) + '[' + CollectionsKt.s0(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
