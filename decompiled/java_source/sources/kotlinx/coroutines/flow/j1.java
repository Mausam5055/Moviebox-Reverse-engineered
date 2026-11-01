package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes7.dex */
public abstract class j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.z f67820a = new kotlinx.coroutines.internal.z("NONE");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.z f67821b = new kotlinx.coroutines.internal.z("PENDING");

    public static final y0 a(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.m.f67813a;
        }
        return new StateFlowImpl(obj);
    }

    public static final b d(i1 i1Var, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return (((i11 < 0 || i11 >= 2) && i11 != -2) || bufferOverflow != BufferOverflow.DROP_OLDEST) ? d1.e(i1Var, coroutineContext, i11, bufferOverflow) : i1Var;
    }
}
