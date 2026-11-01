package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableThrottleLatest$ThrottleLatestSubscriber<T> extends AtomicInteger implements io.reactivex.rxjava3.core.f, u10.d, Runnable {
    private static final long serialVersionUID = -8296689127439125014L;
    volatile boolean cancelled;
    volatile boolean done;
    final u10.c downstream;
    final boolean emitLast;
    long emitted;
    Throwable error;
    final lz.f onDropped;
    final long timeout;
    volatile boolean timerFired;
    boolean timerRunning;
    final TimeUnit unit;
    u10.d upstream;
    final Scheduler.Worker worker;
    final AtomicReference<T> latest = new AtomicReference<>();
    final AtomicLong requested = new AtomicLong();

    FlowableThrottleLatest$ThrottleLatestSubscriber(u10.c cVar, long j11, TimeUnit timeUnit, Scheduler.Worker worker, boolean z10, lz.f fVar) {
        this.downstream = cVar;
        this.timeout = j11;
        this.unit = timeUnit;
        this.worker = worker;
        this.emitLast = z10;
        this.onDropped = fVar;
    }

    @Override // u10.d
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            clear();
        }
    }

    void clear() {
        if (this.onDropped == null) {
            this.latest.lazySet(null);
            return;
        }
        T andSet = this.latest.getAndSet(null);
        if (andSet != null) {
            try {
                this.onDropped.accept(andSet);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                pz.a.r(th2);
            }
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        AtomicReference<T> atomicReference = this.latest;
        AtomicLong atomicLong = this.requested;
        u10.c cVar = this.downstream;
        int iAddAndGet = 1;
        while (!this.cancelled) {
            boolean z10 = this.done;
            Throwable compositeException = this.error;
            if (z10 && compositeException != null) {
                if (this.onDropped != null) {
                    T andSet = atomicReference.getAndSet(null);
                    if (andSet != null) {
                        try {
                            this.onDropped.accept(andSet);
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            compositeException = new CompositeException(compositeException, th2);
                        }
                    }
                } else {
                    atomicReference.lazySet(null);
                }
                cVar.onError(compositeException);
                this.worker.dispose();
                return;
            }
            boolean z11 = atomicReference.get() == null;
            if (z10) {
                if (z11) {
                    cVar.onComplete();
                } else {
                    T andSet2 = atomicReference.getAndSet(null);
                    if (this.emitLast) {
                        long j11 = this.emitted;
                        if (j11 != atomicLong.get()) {
                            this.emitted = j11 + 1;
                            cVar.onNext(andSet2);
                            cVar.onComplete();
                        } else {
                            tryDropAndSignalMBE(andSet2);
                        }
                    } else {
                        lz.f fVar = this.onDropped;
                        if (fVar != null) {
                            try {
                                fVar.accept(andSet2);
                            } catch (Throwable th3) {
                                io.reactivex.rxjava3.exceptions.a.b(th3);
                                cVar.onError(th3);
                                this.worker.dispose();
                                return;
                            }
                        }
                        cVar.onComplete();
                    }
                }
                this.worker.dispose();
                return;
            }
            if (z11) {
                if (this.timerFired) {
                    this.timerRunning = false;
                    this.timerFired = false;
                }
            } else if (!this.timerRunning || this.timerFired) {
                T andSet3 = atomicReference.getAndSet(null);
                long j12 = this.emitted;
                if (j12 == atomicLong.get()) {
                    this.upstream.cancel();
                    tryDropAndSignalMBE(andSet3);
                    this.worker.dispose();
                    return;
                } else {
                    cVar.onNext(andSet3);
                    this.emitted = j12 + 1;
                    this.timerFired = false;
                    this.timerRunning = true;
                    this.worker.schedule(this, this.timeout, this.unit);
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        clear();
    }

    @Override // u10.c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        this.error = th2;
        this.done = true;
        drain();
    }

    @Override // u10.c
    public void onNext(T t11) {
        T andSet = this.latest.getAndSet(t11);
        lz.f fVar = this.onDropped;
        if (fVar != null && andSet != null) {
            try {
                fVar.accept(andSet);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.upstream.cancel();
                this.error = th2;
                this.done = true;
            }
        }
        drain();
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
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.timerFired = true;
        drain();
    }

    void tryDropAndSignalMBE(T t11) {
        Throwable thCreateDefault = MissingBackpressureException.createDefault();
        lz.f fVar = this.onDropped;
        if (fVar != null) {
            try {
                fVar.accept(t11);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                thCreateDefault = new CompositeException(thCreateDefault, th2);
            }
        }
        this.downstream.onError(thCreateDefault);
    }
}
