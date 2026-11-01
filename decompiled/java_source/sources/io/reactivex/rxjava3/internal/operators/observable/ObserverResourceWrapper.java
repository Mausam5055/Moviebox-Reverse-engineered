package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class ObserverResourceWrapper<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -8612022020200669122L;
    final io.reactivex.rxjava3.core.o downstream;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> upstream = new AtomicReference<>();

    public ObserverResourceWrapper(io.reactivex.rxjava3.core.o oVar) {
        this.downstream = oVar;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this.upstream);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.upstream.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        dispose();
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        dispose();
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        this.downstream.onNext(t11);
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.setOnce(this.upstream, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.set(this, cVar);
    }
}
