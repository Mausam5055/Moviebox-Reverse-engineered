package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes7.dex */
final class BlockingFlowableIterable$BlockingFlowableIterator<T> extends AtomicReference<u10.d> implements io.reactivex.rxjava3.core.f, Iterator<T>, Runnable, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 6695226475494099826L;
    final long batchSize;
    final Condition condition;
    volatile boolean done;
    volatile Throwable error;
    final long limit;
    final Lock lock;
    long produced;
    final SpscArrayQueue<T> queue;

    BlockingFlowableIterable$BlockingFlowableIterator(int i11) {
        this.queue = new SpscArrayQueue<>(i11);
        this.batchSize = i11;
        this.limit = i11 - (i11 >> 2);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this);
        signalConsumer();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (!isDisposed()) {
            boolean z10 = this.done;
            boolean zIsEmpty = this.queue.isEmpty();
            if (z10) {
                Throwable th2 = this.error;
                if (th2 != null) {
                    throw ExceptionHelper.g(th2);
                }
                if (zIsEmpty) {
                    return false;
                }
            }
            if (!zIsEmpty) {
                return true;
            }
            io.reactivex.rxjava3.internal.util.b.a();
            this.lock.lock();
            while (!this.done && this.queue.isEmpty() && !isDisposed()) {
                try {
                    try {
                        this.condition.await();
                    } catch (InterruptedException e11) {
                        run();
                        throw ExceptionHelper.g(e11);
                    }
                } catch (Throwable th3) {
                    this.lock.unlock();
                    throw th3;
                }
            }
            this.lock.unlock();
        }
        Throwable th4 = this.error;
        if (th4 == null) {
            return false;
        }
        throw ExceptionHelper.g(th4);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        T tPoll = this.queue.poll();
        long j11 = this.produced + 1;
        if (j11 == this.limit) {
            this.produced = 0L;
            get().request(j11);
        } else {
            this.produced = j11;
        }
        return tPoll;
    }

    @Override // u10.c
    public void onComplete() {
        this.done = true;
        signalConsumer();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        this.error = th2;
        this.done = true;
        signalConsumer();
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (this.queue.offer(t11)) {
            signalConsumer();
        } else {
            SubscriptionHelper.cancel(this);
            onError(new QueueOverflowException());
        }
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        SubscriptionHelper.setOnce(this, dVar, this.batchSize);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove");
    }

    @Override // java.lang.Runnable
    public void run() {
        SubscriptionHelper.cancel(this);
        signalConsumer();
    }

    void signalConsumer() {
        this.lock.lock();
        try {
            this.condition.signalAll();
        } finally {
            this.lock.unlock();
        }
    }
}
