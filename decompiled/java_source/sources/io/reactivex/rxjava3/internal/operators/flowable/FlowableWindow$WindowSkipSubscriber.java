package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableWindow$WindowSkipSubscriber<T> extends AtomicInteger implements io.reactivex.rxjava3.core.f, u10.d, Runnable {
    private static final long serialVersionUID = -8792836352386833856L;
    final int bufferSize;
    final u10.c downstream;
    final AtomicBoolean firstRequest;
    long index;
    final AtomicBoolean once;
    final long size;
    final long skip;
    u10.d upstream;
    UnicastProcessor window;

    FlowableWindow$WindowSkipSubscriber(u10.c cVar, long j11, long j12, int i11) {
        super(1);
        this.downstream = cVar;
        this.size = j11;
        this.skip = j12;
        this.once = new AtomicBoolean();
        this.firstRequest = new AtomicBoolean();
        this.bufferSize = i11;
    }

    @Override // u10.d
    public void cancel() {
        if (this.once.compareAndSet(false, true)) {
            run();
        }
    }

    @Override // u10.c
    public void onComplete() {
        UnicastProcessor unicastProcessor = this.window;
        if (unicastProcessor != null) {
            this.window = null;
            unicastProcessor.onComplete();
        }
        this.downstream.onComplete();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        UnicastProcessor unicastProcessor = this.window;
        if (unicastProcessor != null) {
            this.window = null;
            unicastProcessor.onError(th2);
        }
        this.downstream.onError(th2);
    }

    @Override // u10.c
    public void onNext(T t11) {
        g gVar;
        long j11 = this.index;
        UnicastProcessor unicastProcessorI = this.window;
        if (j11 == 0) {
            getAndIncrement();
            unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
            this.window = unicastProcessorI;
            gVar = new g(unicastProcessorI);
            this.downstream.onNext(gVar);
        } else {
            gVar = null;
        }
        long j12 = j11 + 1;
        if (unicastProcessorI != null) {
            unicastProcessorI.onNext(t11);
        }
        if (j12 == this.size) {
            this.window = null;
            unicastProcessorI.onComplete();
        }
        if (j12 == this.skip) {
            this.index = 0L;
        } else {
            this.index = j12;
        }
        if (gVar == null || !gVar.h()) {
            return;
        }
        gVar.f65377b.onComplete();
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
        if (SubscriptionHelper.validate(j11)) {
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.c(this.skip, j11));
            } else {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.b(io.reactivex.rxjava3.internal.util.a.c(this.size, j11), io.reactivex.rxjava3.internal.util.a.c(this.skip - this.size, j11 - 1)));
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (decrementAndGet() == 0) {
            this.upstream.cancel();
        }
    }
}
