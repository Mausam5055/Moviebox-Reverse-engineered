package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class MaybeObserveOn$ObserveOnMaybeObserver<T> extends AtomicReference<c> implements h, c, Runnable {
    private static final long serialVersionUID = 8571289934935992137L;
    final h downstream;
    Throwable error;
    final Scheduler scheduler;
    T value;

    MaybeObserveOn$ObserveOnMaybeObserver(h hVar, Scheduler scheduler) {
        this.downstream = hVar;
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

    @Override // io.reactivex.rxjava3.core.h
    public void onComplete() {
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onError(Throwable th2) {
        this.error = th2;
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onSuccess(T t11) {
        this.value = t11;
        DisposableHelper.replace(this, this.scheduler.d(this));
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th2 = this.error;
        if (th2 != null) {
            this.error = null;
            this.downstream.onError(th2);
            return;
        }
        T t11 = this.value;
        if (t11 == null) {
            this.downstream.onComplete();
        } else {
            this.value = null;
            this.downstream.onSuccess(t11);
        }
    }
}
