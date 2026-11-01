package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class BiConsumerSingleObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements q, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 4943102778943297569L;
    final lz.b onCallback;

    public BiConsumerSingleObserver(lz.b bVar) {
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onError(Throwable th2) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            throw null;
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
        try {
            lazySet(DisposableHelper.DISPOSED);
            throw null;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
        }
    }
}
