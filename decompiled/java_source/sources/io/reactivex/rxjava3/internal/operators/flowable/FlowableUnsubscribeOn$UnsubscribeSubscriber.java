package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableUnsubscribeOn$UnsubscribeSubscriber<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.f, u10.d {
    private static final long serialVersionUID = 1015244841293359600L;
    final u10.c downstream;
    final Scheduler scheduler;
    u10.d upstream;

    final class Cancellation implements Runnable {
        Cancellation() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FlowableUnsubscribeOn$UnsubscribeSubscriber.this.upstream.cancel();
        }
    }

    FlowableUnsubscribeOn$UnsubscribeSubscriber(u10.c cVar, Scheduler scheduler) {
        this.downstream = cVar;
        this.scheduler = scheduler;
    }

    @Override // u10.d
    public void cancel() {
        if (compareAndSet(false, true)) {
            this.scheduler.d(new Cancellation());
        }
    }

    @Override // u10.c
    public void onComplete() {
        if (get()) {
            return;
        }
        this.downstream.onComplete();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        if (get()) {
            pz.a.r(th2);
        } else {
            this.downstream.onError(th2);
        }
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (get()) {
            return;
        }
        this.downstream.onNext(t11);
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // u10.d
    public void request(long j11) {
        this.upstream.request(j11);
    }
}
