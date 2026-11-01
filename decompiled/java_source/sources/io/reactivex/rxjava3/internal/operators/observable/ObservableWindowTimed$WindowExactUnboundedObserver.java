package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableWindowTimed$WindowExactUnboundedObserver<T> extends ObservableWindowTimed$AbstractWindowObserver<T> implements Runnable {
    static final Object NEXT_WINDOW = new Object();
    private static final long serialVersionUID = 1155822639622580836L;
    final Scheduler scheduler;
    final SequentialDisposable timer;
    UnicastSubject window;
    final Runnable windowRunnable;

    final class WindowRunnable implements Runnable {
        WindowRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ObservableWindowTimed$WindowExactUnboundedObserver.this.windowDone();
        }
    }

    ObservableWindowTimed$WindowExactUnboundedObserver(io.reactivex.rxjava3.core.o oVar, long j11, TimeUnit timeUnit, Scheduler scheduler, int i11) {
        super(oVar, j11, timeUnit, i11);
        this.scheduler = scheduler;
        this.timer = new SequentialDisposable();
        this.windowRunnable = new WindowRunnable();
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void cleanupResources() {
        this.timer.dispose();
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void createFirstWindow() {
        if (this.downstreamCancelled.get()) {
            return;
        }
        this.windowCount.getAndIncrement();
        UnicastSubject unicastSubjectJ = UnicastSubject.J(this.bufferSize, this.windowRunnable);
        this.window = unicastSubjectJ;
        this.emitted = 1L;
        r rVar = new r(unicastSubjectJ);
        this.downstream.onNext(rVar);
        SequentialDisposable sequentialDisposable = this.timer;
        Scheduler scheduler = this.scheduler;
        long j11 = this.timespan;
        sequentialDisposable.replace(scheduler.f(this, j11, j11, this.unit));
        if (rVar.J()) {
            this.window.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        io.reactivex.rxjava3.core.o oVar = this.downstream;
        UnicastSubject unicastSubjectJ = this.window;
        int iAddAndGet = 1;
        while (true) {
            if (this.upstreamCancelled) {
                fVar.clear();
                this.window = null;
                unicastSubjectJ = null;
            } else {
                boolean z10 = this.done;
                Object objPoll = fVar.poll();
                boolean z11 = objPoll == null;
                if (z10 && z11) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        if (unicastSubjectJ != null) {
                            unicastSubjectJ.onError(th2);
                        }
                        oVar.onError(th2);
                    } else {
                        if (unicastSubjectJ != null) {
                            unicastSubjectJ.onComplete();
                        }
                        oVar.onComplete();
                    }
                    cleanupResources();
                    this.upstreamCancelled = true;
                } else if (!z11) {
                    if (objPoll == NEXT_WINDOW) {
                        if (unicastSubjectJ != null) {
                            unicastSubjectJ.onComplete();
                            this.window = null;
                            unicastSubjectJ = null;
                        }
                        if (this.downstreamCancelled.get()) {
                            this.timer.dispose();
                        } else {
                            this.emitted++;
                            this.windowCount.getAndIncrement();
                            unicastSubjectJ = UnicastSubject.J(this.bufferSize, this.windowRunnable);
                            this.window = unicastSubjectJ;
                            r rVar = new r(unicastSubjectJ);
                            oVar.onNext(rVar);
                            if (rVar.J()) {
                                unicastSubjectJ.onComplete();
                            }
                        }
                    } else if (unicastSubjectJ != null) {
                        unicastSubjectJ.onNext(objPoll);
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.queue.offer(NEXT_WINDOW);
        drain();
    }
}
