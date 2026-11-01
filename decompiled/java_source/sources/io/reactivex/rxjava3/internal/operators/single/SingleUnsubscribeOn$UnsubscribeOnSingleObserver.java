package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class SingleUnsubscribeOn$UnsubscribeOnSingleObserver<T> extends AtomicReference<c> implements q, c, Runnable {
    private static final long serialVersionUID = 3256698449646456986L;
    final q downstream;

    /* JADX INFO: renamed from: ds, reason: collision with root package name */
    c f65470ds;
    final Scheduler scheduler;

    SingleUnsubscribeOn$UnsubscribeOnSingleObserver(q qVar, Scheduler scheduler) {
        this.downstream = qVar;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        c andSet = getAndSet(disposableHelper);
        if (andSet != disposableHelper) {
            this.f65470ds = andSet;
            this.scheduler.d(this);
        }
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
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSuccess(T t11) {
        this.downstream.onSuccess(t11);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f65470ds.dispose();
    }
}
