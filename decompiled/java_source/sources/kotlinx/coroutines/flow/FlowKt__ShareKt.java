package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class FlowKt__ShareKt {
    public static final c1 a(x0 x0Var) {
        return new z0(x0Var, null);
    }

    public static final i1 b(y0 y0Var) {
        return new a1(y0Var, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    private static final f1 c(b bVar, int i11) {
        ChannelFlow channelFlow;
        b bVarK;
        int iF = RangesKt.f(i11, kotlinx.coroutines.channels.d.f67686m1.a()) - i11;
        if (!(bVar instanceof ChannelFlow) || (bVarK = (channelFlow = (ChannelFlow) bVar).k()) == null) {
            return new f1(bVar, iF, BufferOverflow.SUSPEND, EmptyCoroutineContext.INSTANCE);
        }
        int i12 = channelFlow.f67788b;
        if (i12 != -3 && i12 != -2 && i12 != 0) {
            iF = i12;
        } else if (channelFlow.f67789c == BufferOverflow.SUSPEND) {
            if (i12 == 0) {
                iF = 0;
            }
        } else if (i11 == 0) {
            iF = 1;
        } else {
            iF = 0;
        }
        return new f1(bVarK, iF, channelFlow.f67789c, channelFlow.f67787a);
    }

    private static final t1 d(kotlinx.coroutines.n0 n0Var, CoroutineContext coroutineContext, b bVar, x0 x0Var, g1 g1Var, Object obj) {
        return kotlinx.coroutines.i.c(n0Var, coroutineContext, Intrinsics.c(g1Var, g1.f67783a.c()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(g1Var, bVar, x0Var, obj, null));
    }

    public static final i1 e(b bVar, kotlinx.coroutines.n0 n0Var, g1 g1Var, Object obj) {
        f1 f1VarC = c(bVar, 1);
        y0 y0VarA = j1.a(obj);
        return new a1(y0VarA, d(n0Var, f1VarC.f67782d, f1VarC.f67779a, y0VarA, g1Var, obj));
    }
}
