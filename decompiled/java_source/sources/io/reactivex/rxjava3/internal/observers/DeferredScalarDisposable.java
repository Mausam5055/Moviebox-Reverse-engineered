package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;

/* JADX INFO: loaded from: classes7.dex */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {
    static final int DISPOSED = 4;
    static final int FUSED_CONSUMED = 32;
    static final int FUSED_EMPTY = 8;
    static final int FUSED_READY = 16;
    static final int TERMINATED = 2;
    private static final long serialVersionUID = -5502432239815349361L;
    protected final o downstream;
    protected T value;

    public DeferredScalarDisposable(o oVar) {
        this.downstream = oVar;
    }

    @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete() {
        if ((get() & 54) != 0) {
            return;
        }
        lazySet(2);
        this.downstream.onComplete();
    }

    public final void complete(T t11) {
        int i11 = get();
        if ((i11 & 54) != 0) {
            return;
        }
        o oVar = this.downstream;
        if (i11 == 8) {
            this.value = t11;
            lazySet(16);
            oVar.onNext(null);
        } else {
            lazySet(2);
            oVar.onNext(t11);
        }
        if (get() != 4) {
            oVar.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.disposables.c
    public void dispose() {
        set(4);
        this.value = null;
    }

    public final void error(Throwable th2) {
        if ((get() & 54) != 0) {
            pz.a.r(th2);
        } else {
            lazySet(2);
            this.downstream.onError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.disposables.c
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        T t11 = this.value;
        this.value = null;
        lazySet(32);
        return t11;
    }

    @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.c
    public final int requestFusion(int i11) {
        if ((i11 & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final boolean tryDispose() {
        return getAndSet(4) != 4;
    }
}
