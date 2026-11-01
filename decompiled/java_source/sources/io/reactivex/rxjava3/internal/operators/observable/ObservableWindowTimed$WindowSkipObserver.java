package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableWindowTimed$WindowSkipObserver<T> extends ObservableWindowTimed$AbstractWindowObserver<T> implements Runnable {
    private static final long serialVersionUID = -7852870764194095894L;
    final long timeskip;
    final List<UnicastSubject> windows;
    final Scheduler.Worker worker;
    static final Object WINDOW_OPEN = new Object();
    static final Object WINDOW_CLOSE = new Object();

    static final class WindowBoundaryRunnable implements Runnable {
        final boolean isOpen;
        final ObservableWindowTimed$WindowSkipObserver<?> parent;

        WindowBoundaryRunnable(ObservableWindowTimed$WindowSkipObserver<?> observableWindowTimed$WindowSkipObserver, boolean z10) {
            this.parent = observableWindowTimed$WindowSkipObserver;
            this.isOpen = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.boundary(this.isOpen);
        }
    }

    ObservableWindowTimed$WindowSkipObserver(io.reactivex.rxjava3.core.o oVar, long j11, long j12, TimeUnit timeUnit, Scheduler.Worker worker, int i11) {
        super(oVar, j11, timeUnit, i11);
        this.timeskip = j12;
        this.worker = worker;
        this.windows = new LinkedList();
    }

    void boundary(boolean z10) {
        this.queue.offer(z10 ? WINDOW_OPEN : WINDOW_CLOSE);
        drain();
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void cleanupResources() {
        this.worker.dispose();
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void createFirstWindow() {
        if (this.downstreamCancelled.get()) {
            return;
        }
        this.emitted = 1L;
        this.windowCount.getAndIncrement();
        UnicastSubject unicastSubjectJ = UnicastSubject.J(this.bufferSize, this);
        this.windows.add(unicastSubjectJ);
        r rVar = new r(unicastSubjectJ);
        this.downstream.onNext(rVar);
        this.worker.schedule(new WindowBoundaryRunnable(this, false), this.timespan, this.unit);
        Scheduler.Worker worker = this.worker;
        WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, true);
        long j11 = this.timeskip;
        worker.schedulePeriodically(windowBoundaryRunnable, j11, j11, this.unit);
        if (rVar.J()) {
            unicastSubjectJ.onComplete();
            this.windows.remove(unicastSubjectJ);
        }
    }

    @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$AbstractWindowObserver
    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        io.reactivex.rxjava3.core.o oVar = this.downstream;
        List<UnicastSubject> list = this.windows;
        int iAddAndGet = 1;
        while (true) {
            if (this.upstreamCancelled) {
                fVar.clear();
                list.clear();
            } else {
                boolean z10 = this.done;
                Object objPoll = fVar.poll();
                boolean z11 = objPoll == null;
                if (z10 && z11) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        Iterator<UnicastSubject> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().onError(th2);
                        }
                        oVar.onError(th2);
                    } else {
                        Iterator<UnicastSubject> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().onComplete();
                        }
                        oVar.onComplete();
                    }
                    cleanupResources();
                    this.upstreamCancelled = true;
                } else if (!z11) {
                    if (objPoll == WINDOW_OPEN) {
                        if (!this.downstreamCancelled.get()) {
                            this.emitted++;
                            this.windowCount.getAndIncrement();
                            UnicastSubject unicastSubjectJ = UnicastSubject.J(this.bufferSize, this);
                            list.add(unicastSubjectJ);
                            r rVar = new r(unicastSubjectJ);
                            oVar.onNext(rVar);
                            this.worker.schedule(new WindowBoundaryRunnable(this, false), this.timespan, this.unit);
                            if (rVar.J()) {
                                unicastSubjectJ.onComplete();
                            }
                        }
                    } else if (objPoll != WINDOW_CLOSE) {
                        Iterator<UnicastSubject> it3 = list.iterator();
                        while (it3.hasNext()) {
                            it3.next().onNext(objPoll);
                        }
                    } else if (!list.isEmpty()) {
                        list.remove(0).onComplete();
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
