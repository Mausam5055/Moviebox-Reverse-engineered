package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.operators.b;
import io.reactivex.rxjava3.operators.g;
import io.reactivex.rxjava3.operators.h;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ConcatMapXMainObserver<T> extends AtomicInteger implements o, c {
    private static final long serialVersionUID = -3214213361171757852L;
    volatile boolean disposed;
    volatile boolean done;
    final ErrorMode errorMode;
    final AtomicThrowable errors = new AtomicThrowable();
    final int prefetch;
    g queue;
    c upstream;

    public ConcatMapXMainObserver(int i11, ErrorMode errorMode) {
        this.errorMode = errorMode;
        this.prefetch = i11;
    }

    void clearValue() {
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final void dispose() {
        this.disposed = true;
        this.upstream.dispose();
        disposeInner();
        this.errors.tryTerminateAndReport();
        if (getAndIncrement() == 0) {
            this.queue.clear();
            clearValue();
        }
    }

    abstract void disposeInner();

    abstract void drain();

    @Override // io.reactivex.rxjava3.disposables.c
    public final boolean isDisposed() {
        return this.disposed;
    }

    @Override // io.reactivex.rxjava3.core.o
    public final void onComplete() {
        this.done = true;
        drain();
    }

    @Override // io.reactivex.rxjava3.core.o
    public final void onError(Throwable th2) {
        if (this.errors.tryAddThrowableOrReport(th2)) {
            if (this.errorMode == ErrorMode.IMMEDIATE) {
                disposeInner();
            }
            this.done = true;
            drain();
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public final void onNext(T t11) {
        if (t11 != null) {
            this.queue.offer(t11);
        }
        drain();
    }

    @Override // io.reactivex.rxjava3.core.o
    public final void onSubscribe(c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            if (cVar instanceof b) {
                b bVar = (b) cVar;
                int iRequestFusion = bVar.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.queue = bVar;
                    this.done = true;
                    onSubscribeDownstream();
                    drain();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.queue = bVar;
                    onSubscribeDownstream();
                    return;
                }
            }
            this.queue = new h(this.prefetch);
            onSubscribeDownstream();
        }
    }

    abstract void onSubscribeDownstream();
}
