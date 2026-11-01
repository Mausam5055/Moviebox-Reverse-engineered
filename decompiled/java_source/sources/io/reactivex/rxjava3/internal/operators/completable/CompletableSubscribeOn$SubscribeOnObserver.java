package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.b;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class CompletableSubscribeOn$SubscribeOnObserver extends AtomicReference<c> implements b, c, Runnable {
    private static final long serialVersionUID = 7000911171163930287L;
    final b downstream;
    final io.reactivex.rxjava3.core.c source;
    final SequentialDisposable task = new SequentialDisposable();

    CompletableSubscribeOn$SubscribeOnObserver(b bVar, io.reactivex.rxjava3.core.c cVar) {
        this.downstream = bVar;
        this.source = cVar;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
        this.task.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onComplete() {
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onError(Throwable th2) {
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.source.a(this);
    }
}
