package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;

/* JADX INFO: loaded from: classes.dex */
public final class ObservableObserveOn extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Scheduler f65400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f65401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f65402d;

    static final class ObserveOnObserver<T> extends BasicIntQueueDisposable<T> implements io.reactivex.rxjava3.core.o, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;
        final int bufferSize;
        final boolean delayError;
        volatile boolean disposed;
        volatile boolean done;
        final io.reactivex.rxjava3.core.o downstream;
        Throwable error;
        boolean outputFused;
        io.reactivex.rxjava3.operators.g queue;
        int sourceMode;
        io.reactivex.rxjava3.disposables.c upstream;
        final Scheduler.Worker worker;

        ObserveOnObserver(io.reactivex.rxjava3.core.o oVar, Scheduler.Worker worker, boolean z10, int i11) {
            this.downstream = oVar;
            this.worker = worker;
            this.delayError = z10;
            this.bufferSize = i11;
        }

        boolean checkTerminated(boolean z10, boolean z11, io.reactivex.rxjava3.core.o oVar) {
            if (this.disposed) {
                this.queue.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            Throwable th2 = this.error;
            if (this.delayError) {
                if (!z11) {
                    return false;
                }
                this.disposed = true;
                if (th2 != null) {
                    oVar.onError(th2);
                } else {
                    oVar.onComplete();
                }
                this.worker.dispose();
                return true;
            }
            if (th2 != null) {
                this.disposed = true;
                this.queue.clear();
                oVar.onError(th2);
                this.worker.dispose();
                return true;
            }
            if (!z11) {
                return false;
            }
            this.disposed = true;
            oVar.onComplete();
            this.worker.dispose();
            return true;
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
        public void clear() {
            this.queue.clear();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.upstream.dispose();
            this.worker.dispose();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        void drainFused() {
            int iAddAndGet = 1;
            while (!this.disposed) {
                boolean z10 = this.done;
                Throwable th2 = this.error;
                if (!this.delayError && z10 && th2 != null) {
                    this.disposed = true;
                    this.downstream.onError(this.error);
                    this.worker.dispose();
                    return;
                }
                this.downstream.onNext(null);
                if (z10) {
                    this.disposed = true;
                    Throwable th3 = this.error;
                    if (th3 != null) {
                        this.downstream.onError(th3);
                    } else {
                        this.downstream.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        void drainNormal() {
            io.reactivex.rxjava3.operators.g gVar = this.queue;
            io.reactivex.rxjava3.core.o oVar = this.downstream;
            int iAddAndGet = 1;
            while (!checkTerminated(this.done, gVar.isEmpty(), oVar)) {
                while (true) {
                    boolean z10 = this.done;
                    try {
                        Object objPoll = gVar.poll();
                        boolean z11 = objPoll == null;
                        if (checkTerminated(z10, z11, oVar)) {
                            return;
                        }
                        if (z11) {
                            break;
                        } else {
                            oVar.onNext(objPoll);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        this.disposed = true;
                        this.upstream.dispose();
                        gVar.clear();
                        oVar.onError(th2);
                        this.worker.dispose();
                        return;
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            schedule();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            if (this.done) {
                pz.a.r(th2);
                return;
            }
            this.error = th2;
            this.done = true;
            schedule();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(T t11) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 2) {
                this.queue.offer(t11);
            }
            schedule();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.upstream, cVar)) {
                this.upstream = cVar;
                if (cVar instanceof io.reactivex.rxjava3.operators.b) {
                    io.reactivex.rxjava3.operators.b bVar = (io.reactivex.rxjava3.operators.b) cVar;
                    int iRequestFusion = bVar.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = bVar;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        schedule();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = bVar;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                }
                this.queue = new io.reactivex.rxjava3.operators.h(this.bufferSize);
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
        public T poll() throws Throwable {
            return (T) this.queue.poll();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.c
        public int requestFusion(int i11) {
            if ((i11 & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.outputFused) {
                drainFused();
            } else {
                drainNormal();
            }
        }

        void schedule() {
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }
    }

    public ObservableObserveOn(io.reactivex.rxjava3.core.m mVar, Scheduler scheduler, boolean z10, int i11) {
        super(mVar);
        this.f65400b = scheduler;
        this.f65401c = z10;
        this.f65402d = i11;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        Scheduler scheduler = this.f65400b;
        if (scheduler instanceof TrampolineScheduler) {
            this.f65422a.subscribe(oVar);
        } else {
            this.f65422a.subscribe(new ObserveOnObserver(oVar, scheduler.c(), this.f65401c, this.f65402d));
        }
    }
}
