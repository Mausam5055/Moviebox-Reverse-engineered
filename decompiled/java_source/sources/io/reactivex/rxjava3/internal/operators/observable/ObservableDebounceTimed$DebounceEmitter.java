package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableDebounceTimed$DebounceEmitter<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements Runnable, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 6812032969491025141L;
    final long idx;
    final AtomicBoolean once = new AtomicBoolean();
    final b parent;
    final T value;

    ObservableDebounceTimed$DebounceEmitter(T t11, long j11, b bVar) {
        this.value = t11;
        this.idx = j11;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.once.compareAndSet(false, true)) {
            throw null;
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.replace(this, cVar);
    }
}
