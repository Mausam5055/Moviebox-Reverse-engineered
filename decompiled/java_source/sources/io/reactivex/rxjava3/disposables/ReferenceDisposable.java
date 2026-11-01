package io.reactivex.rxjava3.disposables;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
abstract class ReferenceDisposable<T> extends AtomicReference<T> implements c {
    private static final long serialVersionUID = 6537757548749041217L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReferenceDisposable(T t11) {
        super(t11);
        Objects.requireNonNull(t11, "value is null");
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        onDisposed(andSet);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public final boolean isDisposed() {
        return get() == null;
    }

    protected abstract void onDisposed(T t11);
}
