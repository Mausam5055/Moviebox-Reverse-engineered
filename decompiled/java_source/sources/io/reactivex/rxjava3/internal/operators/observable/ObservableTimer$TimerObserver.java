package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableTimer$TimerObserver extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    final io.reactivex.rxjava3.core.o downstream;

    ObservableTimer$TimerObserver(io.reactivex.rxjava3.core.o oVar) {
        this.downstream = oVar;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (isDisposed()) {
            return;
        }
        this.downstream.onNext(0L);
        lazySet(EmptyDisposable.INSTANCE);
        this.downstream.onComplete();
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.trySet(this, cVar);
    }
}
