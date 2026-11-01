package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableSampleTimed$SampleTimedEmitLast<T> extends ObservableSampleTimed$SampleTimedObserver<T> {
    private static final long serialVersionUID = -7139995637533111443L;
    final AtomicInteger wip;

    ObservableSampleTimed$SampleTimedEmitLast(io.reactivex.rxjava3.core.o oVar, long j11, TimeUnit timeUnit, Scheduler scheduler, lz.f fVar) {
        super(oVar, j11, timeUnit, scheduler, fVar);
        this.wip = new AtomicInteger(1);
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleTimed$SampleTimedObserver
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
