package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableBufferTimed$BufferExactUnboundedObserver<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.e implements Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final lz.k bufferSupplier;
    final Scheduler scheduler;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> timer;
    final long timespan;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;

    ObservableBufferTimed$BufferExactUnboundedObserver(io.reactivex.rxjava3.core.o oVar, lz.k kVar, long j11, TimeUnit timeUnit, Scheduler scheduler) {
        super(oVar, new MpscLinkedQueue());
        this.timer = new AtomicReference<>();
        this.bufferSupplier = kVar;
        this.timespan = j11;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.internal.observers.e, io.reactivex.rxjava3.internal.util.e
    public void accept(io.reactivex.rxjava3.core.o oVar, U u11) {
        this.downstream.onNext(u11);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this.timer);
        this.upstream.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.timer.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        U u11;
        synchronized (this) {
            u11 = this.buffer;
            this.buffer = null;
        }
        if (u11 != null) {
            this.queue.offer(u11);
            this.done = true;
            if (enter()) {
                io.reactivex.rxjava3.internal.util.i.d(this.queue, this.downstream, false, null, this);
            }
        }
        DisposableHelper.dispose(this.timer);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
        DisposableHelper.dispose(this.timer);
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
            } catch (Throwable th2) {
                throw th2;
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
                if (DisposableHelper.isDisposed(this.timer.get())) {
                    return;
                }
                Scheduler scheduler = this.scheduler;
                long j11 = this.timespan;
                DisposableHelper.set(this.timer, scheduler.f(this, j11, j11, this.unit));
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dispose();
                EmptyDisposable.error(th2, this.downstream);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        U u11;
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
            U u12 = (U) obj;
            synchronized (this) {
                try {
                    u11 = this.buffer;
                    if (u11 != null) {
                        this.buffer = u12;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (u11 == null) {
                DisposableHelper.dispose(this.timer);
            } else {
                fastPathEmit(u11, false, this);
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            this.downstream.onError(th3);
            dispose();
        }
    }
}
