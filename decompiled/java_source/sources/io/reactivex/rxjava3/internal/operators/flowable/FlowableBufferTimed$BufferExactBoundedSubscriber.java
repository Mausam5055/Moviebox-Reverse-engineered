package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableBufferTimed$BufferExactBoundedSubscriber<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.b implements u10.d, Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final k bufferSupplier;
    long consumerIndex;
    final int maxSize;
    long producerIndex;
    final boolean restartTimerOnMaxSize;
    io.reactivex.rxjava3.disposables.c timer;
    final long timespan;
    final TimeUnit unit;
    u10.d upstream;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final Scheduler.Worker f65353w;

    FlowableBufferTimed$BufferExactBoundedSubscriber(u10.c cVar, k kVar, long j11, TimeUnit timeUnit, int i11, boolean z10, Scheduler.Worker worker) {
        super(cVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j11;
        this.unit = timeUnit;
        this.maxSize = i11;
        this.restartTimerOnMaxSize = z10;
        this.f65353w = worker;
    }

    @Override // io.reactivex.rxjava3.internal.subscribers.b, io.reactivex.rxjava3.internal.util.h
    public boolean accept(u10.c cVar, U u11) {
        cVar.onNext(u11);
        return true;
    }

    @Override // u10.d
    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        synchronized (this) {
            this.buffer = null;
        }
        this.upstream.cancel();
        this.f65353w.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.f65353w.isDisposed();
    }

    @Override // u10.c
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
                i.e(this.queue, this.downstream, false, this, this);
            }
            this.f65353w.dispose();
        }
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
        this.f65353w.dispose();
    }

    @Override // u10.c
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
                fastPathOrderedEmitMax(u11, false, this);
                try {
                    Object obj = this.bufferSupplier.get();
                    Objects.requireNonNull(obj, "The supplied buffer is null");
                    U u12 = (U) obj;
                    synchronized (this) {
                        this.buffer = u12;
                        this.consumerIndex++;
                    }
                    if (this.restartTimerOnMaxSize) {
                        Scheduler.Worker worker = this.f65353w;
                        long j11 = this.timespan;
                        this.timer = worker.schedulePeriodically(this, j11, j11, this.unit);
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    cancel();
                    this.downstream.onError(th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The supplied buffer is null");
                this.buffer = (U) obj;
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.f65353w;
                long j11 = this.timespan;
                this.timer = worker.schedulePeriodically(this, j11, j11, this.unit);
                dVar.request(Long.MAX_VALUE);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f65353w.dispose();
                dVar.cancel();
                EmptySubscription.error(th2, this.downstream);
            }
        }
    }

    @Override // u10.d
    public void request(long j11) {
        requested(j11);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The supplied buffer is null");
            U u11 = (U) obj;
            synchronized (this) {
                U u12 = this.buffer;
                if (u12 != null && this.producerIndex == this.consumerIndex) {
                    this.buffer = u11;
                    fastPathOrderedEmitMax(u12, false, this);
                }
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            cancel();
            this.downstream.onError(th2);
        }
    }
}
