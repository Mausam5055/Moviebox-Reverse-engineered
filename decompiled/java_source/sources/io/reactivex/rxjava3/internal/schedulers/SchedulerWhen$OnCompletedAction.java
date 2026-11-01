package io.reactivex.rxjava3.internal.schedulers;

/* JADX INFO: loaded from: classes7.dex */
class SchedulerWhen$OnCompletedAction implements Runnable {
    final Runnable action;
    final io.reactivex.rxjava3.core.b actionCompletable;

    SchedulerWhen$OnCompletedAction(Runnable runnable, io.reactivex.rxjava3.core.b bVar) {
        this.action = runnable;
        this.actionCompletable = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.action.run();
        } finally {
            this.actionCompletable.onComplete();
        }
    }
}
