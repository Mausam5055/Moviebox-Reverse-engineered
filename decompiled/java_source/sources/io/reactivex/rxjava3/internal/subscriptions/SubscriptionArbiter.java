package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.internal.util.a;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import u10.d;

/* JADX INFO: loaded from: classes7.dex */
public class SubscriptionArbiter extends AtomicInteger implements d {
    private static final long serialVersionUID = -2189523197179400958L;
    d actual;
    final boolean cancelOnReplace;
    volatile boolean cancelled;
    long requested;
    protected boolean unbounded;
    final AtomicReference<d> missedSubscription = new AtomicReference<>();
    final AtomicLong missedRequested = new AtomicLong();
    final AtomicLong missedProduced = new AtomicLong();

    public SubscriptionArbiter(boolean z10) {
        this.cancelOnReplace = z10;
    }

    @Override // u10.d
    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        drain();
    }

    final void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }

    final void drainLoop() {
        int iAddAndGet = 1;
        long jB = 0;
        d dVar = null;
        do {
            d andSet = this.missedSubscription.get();
            if (andSet != null) {
                andSet = this.missedSubscription.getAndSet(null);
            }
            long andSet2 = this.missedRequested.get();
            if (andSet2 != 0) {
                andSet2 = this.missedRequested.getAndSet(0L);
            }
            long andSet3 = this.missedProduced.get();
            if (andSet3 != 0) {
                andSet3 = this.missedProduced.getAndSet(0L);
            }
            d dVar2 = this.actual;
            if (this.cancelled) {
                if (dVar2 != null) {
                    dVar2.cancel();
                    this.actual = null;
                }
                if (andSet != null) {
                    andSet.cancel();
                }
            } else {
                long jB2 = this.requested;
                if (jB2 != Long.MAX_VALUE) {
                    jB2 = a.b(jB2, andSet2);
                    if (jB2 != Long.MAX_VALUE) {
                        jB2 -= andSet3;
                        if (jB2 < 0) {
                            SubscriptionHelper.reportMoreProduced(jB2);
                            jB2 = 0;
                        }
                    }
                    this.requested = jB2;
                }
                if (andSet != null) {
                    if (dVar2 != null && this.cancelOnReplace) {
                        dVar2.cancel();
                    }
                    this.actual = andSet;
                    if (jB2 != 0) {
                        jB = a.b(jB, jB2);
                        dVar = andSet;
                    }
                } else if (dVar2 != null && andSet2 != 0) {
                    jB = a.b(jB, andSet2);
                    dVar = dVar2;
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
        if (jB != 0) {
            dVar.request(jB);
        }
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public final boolean isUnbounded() {
        return this.unbounded;
    }

    public final void produced(long j11) {
        if (this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            a.a(this.missedProduced, j11);
            drain();
            return;
        }
        long j12 = this.requested;
        if (j12 != Long.MAX_VALUE) {
            long j13 = j12 - j11;
            if (j13 < 0) {
                SubscriptionHelper.reportMoreProduced(j13);
                j13 = 0;
            }
            this.requested = j13;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        drainLoop();
    }

    @Override // u10.d
    public final void request(long j11) {
        if (!SubscriptionHelper.validate(j11) || this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            a.a(this.missedRequested, j11);
            drain();
            return;
        }
        long j12 = this.requested;
        if (j12 != Long.MAX_VALUE) {
            long jB = a.b(j12, j11);
            this.requested = jB;
            if (jB == Long.MAX_VALUE) {
                this.unbounded = true;
            }
        }
        d dVar = this.actual;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (dVar != null) {
            dVar.request(j11);
        }
    }

    public final void setSubscription(d dVar) {
        if (this.cancelled) {
            dVar.cancel();
            return;
        }
        Objects.requireNonNull(dVar, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            d andSet = this.missedSubscription.getAndSet(dVar);
            if (andSet != null && this.cancelOnReplace) {
                andSet.cancel();
            }
            drain();
            return;
        }
        d dVar2 = this.actual;
        if (dVar2 != null && this.cancelOnReplace) {
            dVar2.cancel();
        }
        this.actual = dVar;
        long j11 = this.requested;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (j11 != 0) {
            dVar.request(j11);
        }
    }
}
