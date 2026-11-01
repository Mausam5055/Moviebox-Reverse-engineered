package io.reactivex.rxjava3.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements io.reactivex.rxjava3.operators.b {
    private static final long serialVersionUID = -1001730202384742097L;

    @Override // io.reactivex.rxjava3.operators.g
    public abstract /* synthetic */ void clear();

    @Override // io.reactivex.rxjava3.disposables.c
    public abstract /* synthetic */ void dispose();

    @Override // io.reactivex.rxjava3.disposables.c
    public abstract /* synthetic */ boolean isDisposed();

    @Override // io.reactivex.rxjava3.operators.g
    public abstract /* synthetic */ boolean isEmpty();

    @Override // io.reactivex.rxjava3.operators.g
    public final boolean offer(T t11) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public final boolean offer(T t11, T t12) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // io.reactivex.rxjava3.operators.g
    public abstract /* synthetic */ Object poll() throws Throwable;

    @Override // io.reactivex.rxjava3.operators.c
    public abstract /* synthetic */ int requestFusion(int i11);
}
