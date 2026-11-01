package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableWindowTimed$WindowExactBoundedObserver<T> extends ObservableWindowTimed$AbstractWindowObserver<T> implements Runnable {
    private static final long serialVersionUID = -6130475889925953722L;
    long count;
    final long maxSize;
    final boolean restartTimerOnMaxSize;
    final Scheduler scheduler;
    final SequentialDisposable timer;
    UnicastSubject window;
    final Scheduler.Worker worker;

    static final class WindowBoundaryRunnable implements Runnable {
        final long index;
        final ObservableWindowTimed$WindowExactBoundedObserver<?> parent;

        WindowBoundaryRunnable(ObservableWindowTimed$WindowExactBoundedObserver<?> observableWindowTimed$WindowExactBoundedObserver, long j11) {
            this.parent = observableWindowTimed$WindowExactBoundedObserver;
            this.index = j11;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.boundary(this);
        }
    }

    ObservableWindowTimed$WindowExactBoundedObserver(io.reactivex.rxjava3.core.o oVar, long j11, TimeUnit timeUnit, Scheduler scheduler, int i11, long j12, boolean z10) {
        super(oVar, j11, timeUnit, i11);
        this.scheduler = scheduler;
        this.maxSize = j12;
        this.restartTimerOnMaxSize = z10;
        if (z10) {
            this.worker = scheduler.c();
        } else {
            this.worker = null;
        }
        this.timer = new SequentialDisposable();
    }

    void boundary(WindowBoundaryRunnable windowBoundaryRunnable) {
        this.queue.offer(windowBoundaryRunnable);
        drain();
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void cleanupResources() {
        this.timer.dispose();
        Scheduler.Worker worker = this.worker;
        if (worker != null) {
            worker.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void createFirstWindow() {
        if (this.downstreamCancelled.get()) {
            return;
        }
        this.emitted = 1L;
        this.windowCount.getAndIncrement();
        UnicastSubject unicastSubjectJ = UnicastSubject.J(this.bufferSize, this);
        this.window = unicastSubjectJ;
        r rVar = new r(unicastSubjectJ);
        this.downstream.onNext(rVar);
        WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, 1L);
        if (this.restartTimerOnMaxSize) {
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler.Worker worker = this.worker;
            long j11 = this.timespan;
            sequentialDisposable.replace(worker.schedulePeriodically(windowBoundaryRunnable, j11, j11, this.unit));
        } else {
            SequentialDisposable sequentialDisposable2 = this.timer;
            Scheduler scheduler = this.scheduler;
            long j12 = this.timespan;
            sequentialDisposable2.replace(scheduler.f(windowBoundaryRunnable, j12, j12, this.unit));
        }
        if (rVar.J()) {
            this.window.onComplete();
        }
    }

    UnicastSubject createNewWindow(UnicastSubject unicastSubject) {
        if (unicastSubject != null) {
            unicastSubject.onComplete();
            unicastSubject = null;
        }
        if (this.downstreamCancelled.get()) {
            cleanupResources();
        } else {
            long j11 = this.emitted + 1;
            this.emitted = j11;
            this.windowCount.getAndIncrement();
            unicastSubject = UnicastSubject.J(this.bufferSize, this);
            this.window = unicastSubject;
            r rVar = new r(unicastSubject);
            this.downstream.onNext(rVar);
            if (this.restartTimerOnMaxSize) {
                SequentialDisposable sequentialDisposable = this.timer;
                Scheduler.Worker worker = this.worker;
                WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, j11);
                long j12 = this.timespan;
                sequentialDisposable.update(worker.schedulePeriodically(windowBoundaryRunnable, j12, j12, this.unit));
            }
            if (rVar.J()) {
                unicastSubject.onComplete();
            }
        }
        return unicastSubject;
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        io.reactivex.rxjava3.core.o oVar = this.downstream;
        UnicastSubject unicastSubjectCreateNewWindow = this.window;
        int iAddAndGet = 1;
        while (true) {
            if (this.upstreamCancelled) {
                fVar.clear();
                unicastSubjectCreateNewWindow = null;
                this.window = null;
            } else {
                boolean z10 = this.done;
                Object objPoll = fVar.poll();
                boolean z11 = objPoll == null;
                if (z10 && z11) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        if (unicastSubjectCreateNewWindow != null) {
                            unicastSubjectCreateNewWindow.onError(th2);
                        }
                        oVar.onError(th2);
                    } else {
                        if (unicastSubjectCreateNewWindow != null) {
                            unicastSubjectCreateNewWindow.onComplete();
                        }
                        oVar.onComplete();
                    }
                    cleanupResources();
                    this.upstreamCancelled = true;
                } else if (!z11) {
                    if (objPoll instanceof WindowBoundaryRunnable) {
                        if (((WindowBoundaryRunnable) objPoll).index == this.emitted || !this.restartTimerOnMaxSize) {
                            this.count = 0L;
                            unicastSubjectCreateNewWindow = createNewWindow(unicastSubjectCreateNewWindow);
                        }
                    } else if (unicastSubjectCreateNewWindow != null) {
                        unicastSubjectCreateNewWindow.onNext(objPoll);
                        long j11 = this.count + 1;
                        if (j11 == this.maxSize) {
                            this.count = 0L;
                            unicastSubjectCreateNewWindow = createNewWindow(unicastSubjectCreateNewWindow);
                        } else {
                            this.count = j11;
                        }
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
        windowDone();
    }
}
