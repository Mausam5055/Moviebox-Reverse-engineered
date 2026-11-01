package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
abstract class FlowableObserveOn$BaseObserveOnSubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.f, Runnable {
    private static final long serialVersionUID = -8241002408341274697L;
    volatile boolean cancelled;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final int limit;
    boolean outputFused;
    final int prefetch;
    long produced;
    io.reactivex.rxjava3.operators.g queue;
    final AtomicLong requested = new AtomicLong();
    int sourceMode;
    u10.d upstream;
    final Scheduler.Worker worker;

    FlowableObserveOn$BaseObserveOnSubscriber(Scheduler.Worker worker, boolean z10, int i11) {
        this.worker = worker;
        this.delayError = z10;
        this.prefetch = i11;
        this.limit = i11 - (i11 >> 2);
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
    public final void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.cancel();
        this.worker.dispose();
        if (this.outputFused || getAndIncrement() != 0) {
            return;
        }
        this.queue.clear();
    }

    final boolean checkTerminated(boolean z10, boolean z11, u10.c cVar) {
        if (this.cancelled) {
            clear();
            return true;
        }
        if (!z10) {
            return false;
        }
        if (this.delayError) {
            if (!z11) {
                return false;
            }
            this.cancelled = true;
            Throwable th2 = this.error;
            if (th2 != null) {
                cVar.onError(th2);
            } else {
                cVar.onComplete();
            }
            this.worker.dispose();
            return true;
        }
        Throwable th3 = this.error;
        if (th3 != null) {
            this.cancelled = true;
            clear();
            cVar.onError(th3);
            this.worker.dispose();
            return true;
        }
        if (!z11) {
            return false;
        }
        this.cancelled = true;
        cVar.onComplete();
        this.worker.dispose();
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public final void clear() {
        this.queue.clear();
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public final boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override // u10.c
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        trySchedule();
    }

    @Override // u10.c
    public final void onError(Throwable th2) {
        if (this.done) {
            pz.a.r(th2);
            return;
        }
        this.error = th2;
        this.done = true;
        trySchedule();
    }

    @Override // u10.c
    public final void onNext(T t11) {
        if (this.done) {
            return;
        }
        if (this.sourceMode == 2) {
            trySchedule();
            return;
        }
        if (!this.queue.offer(t11)) {
            this.upstream.cancel();
            this.error = new QueueOverflowException();
            this.done = true;
        }
        trySchedule();
    }

    @Override // u10.c
    public abstract /* synthetic */ void onSubscribe(u10.d dVar);

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public abstract /* synthetic */ Object poll() throws Throwable;

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
    public final void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
            trySchedule();
        }
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.c
    public final int requestFusion(int i11) {
        if ((i11 & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.outputFused) {
            runBackfused();
        } else if (this.sourceMode == 1) {
            runSync();
        } else {
            runAsync();
        }
    }

    abstract void runAsync();

    abstract void runBackfused();

    abstract void runSync();

    final void trySchedule() {
        if (getAndIncrement() != 0) {
            return;
        }
        this.worker.schedule(this);
    }
}
