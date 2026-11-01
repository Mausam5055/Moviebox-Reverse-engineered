package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class SingleTimer$TimerDisposable extends AtomicReference<c> implements c, Runnable {
    private static final long serialVersionUID = 8465401857522493082L;
    final q downstream;

    SingleTimer$TimerDisposable(q qVar) {
        this.downstream = qVar;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // java.lang.Runnable
    public void run() {
        this.downstream.onSuccess(0L);
    }

    void setFuture(c cVar) {
        DisposableHelper.replace(this, cVar);
    }
}
