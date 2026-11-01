package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class LambdaObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements o, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -7251123623727029452L;
    final lz.a onComplete;
    final lz.f onError;
    final lz.f onNext;
    final lz.f onSubscribe;

    public LambdaObserver(lz.f fVar, lz.f fVar2, lz.a aVar, lz.f fVar3) {
        this.onNext = fVar;
        this.onError = fVar2;
        this.onComplete = aVar;
        this.onSubscribe = fVar3;
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

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        if (isDisposed()) {
            pz.a.r(th2);
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            pz.a.r(new CompositeException(th2, th3));
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t11);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            get().dispose();
            onError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cVar.dispose();
                onError(th2);
            }
        }
    }
}
