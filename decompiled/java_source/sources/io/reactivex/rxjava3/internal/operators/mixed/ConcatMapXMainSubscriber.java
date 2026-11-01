package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.f;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.g;
import java.util.concurrent.atomic.AtomicInteger;
import u10.d;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ConcatMapXMainSubscriber<T> extends AtomicInteger implements f {
    private static final long serialVersionUID = -3214213361171757852L;
    volatile boolean cancelled;
    volatile boolean done;
    final ErrorMode errorMode;
    final AtomicThrowable errors = new AtomicThrowable();
    final int prefetch;
    g queue;
    boolean syncFused;
    d upstream;

    public ConcatMapXMainSubscriber(int i11, ErrorMode errorMode) {
        this.errorMode = errorMode;
        this.prefetch = i11;
    }

    void clearValue() {
    }

    abstract void disposeInner();

    abstract void drain();

    @Override // u10.c
    public final void onComplete() {
        this.done = true;
        drain();
    }

    @Override // u10.c
    public final void onError(Throwable th2) {
        if (this.errors.tryAddThrowableOrReport(th2)) {
            if (this.errorMode == ErrorMode.IMMEDIATE) {
                disposeInner();
            }
            this.done = true;
            drain();
        }
    }

    @Override // u10.c
    public final void onNext(T t11) {
        if (t11 == null || this.queue.offer(t11)) {
            drain();
        } else {
            this.upstream.cancel();
            onError(new QueueOverflowException());
        }
    }

    @Override // u10.c
    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            if (dVar instanceof io.reactivex.rxjava3.operators.d) {
                io.reactivex.rxjava3.operators.d dVar2 = (io.reactivex.rxjava3.operators.d) dVar;
                int iRequestFusion = dVar2.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.queue = dVar2;
                    this.syncFused = true;
                    this.done = true;
                    onSubscribeDownstream();
                    drain();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.queue = dVar2;
                    onSubscribeDownstream();
                    this.upstream.request(this.prefetch);
                    return;
                }
            }
            this.queue = new SpscArrayQueue(this.prefetch);
            onSubscribeDownstream();
            this.upstream.request(this.prefetch);
        }
    }

    abstract void onSubscribeDownstream();

    final void stop() {
        this.cancelled = true;
        this.upstream.cancel();
        disposeInner();
        this.errors.tryTerminateAndReport();
        if (getAndIncrement() == 0) {
            this.queue.clear();
            clearValue();
        }
    }
}
