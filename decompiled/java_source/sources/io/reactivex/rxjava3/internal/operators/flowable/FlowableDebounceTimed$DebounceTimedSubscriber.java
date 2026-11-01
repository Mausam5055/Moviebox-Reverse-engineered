package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableDebounceTimed$DebounceTimedSubscriber<T> extends AtomicLong implements io.reactivex.rxjava3.core.f, u10.d {
    private static final long serialVersionUID = -9102637559663639004L;
    boolean done;
    final u10.c downstream;
    volatile long index;
    final lz.f onDropped;
    final long timeout;
    FlowableDebounceTimed$DebounceEmitter<T> timer;
    final TimeUnit unit;
    u10.d upstream;
    final Scheduler.Worker worker;

    FlowableDebounceTimed$DebounceTimedSubscriber(u10.c cVar, long j11, TimeUnit timeUnit, Scheduler.Worker worker, lz.f fVar) {
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

    void emit(long j11, T t11, FlowableDebounceTimed$DebounceEmitter<T> flowableDebounceTimed$DebounceEmitter) {
        if (j11 == this.index) {
            if (get() == 0) {
                cancel();
                this.downstream.onError(MissingBackpressureException.createDefault());
            } else {
                this.downstream.onNext(t11);
                io.reactivex.rxjava3.internal.util.a.d(this, 1L);
                flowableDebounceTimed$DebounceEmitter.dispose();
            }
        }
    }

    @Override // u10.c
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        FlowableDebounceTimed$DebounceEmitter<T> flowableDebounceTimed$DebounceEmitter = this.timer;
        if (flowableDebounceTimed$DebounceEmitter != null) {
            flowableDebounceTimed$DebounceEmitter.dispose();
        }
        if (flowableDebounceTimed$DebounceEmitter != null) {
            flowableDebounceTimed$DebounceEmitter.emit();
        }
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
        FlowableDebounceTimed$DebounceEmitter<T> flowableDebounceTimed$DebounceEmitter = this.timer;
        if (flowableDebounceTimed$DebounceEmitter != null) {
            flowableDebounceTimed$DebounceEmitter.dispose();
        }
        this.downstream.onError(th2);
        this.worker.dispose();
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (this.done) {
            return;
        }
        long j11 = this.index + 1;
        this.index = j11;
        FlowableDebounceTimed$DebounceEmitter<T> flowableDebounceTimed$DebounceEmitter = this.timer;
        if (flowableDebounceTimed$DebounceEmitter != null) {
            flowableDebounceTimed$DebounceEmitter.dispose();
        }
        lz.f fVar = this.onDropped;
        if (fVar != null && flowableDebounceTimed$DebounceEmitter != null) {
            try {
                fVar.accept(flowableDebounceTimed$DebounceEmitter.value);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.upstream.cancel();
                this.done = true;
                this.downstream.onError(th2);
                this.worker.dispose();
            }
        }
        FlowableDebounceTimed$DebounceEmitter<T> flowableDebounceTimed$DebounceEmitter2 = new FlowableDebounceTimed$DebounceEmitter<>(t11, j11, this);
        this.timer = flowableDebounceTimed$DebounceEmitter2;
        flowableDebounceTimed$DebounceEmitter2.setResource(this.worker.schedule(flowableDebounceTimed$DebounceEmitter2, this.timeout, this.unit));
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
}
