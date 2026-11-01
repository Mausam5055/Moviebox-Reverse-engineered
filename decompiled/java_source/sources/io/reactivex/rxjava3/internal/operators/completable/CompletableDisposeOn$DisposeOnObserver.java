package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.b;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import pz.a;

/* JADX INFO: loaded from: classes7.dex */
final class CompletableDisposeOn$DisposeOnObserver implements b, c, Runnable {
    volatile boolean disposed;
    final b downstream;
    final Scheduler scheduler;
    c upstream;

    CompletableDisposeOn$DisposeOnObserver(b bVar, Scheduler scheduler) {
        this.downstream = bVar;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        this.disposed = true;
        this.scheduler.d(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.disposed;
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onComplete() {
        if (this.disposed) {
            return;
        }
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onError(Throwable th2) {
        if (this.disposed) {
            a.r(th2);
        } else {
            this.downstream.onError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.b
    public void onSubscribe(c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.upstream.dispose();
        this.upstream = DisposableHelper.DISPOSED;
    }
}
