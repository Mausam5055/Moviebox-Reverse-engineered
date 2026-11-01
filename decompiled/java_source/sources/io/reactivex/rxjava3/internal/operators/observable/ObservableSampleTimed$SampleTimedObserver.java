package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
abstract class ObservableSampleTimed$SampleTimedObserver<T> extends AtomicReference<T> implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = -3517602651313910099L;
    final io.reactivex.rxjava3.core.o downstream;
    final lz.f onDropped;
    final long period;
    final Scheduler scheduler;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> timer = new AtomicReference<>();
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;

    ObservableSampleTimed$SampleTimedObserver(io.reactivex.rxjava3.core.o oVar, long j11, TimeUnit timeUnit, Scheduler scheduler, lz.f fVar) {
        this.downstream = oVar;
        this.period = j11;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.onDropped = fVar;
    }

    void cancelTimer() {
        DisposableHelper.dispose(this.timer);
    }

    abstract void complete();

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        cancelTimer();
        this.upstream.dispose();
    }

    void emit() {
        T andSet = getAndSet(null);
        if (andSet != null) {
            this.downstream.onNext(andSet);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.upstream.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        cancelTimer();
        complete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        cancelTimer();
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        lz.f fVar;
        T andSet = getAndSet(t11);
        if (andSet == null || (fVar = this.onDropped) == null) {
            return;
        }
        try {
            fVar.accept(andSet);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            cancelTimer();
            this.upstream.dispose();
            this.downstream.onError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
            Scheduler scheduler = this.scheduler;
            long j11 = this.period;
            DisposableHelper.replace(this.timer, scheduler.f(this, j11, j11, this.unit));
        }
    }
}
