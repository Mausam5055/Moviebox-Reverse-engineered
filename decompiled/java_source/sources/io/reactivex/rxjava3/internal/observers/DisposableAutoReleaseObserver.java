package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes7.dex */
public final class DisposableAutoReleaseObserver<T> extends AbstractDisposableAutoRelease implements o {
    private static final long serialVersionUID = 8924480688481408726L;
    final lz.f onNext;

    public DisposableAutoReleaseObserver(io.reactivex.rxjava3.disposables.d dVar, lz.f fVar, lz.f fVar2, lz.a aVar) {
        super(dVar, fVar2, aVar);
        this.onNext = fVar;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        if (get() != DisposableHelper.DISPOSED) {
            try {
                this.onNext.accept(t11);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                get().dispose();
                onError(th2);
            }
        }
    }
}
