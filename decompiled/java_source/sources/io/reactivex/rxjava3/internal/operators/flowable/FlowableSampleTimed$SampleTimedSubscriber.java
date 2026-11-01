package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
abstract class FlowableSampleTimed$SampleTimedSubscriber<T> extends AtomicReference<T> implements io.reactivex.rxjava3.core.f, u10.d, Runnable {
    private static final long serialVersionUID = -3517602651313910099L;
    final u10.c downstream;
    final lz.f onDropped;
    final long period;
    final Scheduler scheduler;
    final TimeUnit unit;
    u10.d upstream;
    final AtomicLong requested = new AtomicLong();
    final SequentialDisposable timer = new SequentialDisposable();

    FlowableSampleTimed$SampleTimedSubscriber(u10.c cVar, long j11, TimeUnit timeUnit, Scheduler scheduler, lz.f fVar) {
        this.downstream = cVar;
        this.period = j11;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.onDropped = fVar;
    }

    @Override // u10.d
    public void cancel() {
        cancelTimer();
        this.upstream.cancel();
    }

    void cancelTimer() {
        DisposableHelper.dispose(this.timer);
    }

    abstract void complete();

    void emit() {
        T andSet = getAndSet(null);
        if (andSet != null) {
            if (this.requested.get() != 0) {
                this.downstream.onNext(andSet);
                io.reactivex.rxjava3.internal.util.a.d(this.requested, 1L);
            } else {
                cancel();
                this.downstream.onError(MissingBackpressureException.createDefault());
            }
        }
    }

    @Override // u10.c
    public void onComplete() {
        cancelTimer();
        complete();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        cancelTimer();
        this.downstream.onError(th2);
    }

    @Override // u10.c
    public void onNext(T t11) {
        lz.f fVar;
        T andSet = getAndSet(t11);
        if (andSet == null || (fVar = this.onDropped) == null) {
            return;
        }
        try {
            fVar.accept(andSet);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            cancelTimer();
            this.upstream.cancel();
            this.downstream.onError(th2);
        }
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler scheduler = this.scheduler;
            long j11 = this.period;
            sequentialDisposable.replace(scheduler.f(this, j11, j11, this.unit));
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
        }
    }
}
