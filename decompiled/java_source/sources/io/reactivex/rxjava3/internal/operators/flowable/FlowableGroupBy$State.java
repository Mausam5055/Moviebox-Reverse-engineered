package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.h;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableGroupBy$State<T, K> extends BasicIntQueueSubscription<T> implements u10.b {
    static final int ABANDONED = 2;
    static final int ABANDONED_HAS_SUBSCRIBER = 3;
    static final int FRESH = 0;
    static final int HAS_SUBSCRIBER = 1;
    private static final long serialVersionUID = -3852313036005250360L;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final K key;
    boolean outputFused;
    final FlowableGroupBy$GroupBySubscriber<?, K, T> parent;
    int produced;
    final h queue;
    final AtomicLong requested = new AtomicLong();
    final AtomicBoolean cancelled = new AtomicBoolean();
    final AtomicReference<u10.c> actual = new AtomicReference<>();
    final AtomicInteger once = new AtomicInteger();
    final AtomicBoolean evictOnce = new AtomicBoolean();

    FlowableGroupBy$State(int i11, FlowableGroupBy$GroupBySubscriber<?, K, T> flowableGroupBy$GroupBySubscriber, K k11, boolean z10) {
        this.queue = new h(i11);
        this.parent = flowableGroupBy$GroupBySubscriber;
        this.key = k11;
        this.delayError = z10;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
    public void cancel() {
        if (this.cancelled.compareAndSet(false, true)) {
            cancelParent();
            drain();
        }
    }

    void cancelParent() {
        if ((this.once.get() & 2) == 0 && this.evictOnce.compareAndSet(false, true)) {
            this.parent.cancel(this.key);
        }
    }

    boolean checkTerminated(boolean z10, boolean z11, u10.c cVar, boolean z12, long j11, boolean z13) {
        if (this.cancelled.get()) {
            cleanupQueue(j11, z13);
            return true;
        }
        if (!z10) {
            return false;
        }
        if (z12) {
            if (!z11) {
                return false;
            }
            this.cancelled.lazySet(true);
            Throwable th2 = this.error;
            if (th2 != null) {
                cVar.onError(th2);
            } else {
                cVar.onComplete();
                replenishParent(j11, z13);
            }
            return true;
        }
        Throwable th3 = this.error;
        if (th3 != null) {
            this.queue.clear();
            this.cancelled.lazySet(true);
            cVar.onError(th3);
            return true;
        }
        if (!z11) {
            return false;
        }
        this.cancelled.lazySet(true);
        cVar.onComplete();
        replenishParent(j11, z13);
        return true;
    }

    void cleanupQueue(long j11, boolean z10) {
        while (this.queue.poll() != null) {
            j11++;
        }
        replenishParent(j11, z10);
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public void clear() {
        h hVar = this.queue;
        while (hVar.poll() != null) {
            this.produced++;
        }
        tryReplenish();
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        if (this.outputFused) {
            drainFused();
        } else {
            drainNormal();
        }
    }

    void drainFused() {
        Throwable th2;
        h hVar = this.queue;
        u10.c cVar = this.actual.get();
        int iAddAndGet = 1;
        while (true) {
            if (cVar != null) {
                if (this.cancelled.get()) {
                    return;
                }
                boolean z10 = this.done;
                if (z10 && !this.delayError && (th2 = this.error) != null) {
                    hVar.clear();
                    cVar.onError(th2);
                    return;
                }
                cVar.onNext(null);
                if (z10) {
                    Throwable th3 = this.error;
                    if (th3 != null) {
                        cVar.onError(th3);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            if (cVar == null) {
                cVar = this.actual.get();
            }
        }
    }

    void drainNormal() {
        long j11;
        long j12;
        h hVar = this.queue;
        boolean z10 = this.delayError;
        u10.c cVar = this.actual.get();
        AtomicBoolean atomicBoolean = this.cancelled;
        u10.c cVar2 = cVar;
        int iAddAndGet = 1;
        while (true) {
            long j13 = 0;
            if (atomicBoolean.get()) {
                cleanupQueue(0L, false);
            } else if (cVar2 != null) {
                long j14 = this.requested.get();
                long j15 = 0;
                while (true) {
                    if (j15 != j14) {
                        boolean z11 = this.done;
                        Object objPoll = hVar.poll();
                        boolean z12 = objPoll == null;
                        j11 = j15;
                        j12 = j13;
                        if (checkTerminated(z11, z12, cVar2, z10, j11, !z12)) {
                            continue;
                        } else if (!z12) {
                            cVar2.onNext(objPoll);
                            j15 = j11 + 1;
                            j13 = j12;
                        }
                    } else {
                        j11 = j15;
                        j12 = j13;
                    }
                    if (j15 != j14 || !checkTerminated(this.done, hVar.isEmpty(), cVar2, z10, j11, false)) {
                        if (j11 != j12) {
                            long j16 = j11;
                            io.reactivex.rxjava3.internal.util.a.d(this.requested, j16);
                            requestParent(j16);
                        }
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            if (cVar2 == null) {
                cVar2 = this.actual.get();
            }
        }
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public boolean isEmpty() {
        if (this.queue.isEmpty()) {
            tryReplenish();
            return true;
        }
        tryReplenish();
        return false;
    }

    public void onComplete() {
        this.done = true;
        drain();
    }

    public void onError(Throwable th2) {
        this.error = th2;
        this.done = true;
        drain();
    }

    public void onNext(T t11) {
        this.queue.offer(t11);
        drain();
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public T poll() {
        T t11 = (T) this.queue.poll();
        if (t11 != null) {
            this.produced++;
            return t11;
        }
        tryReplenish();
        return null;
    }

    void replenishParent(long j11, boolean z10) {
        if (z10) {
            j11++;
        }
        if (j11 != 0) {
            requestParent(j11);
        }
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
            drain();
        }
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.c
    public int requestFusion(int i11) {
        return 0;
    }

    void requestParent(long j11) {
        if ((this.once.get() & 2) == 0) {
            this.parent.requestGroup(j11);
        }
    }

    @Override // u10.b
    public void subscribe(u10.c cVar) {
        int i11;
        do {
            i11 = this.once.get();
            if ((i11 & 1) != 0) {
                EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), cVar);
                return;
            }
        } while (!this.once.compareAndSet(i11, i11 | 1));
        cVar.onSubscribe(this);
        this.actual.lazySet(cVar);
        if (this.cancelled.get()) {
            this.actual.lazySet(null);
        } else {
            drain();
        }
    }

    boolean tryAbandon() {
        return this.once.get() == 0 && this.once.compareAndSet(0, 2);
    }

    boolean tryComplete() {
        boolean zCompareAndSet = this.evictOnce.compareAndSet(false, true);
        this.done = true;
        drain();
        return zCompareAndSet;
    }

    void tryReplenish() {
        int i11 = this.produced;
        if (i11 != 0) {
            this.produced = 0;
            requestParent(i11);
        }
    }
}
