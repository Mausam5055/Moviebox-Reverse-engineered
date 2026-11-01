package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class InnerQueuedObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements o, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -5417183359794346637L;
    volatile boolean done;
    int fusionMode;
    final d parent;
    final int prefetch;
    io.reactivex.rxjava3.operators.g queue;

    public InnerQueuedObserver(d dVar, int i11) {
        this.prefetch = i11;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean isDone() {
        return this.done;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        throw null;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        throw null;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        if (this.fusionMode != 0) {
            throw null;
        }
        throw null;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            if (cVar instanceof io.reactivex.rxjava3.operators.b) {
                io.reactivex.rxjava3.operators.b bVar = (io.reactivex.rxjava3.operators.b) cVar;
                int iRequestFusion = bVar.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = bVar;
                    this.done = true;
                    throw null;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = bVar;
                    return;
                }
            }
            this.queue = i.c(-this.prefetch);
        }
    }

    public io.reactivex.rxjava3.operators.g queue() {
        return this.queue;
    }

    public void setDone() {
        this.done = true;
    }
}
