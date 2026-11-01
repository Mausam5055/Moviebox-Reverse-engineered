package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h {
    public static final Object a(Function2 function2, Continuation continuation) {
        g gVar = new g(continuation.getContext(), continuation);
        Object objB = b00.b.b(gVar, gVar, function2);
        if (objB == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objB;
    }
}
