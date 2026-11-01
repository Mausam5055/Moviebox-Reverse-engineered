package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;
import lz.a;
import lz.f;

/* JADX INFO: loaded from: classes7.dex */
public final class MaybeCallbackObserver<T> extends AtomicReference<c> implements h, c {
    private static final long serialVersionUID = -6076952298809384986L;
    final a onComplete;
    final f onError;
    final f onSuccess;

    public MaybeCallbackObserver(f fVar, f fVar2, a aVar) {
        this.onSuccess = fVar;
        this.onError = fVar2;
        this.onComplete = aVar;
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
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onError(Throwable th2) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            pz.a.r(new CompositeException(th2, th3));
        }
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // io.reactivex.rxjava3.core.h
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
