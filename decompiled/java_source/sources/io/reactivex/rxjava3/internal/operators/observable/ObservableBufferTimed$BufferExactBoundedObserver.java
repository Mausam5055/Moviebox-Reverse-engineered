package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableBufferTimed$BufferExactBoundedObserver<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.e implements Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final lz.k bufferSupplier;
    long consumerIndex;
    final int maxSize;
    long producerIndex;
    final boolean restartTimerOnMaxSize;
    io.reactivex.rxjava3.disposables.c timer;
    final long timespan;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final Scheduler.Worker f65390w;

    ObservableBufferTimed$BufferExactBoundedObserver(io.reactivex.rxjava3.core.o oVar, lz.k kVar, long j11, TimeUnit timeUnit, int i11, boolean z10, Scheduler.Worker worker) {
        super(oVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j11;
        this.unit = timeUnit;
        this.maxSize = i11;
        this.restartTimerOnMaxSize = z10;
        this.f65390w = worker;
    }

    @Override // io.reactivex.rxjava3.internal.observers.e, io.reactivex.rxjava3.internal.util.e
    public void accept(io.reactivex.rxjava3.core.o oVar, U u11) {
        oVar.onNext(u11);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.dispose();
        this.f65390w.dispose();
        synchronized (this) {
            this.buffer = null;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        U u11;
        this.f65390w.dispose();
        synchronized (this) {
            u11 = this.buffer;
            this.buffer = null;
        }
        if (u11 != null) {
            this.queue.offer(u11);
            this.done = true;
            if (enter()) {
                io.reactivex.rxjava3.internal.util.i.d(this.queue, this.downstream, false, this, this);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
        this.f65390w.dispose();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        synchronized (this) {
            try {
                U u11 = this.buffer;
                if (u11 == null) {
                    return;
                }
                u11.add(t11);
                if (u11.size() < this.maxSize) {
                    return;
                }
                this.buffer = null;
                this.producerIndex++;
                if (this.restartTimerOnMaxSize) {
                    this.timer.dispose();
                }
                fastPathOrderedEmit(u11, false, this);
                try {
                    Object obj = this.bufferSupplier.get();
                    Objects.requireNonNull(obj, "The buffer supplied is null");
                    U u12 = (U) obj;
                    synchronized (this) {
                        this.buffer = u12;
                        this.consumerIndex++;
                    }
                    if (this.restartTimerOnMaxSize) {
                        Scheduler.Worker worker = this.f65390w;
                        long j11 = this.timespan;
                        this.timer = worker.schedulePeriodically(this, j11, j11, this.unit);
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.downstream.onError(th2);
                    dispose();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The buffer supplied is null");
                this.buffer = (U) obj;
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.f65390w;
                long j11 = this.timespan;
                this.timer = worker.schedulePeriodically(this, j11, j11, this.unit);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cVar.dispose();
                EmptyDisposable.error(th2, this.downstream);
                this.f65390w.dispose();
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
            U u11 = (U) obj;
            synchronized (this) {
                U u12 = this.buffer;
                if (u12 != null && this.producerIndex == this.consumerIndex) {
                    this.buffer = u11;
                    fastPathOrderedEmit(u12, false, this);
                }
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dispose();
            this.downstream.onError(th2);
        }
    }
}
