package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableUnsubscribeOn$UnsubscribeObserver<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 1015244841293359600L;
    final io.reactivex.rxjava3.core.o downstream;
    final Scheduler scheduler;
    io.reactivex.rxjava3.disposables.c upstream;

    final class DisposeTask implements Runnable {
        DisposeTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ObservableUnsubscribeOn$UnsubscribeObserver.this.upstream.dispose();
        }
    }

    ObservableUnsubscribeOn$UnsubscribeObserver(io.reactivex.rxjava3.core.o oVar, Scheduler scheduler) {
        this.downstream = oVar;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        if (compareAndSet(false, true)) {
            this.scheduler.d(new DisposeTask());
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        if (get()) {
            return;
        }
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        if (get()) {
            pz.a.r(th2);
        } else {
            this.downstream.onError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        if (get()) {
            return;
        }
        this.downstream.onNext(t11);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }
}
