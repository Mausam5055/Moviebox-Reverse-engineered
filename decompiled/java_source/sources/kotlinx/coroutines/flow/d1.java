package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.z f67776a = new kotlinx.coroutines.internal.z("NO_VALUE");

    public static final x0 a(int i11, int i12, BufferOverflow bufferOverflow) {
        if (i11 < 0) {
            throw new IllegalArgumentException(("replay cannot be negative, but was " + i11).toString());
        }
        if (i12 < 0) {
            throw new IllegalArgumentException(("extraBufferCapacity cannot be negative, but was " + i12).toString());
        }
        if (i11 > 0 || i12 > 0 || bufferOverflow == BufferOverflow.SUSPEND) {
            int i13 = i12 + i11;
            if (i13 < 0) {
                i13 = Integer.MAX_VALUE;
            }
            return new SharedFlowImpl(i11, i13, bufferOverflow);
        }
        throw new IllegalArgumentException(("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy " + bufferOverflow).toString());
    }

    public static /* synthetic */ x0 b(int i11, int i12, BufferOverflow bufferOverflow, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = 0;
        }
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        if ((i13 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return a(i11, i12, bufferOverflow);
    }

    public static final b e(c1 c1Var, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return ((i11 == 0 || i11 == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? c1Var : new kotlinx.coroutines.flow.internal.e(c1Var, coroutineContext, i11, bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object f(Object[] objArr, long j11) {
        return objArr[((int) j11) & (objArr.length - 1)];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Object[] objArr, long j11, Object obj) {
        objArr[((int) j11) & (objArr.length - 1)] = obj;
    }
}
