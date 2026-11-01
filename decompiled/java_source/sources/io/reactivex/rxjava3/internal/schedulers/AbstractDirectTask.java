package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
abstract class AbstractDirectTask extends AtomicReference<Future<?>> implements io.reactivex.rxjava3.disposables.c {
    protected static final FutureTask<Void> DISPOSED;
    protected static final FutureTask<Void> FINISHED;
    private static final long serialVersionUID = 1811839108042568751L;
    protected final boolean interruptOnCancel;
    protected final Runnable runnable;
    protected Thread runner;

    static {
        Runnable runnable = Functions.f65321b;
        FINISHED = new FutureTask<>(runnable, null);
        DISPOSED = new FutureTask<>(runnable, null);
    }

    AbstractDirectTask(Runnable runnable, boolean z10) {
        this.runnable = runnable;
        this.interruptOnCancel = z10;
    }

    private void a(Future future) {
        if (this.runner == Thread.currentThread()) {
            future.cancel(false);
        } else {
            future.cancel(this.interruptOnCancel);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == FINISHED || future == (futureTask = DISPOSED) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        a(future);
    }

    public Runnable getWrappedRunnable() {
        return this.runnable;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == FINISHED || future == DISPOSED;
    }

    public final void setFuture(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == FINISHED) {
                return;
            }
            if (future2 == DISPOSED) {
                a(future);
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        String str;
        Future<?> future = get();
        if (future == FINISHED) {
            str = "Finished";
        } else if (future == DISPOSED) {
            str = "Disposed";
        } else if (this.runner != null) {
            str = "Running on " + this.runner;
        } else {
            str = "Waiting";
        }
        return getClass().getSimpleName() + "[" + str + "]";
    }
}
