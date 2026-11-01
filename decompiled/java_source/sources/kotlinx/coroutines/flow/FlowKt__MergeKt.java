package kotlinx.coroutines.flow;

import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class FlowKt__MergeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f67741a = kotlinx.coroutines.internal.a0.b("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Integer.MAX_VALUE);

    public static final b a(b bVar, Function2 function2) {
        return d.H(bVar, new FlowKt__MergeKt$mapLatest$1(function2, null));
    }

    public static final b b(Iterable iterable) {
        return new ChannelLimitedFlowMerge(iterable, null, 0, null, 14, null);
    }

    public static final b c(b... bVarArr) {
        return d.x(ArraysKt.J(bVarArr));
    }

    public static final b d(b bVar, Function3 function3) {
        return new ChannelFlowTransformLatest(function3, bVar, null, 0, null, 28, null);
    }
}
