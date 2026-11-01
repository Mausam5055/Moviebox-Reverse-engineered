package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableWindow$WindowSkipObserver<T> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 3366976432059579510L;
    final int capacityHint;
    final long count;
    final io.reactivex.rxjava3.core.o downstream;
    long firstEmission;
    long index;
    final long skip;
    io.reactivex.rxjava3.disposables.c upstream;
    final ArrayDeque<UnicastSubject> windows = new ArrayDeque<>();
    final AtomicBoolean cancelled = new AtomicBoolean();

    ObservableWindow$WindowSkipObserver(io.reactivex.rxjava3.core.o oVar, long j11, long j12, int i11) {
        this.downstream = oVar;
        this.count = j11;
        this.skip = j12;
        this.capacityHint = i11;
        lazySet(1);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        if (this.cancelled.compareAndSet(false, true)) {
            run();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.cancelled.get();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        while (!arrayDeque.isEmpty()) {
            arrayDeque.poll().onComplete();
        }
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        while (!arrayDeque.isEmpty()) {
            arrayDeque.poll().onError(th2);
        }
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        r rVar;
        ArrayDeque<UnicastSubject> arrayDeque = this.windows;
        long j11 = this.index;
        long j12 = this.skip;
        if (j11 % j12 != 0 || this.cancelled.get()) {
            rVar = null;
        } else {
            getAndIncrement();
            UnicastSubject unicastSubjectJ = UnicastSubject.J(this.capacityHint, this);
            rVar = new r(unicastSubjectJ);
            arrayDeque.offer(unicastSubjectJ);
            this.downstream.onNext(rVar);
        }
        long j13 = this.firstEmission + 1;
        Iterator<UnicastSubject> it = arrayDeque.iterator();
        while (it.hasNext()) {
            it.next().onNext(t11);
        }
        if (j13 >= this.count) {
            arrayDeque.poll().onComplete();
            if (arrayDeque.isEmpty() && this.cancelled.get()) {
                return;
            } else {
                this.firstEmission = j13 - j12;
            }
        } else {
            this.firstEmission = j13;
        }
        this.index = j11 + 1;
        if (rVar == null || !rVar.J()) {
            return;
        }
        rVar.f65467a.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }
}
