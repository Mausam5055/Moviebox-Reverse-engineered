package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes7.dex */
public interface j extends kotlinx.coroutines.flow.b {

    public static final class a {
        public static /* synthetic */ kotlinx.coroutines.flow.b a(j jVar, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i12 & 1) != 0) {
                coroutineContext = EmptyCoroutineContext.INSTANCE;
            }
            if ((i12 & 2) != 0) {
                i11 = -3;
            }
            if ((i12 & 4) != 0) {
                bufferOverflow = BufferOverflow.SUSPEND;
            }
            return jVar.d(coroutineContext, i11, bufferOverflow);
        }
    }

    kotlinx.coroutines.flow.b d(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow);
}
