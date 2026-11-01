package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableWindow$WindowExactObserver<T> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = -7481782523886138128L;
    final AtomicBoolean cancelled = new AtomicBoolean();
    final int capacityHint;
    final long count;
    final io.reactivex.rxjava3.core.o downstream;
    long size;
    io.reactivex.rxjava3.disposables.c upstream;
    UnicastSubject window;

    ObservableWindow$WindowExactObserver(io.reactivex.rxjava3.core.o oVar, long j11, int i11) {
        this.downstream = oVar;
        this.count = j11;
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
        UnicastSubject unicastSubject = this.window;
        if (unicastSubject != null) {
            this.window = null;
            unicastSubject.onComplete();
        }
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        UnicastSubject unicastSubject = this.window;
        if (unicastSubject != null) {
            this.window = null;
            unicastSubject.onError(th2);
        }
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        r rVar;
        UnicastSubject unicastSubjectJ = this.window;
        if (unicastSubjectJ != null || this.cancelled.get()) {
            rVar = null;
        } else {
            getAndIncrement();
            unicastSubjectJ = UnicastSubject.J(this.capacityHint, this);
            this.window = unicastSubjectJ;
            rVar = new r(unicastSubjectJ);
            this.downstream.onNext(rVar);
        }
        if (unicastSubjectJ != null) {
            unicastSubjectJ.onNext(t11);
            long j11 = this.size + 1;
            this.size = j11;
            if (j11 >= this.count) {
                this.size = 0L;
                this.window = null;
                unicastSubjectJ.onComplete();
            }
            if (rVar == null || !rVar.J()) {
                return;
            }
            this.window = null;
            unicastSubjectJ.onComplete();
        }
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
