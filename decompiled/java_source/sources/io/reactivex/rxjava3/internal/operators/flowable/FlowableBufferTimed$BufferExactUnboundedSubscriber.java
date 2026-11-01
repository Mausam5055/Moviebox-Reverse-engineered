package io.reactivex.rxjava3.internal.operators.flowable;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableBufferTimed$BufferExactUnboundedSubscriber<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.b implements u10.d, Runnable, io.reactivex.rxjava3.disposables.c {
    U buffer;
    final k bufferSupplier;
    final Scheduler scheduler;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> timer;
    final long timespan;
    final TimeUnit unit;
    u10.d upstream;

    FlowableBufferTimed$BufferExactUnboundedSubscriber(u10.c cVar, k kVar, long j11, TimeUnit timeUnit, Scheduler scheduler) {
        super(cVar, new MpscLinkedQueue());
        this.timer = new AtomicReference<>();
        this.bufferSupplier = kVar;
        this.timespan = j11;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.internal.subscribers.b, io.reactivex.rxjava3.internal.util.h
    public boolean accept(u10.c cVar, U u11) {
        this.downstream.onNext(u11);
        return true;
    }

    @Override // u10.d
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        DisposableHelper.dispose(this.timer);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        cancel();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.timer.get() == DisposableHelper.DISPOSED;
    }

    @Override // u10.c
    public void onComplete() {
        DisposableHelper.dispose(this.timer);
        synchronized (this) {
            try {
                U u11 = this.buffer;
                if (u11 == null) {
                    return;
                }
                this.buffer = null;
                this.queue.offer(u11);
                this.done = true;
                if (enter()) {
                    i.e(this.queue, this.downstream, false, null, this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        DisposableHelper.dispose(this.timer);
        synchronized (this) {
            this.buffer = null;
        }
        this.downstream.onError(th2);
    }

    @Override // u10.c
    public void onNext(T t11) {
        synchronized (this) {
            try {
                U u11 = this.buffer;
                if (u11 != null) {
                    u11.add(t11);
                }
            } catch (Throwable th2) {
                throw th2;
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
                if (this.cancelled) {
                    return;
                }
                dVar.request(Long.MAX_VALUE);
                Scheduler scheduler = this.scheduler;
                long j11 = this.timespan;
                io.reactivex.rxjava3.disposables.c cVarF = scheduler.f(this, j11, j11, this.unit);
                if (j0.a(this.timer, null, cVarF)) {
                    return;
                }
                cVarF.dispose();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cancel();
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
                try {
                    U u12 = this.buffer;
                    if (u12 == null) {
                        return;
                    }
                    this.buffer = u11;
                    fastPathEmitMax(u12, false, this);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            cancel();
            this.downstream.onError(th3);
        }
    }
}
