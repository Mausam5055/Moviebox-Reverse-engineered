package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class SingleObserveOn$ObserveOnSingleObserver<T> extends AtomicReference<c> implements q, c, Runnable {
    private static final long serialVersionUID = 3528003840217436037L;
    final q downstream;
    Throwable error;
    final Scheduler scheduler;
    T value;

    SingleObserveOn$ObserveOnSingleObserver(q qVar, Scheduler scheduler) {
        this.downstream = qVar;
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

    @Override // io.reactivex.rxjava3.core.q
    public void onError(Throwable th2) {
        this.error = th2;
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSuccess(T t11) {
        this.value = t11;
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th2 = this.error;
        if (th2 != null) {
            this.downstream.onError(th2);
        } else {
            this.downstream.onSuccess(this.value);
        }
    }
}
