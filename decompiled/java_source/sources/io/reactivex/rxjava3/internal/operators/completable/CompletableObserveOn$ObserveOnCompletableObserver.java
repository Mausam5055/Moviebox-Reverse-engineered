package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.b;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class CompletableObserveOn$ObserveOnCompletableObserver extends AtomicReference<c> implements b, c, Runnable {
    private static final long serialVersionUID = 8571289934935992137L;
    final b downstream;
    Throwable error;
    final Scheduler scheduler;

    CompletableObserveOn$ObserveOnCompletableObserver(b bVar, Scheduler scheduler) {
        this.downstream = bVar;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onComplete() {
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onError(Throwable th2) {
        this.error = th2;
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th2 = this.error;
        if (th2 == null) {
            this.downstream.onComplete();
        } else {
            this.error = null;
            this.downstream.onError(th2);
        }
    }
}
