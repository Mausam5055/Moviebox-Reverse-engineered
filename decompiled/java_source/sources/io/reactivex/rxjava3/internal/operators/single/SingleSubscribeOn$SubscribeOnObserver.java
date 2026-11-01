package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class SingleSubscribeOn$SubscribeOnObserver<T> extends AtomicReference<c> implements q, c, Runnable {
    private static final long serialVersionUID = 7000911171163930287L;
    final q downstream;
    final r source;
    final SequentialDisposable task = new SequentialDisposable();

    SingleSubscribeOn$SubscribeOnObserver(q qVar, r rVar) {
        this.downstream = qVar;
        this.source = rVar;
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

    @Override // io.reactivex.rxjava3.core.q
    public void onError(Throwable th2) {
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSuccess(T t11) {
        this.downstream.onSuccess(t11);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.source.a(this);
    }
}
