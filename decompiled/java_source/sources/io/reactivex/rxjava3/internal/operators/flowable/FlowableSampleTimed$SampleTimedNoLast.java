package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableSampleTimed$SampleTimedNoLast<T> extends FlowableSampleTimed$SampleTimedSubscriber<T> {
    private static final long serialVersionUID = -7139995637533111443L;

    FlowableSampleTimed$SampleTimedNoLast(u10.c cVar, long j11, TimeUnit timeUnit, Scheduler scheduler, lz.f fVar) {
        super(cVar, j11, timeUnit, scheduler, fVar);
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableSampleTimed$SampleTimedSubscriber
    void complete() {
        this.downstream.onComplete();
    }

    @Override // java.lang.Runnable
    public void run() {
        emit();
    }
}
