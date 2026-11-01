package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableIntervalRange$IntervalRangeObserver extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 1891866368734007884L;
    long count;
    final io.reactivex.rxjava3.core.o downstream;
    final long end;

    ObservableIntervalRange$IntervalRangeObserver(io.reactivex.rxjava3.core.o oVar, long j11, long j12) {
        this.downstream = oVar;
        this.count = j11;
        this.end = j12;
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
        long j11 = this.count;
        this.downstream.onNext(Long.valueOf(j11));
        if (j11 != this.end) {
            this.count = j11 + 1;
            return;
        }
        if (!isDisposed()) {
            this.downstream.onComplete();
        }
        DisposableHelper.dispose(this);
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
