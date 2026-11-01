package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.h;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableWindow$WindowOverlapSubscriber<T> extends AtomicInteger implements io.reactivex.rxjava3.core.f, u10.d, Runnable {
    private static final long serialVersionUID = 2428527070996323976L;
    final int bufferSize;
    volatile boolean cancelled;
    volatile boolean done;
    final u10.c downstream;
    Throwable error;
    final AtomicBoolean firstRequest;
    long index;
    final AtomicBoolean once;
    long produced;
    final h queue;
    final AtomicLong requested;
    final long size;
    final long skip;
    u10.d upstream;
    final ArrayDeque<UnicastProcessor> windows;
    final AtomicInteger wip;

    FlowableWindow$WindowOverlapSubscriber(u10.c cVar, long j11, long j12, int i11) {
        super(1);
        this.downstream = cVar;
        this.size = j11;
        this.skip = j12;
        this.queue = new h(i11);
        this.windows = new ArrayDeque<>();
        this.once = new AtomicBoolean();
        this.firstRequest = new AtomicBoolean();
        this.requested = new AtomicLong();
        this.wip = new AtomicInteger();
        this.bufferSize = i11;
    }

    @Override // u10.d
    public void cancel() {
        this.cancelled = true;
        if (this.once.compareAndSet(false, true)) {
            run();
        }
        drain();
    }

    boolean checkTerminated(boolean z10, boolean z11, u10.c cVar, h hVar) {
        if (!z10) {
            return false;
        }
        Throwable th2 = this.error;
        if (th2 != null) {
            hVar.clear();
            cVar.onError(th2);
            return true;
        }
        if (!z11) {
            return false;
        }
        cVar.onComplete();
        return true;
    }

    void drain() {
        if (this.wip.getAndIncrement() != 0) {
            return;
        }
        u10.c cVar = this.downstream;
        h hVar = this.queue;
        int iAddAndGet = 1;
        while (true) {
            if (this.cancelled) {
                while (true) {
                    UnicastProcessor unicastProcessor = (UnicastProcessor) hVar.poll();
                    if (unicastProcessor == null) {
                        break;
                    } else {
                        unicastProcessor.onComplete();
                    }
                }
            } else {
                long j11 = this.requested.get();
                long j12 = 0;
                while (true) {
                    if (j12 != j11) {
                        boolean z10 = this.done;
                        UnicastProcessor unicastProcessor2 = (UnicastProcessor) hVar.poll();
                        boolean z11 = unicastProcessor2 == null;
                        if (this.cancelled) {
                            continue;
                        } else {
                            if (checkTerminated(z10, z11, cVar, hVar)) {
                                return;
                            }
                            if (!z11) {
                                g gVar = new g(unicastProcessor2);
                                cVar.onNext(gVar);
                                if (gVar.h()) {
                                    unicastProcessor2.onComplete();
                                }
                                j12++;
                            }
                        }
                    }
                    if (j12 == j11) {
                        if (this.cancelled) {
                            continue;
                        } else if (checkTerminated(this.done, hVar.isEmpty(), cVar, hVar)) {
                            return;
                        }
                    }
                    if (j12 != 0 && j11 != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j12);
                    }
                }
            }
            iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override // u10.c
    public void onComplete() {
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onComplete();
        }
        this.windows.clear();
        this.done = true;
        drain();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onError(th2);
        }
        this.windows.clear();
        this.error = th2;
        this.done = true;
        drain();
    }

    @Override // u10.c
    public void onNext(T t11) {
        UnicastProcessor unicastProcessorI;
        long j11 = this.index;
        if (j11 != 0 || this.cancelled) {
            unicastProcessorI = null;
        } else {
            getAndIncrement();
            unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
            this.windows.offer(unicastProcessorI);
        }
        long j12 = j11 + 1;
        Iterator<UnicastProcessor> it = this.windows.iterator();
        while (it.hasNext()) {
            it.next().onNext(t11);
        }
        if (unicastProcessorI != null) {
            this.queue.offer(unicastProcessorI);
            drain();
        }
        long j13 = this.produced + 1;
        if (j13 == this.size) {
            this.produced = j13 - this.skip;
            UnicastProcessor unicastProcessorPoll = this.windows.poll();
            if (unicastProcessorPoll != null) {
                unicastProcessorPoll.onComplete();
            }
        } else {
            this.produced = j13;
        }
        if (j12 == this.skip) {
            this.index = 0L;
        } else {
            this.index = j12;
        }
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
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
            if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.c(this.skip, j11));
            } else {
                this.upstream.request(io.reactivex.rxjava3.internal.util.a.b(this.size, io.reactivex.rxjava3.internal.util.a.c(this.skip, j11 - 1)));
            }
            drain();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (decrementAndGet() == 0) {
            this.upstream.cancel();
        }
    }
}
