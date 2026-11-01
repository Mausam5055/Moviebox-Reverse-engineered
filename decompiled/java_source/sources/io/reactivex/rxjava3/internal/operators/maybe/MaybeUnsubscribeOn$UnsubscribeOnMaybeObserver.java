package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<T> extends AtomicReference<c> implements h, c, Runnable {
    private static final long serialVersionUID = 3256698449646456986L;
    final h downstream;

    /* JADX INFO: renamed from: ds, reason: collision with root package name */
    c f65380ds;
    final Scheduler scheduler;

    MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver(h hVar, Scheduler scheduler) {
        this.downstream = hVar;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        c andSet = getAndSet(disposableHelper);
        if (andSet != disposableHelper) {
            this.f65380ds = andSet;
            this.scheduler.d(this);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onComplete() {
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onError(Throwable th2) {
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onSuccess(T t11) {
        this.downstream.onSuccess(t11);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f65380ds.dispose();
    }
}
