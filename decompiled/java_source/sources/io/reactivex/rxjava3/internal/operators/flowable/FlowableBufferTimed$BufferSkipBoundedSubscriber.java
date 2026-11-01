package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableBufferTimed$BufferSkipBoundedSubscriber<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.b implements u10.d, Runnable {
    final k bufferSupplier;
    final List<U> buffers;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    u10.d upstream;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final Scheduler.Worker f65354w;

    final class RemoveFromBuffer implements Runnable {
        private final U buffer;

        RemoveFromBuffer(U u11) {
            this.buffer = u11;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (FlowableBufferTimed$BufferSkipBoundedSubscriber.this) {
                FlowableBufferTimed$BufferSkipBoundedSubscriber.this.buffers.remove(this.buffer);
            }
            FlowableBufferTimed$BufferSkipBoundedSubscriber flowableBufferTimed$BufferSkipBoundedSubscriber = FlowableBufferTimed$BufferSkipBoundedSubscriber.this;
            flowableBufferTimed$BufferSkipBoundedSubscriber.fastPathOrderedEmitMax(this.buffer, false, flowableBufferTimed$BufferSkipBoundedSubscriber.f65354w);
        }
    }

    FlowableBufferTimed$BufferSkipBoundedSubscriber(u10.c cVar, k kVar, long j11, long j12, TimeUnit timeUnit, Scheduler.Worker worker) {
        super(cVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j11;
        this.timeskip = j12;
        this.unit = timeUnit;
        this.f65354w = worker;
        this.buffers = new LinkedList();
    }

    @Override // io.reactivex.rxjava3.internal.subscribers.b, io.reactivex.rxjava3.internal.util.h
    public boolean accept(u10.c cVar, U u11) {
        cVar.onNext(u11);
        return true;
    }

    @Override // u10.d
    public void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.f65354w.dispose();
        clear();
    }

    void clear() {
        synchronized (this) {
            this.buffers.clear();
        }
    }

    @Override // u10.c
    public void onComplete() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.buffers);
            this.buffers.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.queue.offer((Collection) it.next());
        }
        this.done = true;
        if (enter()) {
            i.e(this.queue, this.downstream, false, this.f65354w, this);
        }
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        this.done = true;
        this.f65354w.dispose();
        clear();
        this.downstream.onError(th2);
    }

    @Override // u10.c
    public void onNext(T t11) {
        synchronized (this) {
            try {
                Iterator<U> it = this.buffers.iterator();
                while (it.hasNext()) {
                    it.next().add(t11);
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
                Collection collection = (Collection) obj;
                this.buffers.add((U) collection);
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
                Scheduler.Worker worker = this.f65354w;
                long j11 = this.timeskip;
                worker.schedulePeriodically(this, j11, j11, this.unit);
                this.f65354w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f65354w.dispose();
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
        if (this.cancelled) {
            return;
        }
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The supplied buffer is null");
            Collection collection = (Collection) obj;
            synchronized (this) {
                try {
                    if (this.cancelled) {
                        return;
                    }
                    this.buffers.add((U) collection);
                    this.f65354w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
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
