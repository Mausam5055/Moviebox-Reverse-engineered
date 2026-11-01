package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableSampleTimed$SampleTimedEmitLast<T> extends FlowableSampleTimed$SampleTimedSubscriber<T> {
    private static final long serialVersionUID = -7139995637533111443L;
    final AtomicInteger wip;

    FlowableSampleTimed$SampleTimedEmitLast(u10.c cVar, long j11, TimeUnit timeUnit, Scheduler scheduler, lz.f fVar) {
        super(cVar, j11, timeUnit, scheduler, fVar);
        this.wip = new AtomicInteger(1);
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableSampleTimed$SampleTimedSubscriber
    void complete() {
        emit();
        if (this.wip.decrementAndGet() == 0) {
            this.downstream.onComplete();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.wip.incrementAndGet() == 2) {
            emit();
            if (this.wip.decrementAndGet() == 0) {
                this.downstream.onComplete();
            }
        }
    }
}
