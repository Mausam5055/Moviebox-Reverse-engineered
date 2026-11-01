package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes7.dex */
public final class DisposableAutoReleaseMultiObserver<T> extends AbstractDisposableAutoRelease implements q, io.reactivex.rxjava3.core.h, io.reactivex.rxjava3.core.b {
    private static final long serialVersionUID = 8924480688481408726L;
    final lz.f onSuccess;

    public DisposableAutoReleaseMultiObserver(io.reactivex.rxjava3.disposables.d dVar, lz.f fVar, lz.f fVar2, lz.a aVar) {
        super(dVar, fVar2, aVar);
        this.onSuccess = fVar;
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSuccess(T t11) {
        io.reactivex.rxjava3.disposables.c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            lazySet(disposableHelper);
            try {
                this.onSuccess.accept(t11);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                pz.a.r(th2);
            }
        }
        removeSelf();
    }
}
