package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes7.dex */
public final class ScheduledDirectTask extends AbstractDirectTask implements Callable<Void> {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectTask(Runnable runnable, boolean z10) {
        super(runnable, z10);
    }

    @Override // java.util.concurrent.Callable
    public Void call() {
        this.runner = Thread.currentThread();
        try {
            try {
                this.runnable.run();
                return null;
            } finally {
                lazySet(AbstractDirectTask.FINISHED);
                this.runner = null;
            }
        } catch (Throwable th2) {
            pz.a.r(th2);
            throw th2;
        }
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.AbstractDirectTask
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.AbstractDirectTask, java.util.concurrent.atomic.AtomicReference
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
