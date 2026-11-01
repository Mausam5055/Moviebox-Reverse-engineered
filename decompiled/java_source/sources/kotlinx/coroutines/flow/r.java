package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class r {
    public static final b a(b bVar, int i11, BufferOverflow bufferOverflow) {
        if (i11 < 0 && i11 != -2 && i11 != -1) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i11).toString());
        }
        if (i11 == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        }
        if (i11 == -1) {
            bufferOverflow = BufferOverflow.DROP_OLDEST;
            i11 = 0;
        }
        int i12 = i11;
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if (bVar instanceof kotlinx.coroutines.flow.internal.j) {
            return kotlinx.coroutines.flow.internal.j.a.a((kotlinx.coroutines.flow.internal.j) bVar, null, i12, bufferOverflow2, 1, null);
        }
        return new kotlinx.coroutines.flow.internal.e(bVar, null, i12, bufferOverflow2, 2, null);
    }

    public static /* synthetic */ b b(b bVar, int i11, BufferOverflow bufferOverflow, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = -2;
        }
        if ((i12 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return d.c(bVar, i11, bufferOverflow);
    }

    private static final void c(CoroutineContext coroutineContext) {
        if (coroutineContext.get(t1.f67996l1) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
    }

    public static final b d(b bVar) {
        return b(bVar, -1, null, 2, null);
    }

    public static final b e(b bVar, CoroutineContext coroutineContext) {
        c(coroutineContext);
        if (Intrinsics.c(coroutineContext, EmptyCoroutineContext.INSTANCE)) {
            return bVar;
        }
        if (bVar instanceof kotlinx.coroutines.flow.internal.j) {
            return kotlinx.coroutines.flow.internal.j.a.a((kotlinx.coroutines.flow.internal.j) bVar, coroutineContext, 0, null, 6, null);
        }
        return new kotlinx.coroutines.flow.internal.e(bVar, coroutineContext, 0, null, 12, null);
    }
}
