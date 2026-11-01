package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableSampleTimed$SampleTimedNoLast<T> extends ObservableSampleTimed$SampleTimedObserver<T> {
    private static final long serialVersionUID = -7139995637533111443L;

    ObservableSampleTimed$SampleTimedNoLast(io.reactivex.rxjava3.core.o oVar, long j11, TimeUnit timeUnit, Scheduler scheduler, lz.f fVar) {
        super(oVar, j11, timeUnit, scheduler, fVar);
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleTimed$SampleTimedObserver
    void complete() {
        this.downstream.onComplete();
    }

    @Override // java.lang.Runnable
    public void run() {
        emit();
    }
}
