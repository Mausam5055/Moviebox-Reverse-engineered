package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableTimer$TimerSubscriber extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements u10.d, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    final u10.c downstream;
    volatile boolean requested;

    FlowableTimer$TimerSubscriber(u10.c cVar) {
        this.downstream = cVar;
    }

    @Override // u10.d
    public void cancel() {
        DisposableHelper.dispose(this);
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            this.requested = true;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (get() != DisposableHelper.DISPOSED) {
            if (!this.requested) {
                lazySet(EmptyDisposable.INSTANCE);
                this.downstream.onError(MissingBackpressureException.createDefault());
            } else {
                this.downstream.onNext(0L);
                lazySet(EmptyDisposable.INSTANCE);
                this.downstream.onComplete();
            }
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.trySet(this, cVar);
    }
}
