package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableConcatMapScheduler$ConcatMapObserver<T, U> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 8828587559905699186L;
    volatile boolean active;
    final int bufferSize;
    volatile boolean disposed;
    volatile boolean done;
    final io.reactivex.rxjava3.core.o downstream;
    int fusionMode;
    final InnerObserver<U> inner;
    final lz.h mapper;
    io.reactivex.rxjava3.operators.g queue;
    io.reactivex.rxjava3.disposables.c upstream;
    final Scheduler.Worker worker;

    static final class InnerObserver<U> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o {
        private static final long serialVersionUID = -7449079488798789337L;
        final io.reactivex.rxjava3.core.o downstream;
        final ObservableConcatMapScheduler$ConcatMapObserver<?, ?> parent;

        InnerObserver(io.reactivex.rxjava3.core.o oVar, ObservableConcatMapScheduler$ConcatMapObserver<?, ?> observableConcatMapScheduler$ConcatMapObserver) {
            this.downstream = oVar;
            this.parent = observableConcatMapScheduler$ConcatMapObserver;
        }

        void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            this.parent.innerComplete();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            this.parent.dispose();
            this.downstream.onError(th2);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(U u11) {
            this.downstream.onNext(u11);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }
    }

    ObservableConcatMapScheduler$ConcatMapObserver(io.reactivex.rxjava3.core.o oVar, lz.h hVar, int i11, Scheduler.Worker worker) {
        this.downstream = oVar;
        this.mapper = hVar;
        this.bufferSize = i11;
        this.inner = new InnerObserver<>(oVar, this);
        this.worker = worker;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        this.disposed = true;
        this.inner.dispose();
        this.upstream.dispose();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        this.worker.schedule(this);
    }

    void innerComplete() {
        this.active = false;
        drain();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.disposed;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        drain();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        if (this.done) {
            pz.a.r(th2);
            return;
        }
        this.done = true;
        dispose();
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        if (this.done) {
            return;
        }
        if (this.fusionMode == 0) {
            this.queue.offer(t11);
        }
        drain();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            if (cVar instanceof io.reactivex.rxjava3.operators.b) {
                io.reactivex.rxjava3.operators.b bVar = (io.reactivex.rxjava3.operators.b) cVar;
                int iRequestFusion = bVar.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = bVar;
                    this.done = true;
                    this.downstream.onSubscribe(this);
                    drain();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = bVar;
                    this.downstream.onSubscribe(this);
                    return;
                }
            }
            this.queue = new io.reactivex.rxjava3.operators.h(this.bufferSize);
            this.downstream.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!this.disposed) {
            if (!this.active) {
                boolean z10 = this.done;
                try {
                    Object objPoll = this.queue.poll();
                    boolean z11 = objPoll == null;
                    if (z10 && z11) {
                        this.disposed = true;
                        this.downstream.onComplete();
                        this.worker.dispose();
                        return;
                    } else if (!z11) {
                        try {
                            Object objApply = this.mapper.apply(objPoll);
                            Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                            io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) objApply;
                            this.active = true;
                            mVar.subscribe(this.inner);
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            dispose();
                            this.queue.clear();
                            this.downstream.onError(th2);
                            this.worker.dispose();
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    dispose();
                    this.queue.clear();
                    this.downstream.onError(th3);
                    this.worker.dispose();
                    return;
                }
            }
            if (decrementAndGet() == 0) {
                return;
            }
        }
        this.queue.clear();
    }
}
