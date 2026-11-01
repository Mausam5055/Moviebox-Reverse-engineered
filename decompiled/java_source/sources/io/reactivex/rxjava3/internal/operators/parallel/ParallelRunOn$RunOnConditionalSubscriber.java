package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.a;
import u10.d;

/* JADX INFO: loaded from: classes7.dex */
final class ParallelRunOn$RunOnConditionalSubscriber<T> extends ParallelRunOn$BaseRunOnSubscriber<T> {
    private static final long serialVersionUID = 1075119423897941642L;
    final a downstream;

    ParallelRunOn$RunOnConditionalSubscriber(a aVar, int i11, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
        super(i11, spscArrayQueue, worker);
    }

    @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelRunOn$BaseRunOnSubscriber, u10.c
    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            throw null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i11 = this.consumed;
        SpscArrayQueue<T> spscArrayQueue = this.queue;
        int iAddAndGet = 1;
        do {
            long j11 = this.requested.get();
            if (0 != j11) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                }
                boolean z10 = this.done;
                if (z10 && this.error != null) {
                    spscArrayQueue.clear();
                    throw null;
                }
                boolean z11 = spscArrayQueue.poll() == null;
                if (z10 && z11) {
                    throw null;
                }
                if (!z11) {
                    throw null;
                }
            }
            if (0 == j11) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                } else if (this.done) {
                    if (this.error != null) {
                        spscArrayQueue.clear();
                        throw null;
                    }
                    if (spscArrayQueue.isEmpty()) {
                        throw null;
                    }
                }
            }
            if (0 != 0) {
                io.reactivex.rxjava3.internal.util.a.d(this.requested, 0L);
            }
            this.consumed = i11;
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }
}
