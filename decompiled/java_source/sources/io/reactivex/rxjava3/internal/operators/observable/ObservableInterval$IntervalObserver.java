package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableInterval$IntervalObserver extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 346773832286157679L;
    long count;
    final io.reactivex.rxjava3.core.o downstream;

    ObservableInterval$IntervalObserver(io.reactivex.rxjava3.core.o oVar) {
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
        if (get() != DisposableHelper.DISPOSED) {
            io.reactivex.rxjava3.core.o oVar = this.downstream;
            long j11 = this.count;
            this.count = 1 + j11;
            oVar.onNext(Long.valueOf(j11));
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
