package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class SequentialDisposable extends AtomicReference<c> implements c {
    private static final long serialVersionUID = -754898800686245608L;

    public SequentialDisposable() {
    }

    public SequentialDisposable(c cVar) {
        lazySet(cVar);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean replace(c cVar) {
        return DisposableHelper.replace(this, cVar);
    }

    public boolean update(c cVar) {
        return DisposableHelper.set(this, cVar);
    }
}
