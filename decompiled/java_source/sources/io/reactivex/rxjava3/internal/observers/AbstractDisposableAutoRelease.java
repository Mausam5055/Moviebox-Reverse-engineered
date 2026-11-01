package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
abstract class AbstractDisposableAutoRelease extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 8924480688481408726L;
    final AtomicReference<io.reactivex.rxjava3.disposables.d> composite;
    final lz.a onComplete;
    final lz.f onError;

    AbstractDisposableAutoRelease(io.reactivex.rxjava3.disposables.d dVar, lz.f fVar, lz.a aVar) {
        this.onError = fVar;
        this.onComplete = aVar;
        this.composite = new AtomicReference<>(dVar);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final void dispose() {
        DisposableHelper.dispose(this);
        removeSelf();
    }

    public final boolean hasCustomOnError() {
        return this.onError != Functions.f65325f;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public final void onComplete() {
        io.reactivex.rxjava3.disposables.c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            lazySet(disposableHelper);
            try {
                this.onComplete.run();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                pz.a.r(th2);
            }
        }
        removeSelf();
    }

    public final void onError(Throwable th2) {
        io.reactivex.rxjava3.disposables.c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            lazySet(disposableHelper);
            try {
                this.onError.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                pz.a.r(new CompositeException(th2, th3));
            }
        } else {
            pz.a.r(th2);
        }
        removeSelf();
    }

    public final void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    final void removeSelf() {
        io.reactivex.rxjava3.disposables.d andSet = this.composite.getAndSet(null);
        if (andSet != null) {
            andSet.c(this);
        }
    }
}
