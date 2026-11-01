package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableBufferTimed$BufferSkipBoundedObserver<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.e implements Runnable, io.reactivex.rxjava3.disposables.c {
    final lz.k bufferSupplier;
    final List<U> buffers;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;
    io.reactivex.rxjava3.disposables.c upstream;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final Scheduler.Worker f65391w;

    final class RemoveFromBuffer implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final U f65392b;

        RemoveFromBuffer(U u11) {
            this.f65392b = u11;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ObservableBufferTimed$BufferSkipBoundedObserver.this) {
                ObservableBufferTimed$BufferSkipBoundedObserver.this.buffers.remove(this.f65392b);
            }
            ObservableBufferTimed$BufferSkipBoundedObserver observableBufferTimed$BufferSkipBoundedObserver = ObservableBufferTimed$BufferSkipBoundedObserver.this;
            observableBufferTimed$BufferSkipBoundedObserver.fastPathOrderedEmit(this.f65392b, false, observableBufferTimed$BufferSkipBoundedObserver.f65391w);
        }
    }

    final class RemoveFromBufferEmit implements Runnable {
        private final U buffer;

        RemoveFromBufferEmit(U u11) {
            this.buffer = u11;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ObservableBufferTimed$BufferSkipBoundedObserver.this) {
                ObservableBufferTimed$BufferSkipBoundedObserver.this.buffers.remove(this.buffer);
            }
            ObservableBufferTimed$BufferSkipBoundedObserver observableBufferTimed$BufferSkipBoundedObserver = ObservableBufferTimed$BufferSkipBoundedObserver.this;
            observableBufferTimed$BufferSkipBoundedObserver.fastPathOrderedEmit(this.buffer, false, observableBufferTimed$BufferSkipBoundedObserver.f65391w);
        }
    }

    ObservableBufferTimed$BufferSkipBoundedObserver(io.reactivex.rxjava3.core.o oVar, lz.k kVar, long j11, long j12, TimeUnit timeUnit, Scheduler.Worker worker) {
        super(oVar, new MpscLinkedQueue());
        this.bufferSupplier = kVar;
        this.timespan = j11;
        this.timeskip = j12;
        this.unit = timeUnit;
        this.f65391w = worker;
        this.buffers = new LinkedList();
    }

    @Override // io.reactivex.rxjava3.internal.observers.e, io.reactivex.rxjava3.internal.util.e
    public void accept(io.reactivex.rxjava3.core.o oVar, U u11) {
        oVar.onNext(u11);
    }

    void clear() {
        synchronized (this) {
            this.buffers.clear();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        clear();
        this.upstream.dispose();
        this.f65391w.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // io.reactivex.rxjava3.core.o
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
            io.reactivex.rxjava3.internal.util.i.d(this.queue, this.downstream, false, this.f65391w, this);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        this.done = true;
        clear();
        this.downstream.onError(th2);
        this.f65391w.dispose();
    }

    @Override // io.reactivex.rxjava3.core.o
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

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The buffer supplied is null");
                Collection collection = (Collection) obj;
                this.buffers.add((U) collection);
                this.downstream.onSubscribe(this);
                Scheduler.Worker worker = this.f65391w;
                long j11 = this.timeskip;
                worker.schedulePeriodically(this, j11, j11, this.unit);
                this.f65391w.schedule(new RemoveFromBufferEmit(collection), this.timespan, this.unit);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cVar.dispose();
                EmptyDisposable.error(th2, this.downstream);
                this.f65391w.dispose();
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.cancelled) {
            return;
        }
        try {
            Object obj = this.bufferSupplier.get();
            Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
            Collection collection = (Collection) obj;
            synchronized (this) {
                try {
                    if (this.cancelled) {
                        return;
                    }
                    this.buffers.add((U) collection);
                    this.f65391w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            this.downstream.onError(th3);
            dispose();
        }
    }
}
