package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes7.dex */
public final class g extends io.reactivex.rxjava3.core.j implements lz.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Callable f65438a;

    public g(Callable callable) {
        this.f65438a = callable;
    }

    @Override // io.reactivex.rxjava3.core.j
    public void D(io.reactivex.rxjava3.core.o oVar) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(oVar);
        oVar.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            deferredScalarDisposable.complete(ExceptionHelper.c(this.f65438a.call(), "Callable returned a null value."));
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            if (deferredScalarDisposable.isDisposed()) {
                pz.a.r(th2);
            } else {
                oVar.onError(th2);
            }
        }
    }

    @Override // lz.k
    public Object get() {
        return ExceptionHelper.c(this.f65438a.call(), "The Callable returned a null value.");
    }
}
