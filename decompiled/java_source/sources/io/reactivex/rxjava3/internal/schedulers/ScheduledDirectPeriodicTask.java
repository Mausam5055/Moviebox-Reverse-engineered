package io.reactivex.rxjava3.internal.schedulers;

/* JADX INFO: loaded from: classes7.dex */
public final class ScheduledDirectPeriodicTask extends AbstractDirectTask implements Runnable {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable, boolean z10) {
        super(runnable, z10);
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.AbstractDirectTask
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            this.runner = null;
        } catch (Throwable th2) {
            dispose();
            this.runner = null;
            pz.a.r(th2);
            throw th2;
        }
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.AbstractDirectTask, java.util.concurrent.atomic.AtomicReference
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
