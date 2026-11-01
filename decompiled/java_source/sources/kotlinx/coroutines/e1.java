package kotlinx.coroutines;

import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.collections.ArrayDeque;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e1 extends i0 {
    private boolean shared;
    private ArrayDeque<DispatchedTask<?>> unconfinedQueue;
    private long useCount;

    private final long d(boolean z10) {
        if (z10) {
            return TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE;
        }
        return 1L;
    }

    public static /* synthetic */ void decrementUseCount$default(e1 e1Var, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        e1Var.decrementUseCount(z10);
    }

    public static /* synthetic */ void incrementUseCount$default(e1 e1Var, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        e1Var.incrementUseCount(z10);
    }

    public final void decrementUseCount(boolean z10) {
        long jD = this.useCount - d(z10);
        this.useCount = jD;
        if (jD <= 0 && this.shared) {
            shutdown();
        }
    }

    public final void dispatchUnconfined(DispatchedTask<?> dispatchedTask) {
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque<>();
            this.unconfinedQueue = arrayDeque;
        }
        arrayDeque.addLast(dispatchedTask);
    }

    protected long getNextTime() {
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        return (arrayDeque == null || arrayDeque.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void incrementUseCount(boolean z10) {
        this.useCount += d(z10);
        if (z10) {
            return;
        }
        this.shared = true;
    }

    public final boolean isActive() {
        return this.useCount > 0;
    }

    public final boolean isUnconfinedLoopActive() {
        return this.useCount >= d(true);
    }

    public final boolean isUnconfinedQueueEmpty() {
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        if (arrayDeque != null) {
            return arrayDeque.isEmpty();
        }
        return true;
    }

    @Override // kotlinx.coroutines.i0
    public final i0 limitedParallelism(int i11, String str) {
        kotlinx.coroutines.internal.i.a(i11);
        return kotlinx.coroutines.internal.i.b(this, str);
    }

    public long processNextEvent() {
        return !processUnconfinedEvent() ? Long.MAX_VALUE : 0L;
    }

    public final boolean processUnconfinedEvent() {
        DispatchedTask dispatchedTask;
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        if (arrayDeque == null || (dispatchedTask = (DispatchedTask) arrayDeque.p()) == null) {
            return false;
        }
        dispatchedTask.run();
        return true;
    }

    public boolean shouldBeProcessedFromContext() {
        return false;
    }

    public void shutdown() {
    }
}
