package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableSubscribeOn$SubscribeOnSubscriber<T> extends AtomicReference<Thread> implements io.reactivex.rxjava3.core.f, u10.d, Runnable {
    private static final long serialVersionUID = 8094547886072529208L;
    final u10.c downstream;
    final boolean nonScheduledRequests;
    u10.b source;
    final Scheduler.Worker worker;
    final AtomicReference<u10.d> upstream = new AtomicReference<>();
    final AtomicLong requested = new AtomicLong();

    static final class Request implements Runnable {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final long f65364n;
        final u10.d upstream;

        Request(u10.d dVar, long j11) {
            this.upstream = dVar;
            this.f65364n = j11;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.upstream.request(this.f65364n);
        }
    }

    FlowableSubscribeOn$SubscribeOnSubscriber(u10.c cVar, Scheduler.Worker worker, u10.b bVar, boolean z10) {
        this.downstream = cVar;
        this.worker = worker;
        this.source = bVar;
        this.nonScheduledRequests = !z10;
    }

    @Override // u10.d
    public void cancel() {
        SubscriptionHelper.cancel(this.upstream);
        this.worker.dispose();
    }

    @Override // u10.c
    public void onComplete() {
        this.downstream.onComplete();
        this.worker.dispose();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        this.downstream.onError(th2);
        this.worker.dispose();
    }

    @Override // u10.c
    public void onNext(T t11) {
        this.downstream.onNext(t11);
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
            long andSet = this.requested.getAndSet(0L);
            if (andSet != 0) {
                requestUpstream(andSet, dVar);
            }
        }
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            u10.d dVar = this.upstream.get();
            if (dVar != null) {
                requestUpstream(j11, dVar);
                return;
            }
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
            u10.d dVar2 = this.upstream.get();
            if (dVar2 != null) {
                long andSet = this.requested.getAndSet(0L);
                if (andSet != 0) {
                    requestUpstream(andSet, dVar2);
                }
            }
        }
    }

    void requestUpstream(long j11, u10.d dVar) {
        if (this.nonScheduledRequests || Thread.currentThread() == get()) {
            dVar.request(j11);
        } else {
            this.worker.schedule(new Request(dVar, j11));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        lazySet(Thread.currentThread());
        u10.b bVar = this.source;
        this.source = null;
        bVar.subscribe(this);
    }
}
