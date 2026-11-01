package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableThrottleFirstTimed$DebounceTimedSubscriber<T> extends AtomicLong implements io.reactivex.rxjava3.core.f, u10.d, Runnable {
    private static final long serialVersionUID = -9102637559663639004L;
    boolean done;
    final u10.c downstream;
    volatile boolean gate;
    final lz.f onDropped;
    final long timeout;
    final SequentialDisposable timer = new SequentialDisposable();
    final TimeUnit unit;
    u10.d upstream;
    final Scheduler.Worker worker;

    FlowableThrottleFirstTimed$DebounceTimedSubscriber(u10.c cVar, long j11, TimeUnit timeUnit, Scheduler.Worker worker, lz.f fVar) {
        this.downstream = cVar;
        this.timeout = j11;
        this.unit = timeUnit;
        this.worker = worker;
        this.onDropped = fVar;
    }

    @Override // u10.d
    public void cancel() {
        this.upstream.cancel();
        this.worker.dispose();
    }

    @Override // u10.c
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        this.downstream.onComplete();
        this.worker.dispose();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        if (this.done) {
            pz.a.r(th2);
            return;
        }
        this.done = true;
        this.downstream.onError(th2);
        this.worker.dispose();
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (this.done) {
            return;
        }
        if (this.gate) {
            lz.f fVar = this.onDropped;
            if (fVar != null) {
                try {
                    fVar.accept(t11);
                    return;
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.upstream.cancel();
                    this.done = true;
                    this.downstream.onError(th2);
                    this.worker.dispose();
                    return;
                }
            }
            return;
        }
        this.gate = true;
        if (get() == 0) {
            this.upstream.cancel();
            this.done = true;
            this.downstream.onError(MissingBackpressureException.createDefault());
            this.worker.dispose();
            return;
        }
        this.downstream.onNext(t11);
        io.reactivex.rxjava3.internal.util.a.d(this, 1L);
        io.reactivex.rxjava3.disposables.c cVar = this.timer.get();
        if (cVar != null) {
            cVar.dispose();
        }
        this.timer.replace(this.worker.schedule(this, this.timeout, this.unit));
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            io.reactivex.rxjava3.internal.util.a.a(this, j11);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.gate = false;
    }
}
