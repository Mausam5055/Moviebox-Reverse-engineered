package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class ConsumerSingleObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements q, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -7012088219455310787L;
    final lz.f onError;
    final lz.f onSuccess;

    public ConsumerSingleObserver(lz.f fVar, lz.f fVar2) {
        this.onSuccess = fVar;
        this.onError = fVar2;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f65325f;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onError(Throwable th2) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            pz.a.r(new CompositeException(th2, th3));
        }
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSuccess(T t11) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onSuccess.accept(t11);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
        }
    }
}
