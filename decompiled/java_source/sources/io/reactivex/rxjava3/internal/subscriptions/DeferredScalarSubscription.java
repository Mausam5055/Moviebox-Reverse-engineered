package io.reactivex.rxjava3.internal.subscriptions;

import u10.c;

/* JADX INFO: loaded from: classes7.dex */
public class DeferredScalarSubscription<T> extends BasicIntQueueSubscription<T> {
    static final int CANCELLED = 4;
    static final int FUSED_CONSUMED = 32;
    static final int FUSED_EMPTY = 8;
    static final int FUSED_READY = 16;
    static final int HAS_REQUEST_HAS_VALUE = 3;
    static final int HAS_REQUEST_NO_VALUE = 2;
    static final int NO_REQUEST_HAS_VALUE = 1;
    static final int NO_REQUEST_NO_VALUE = 0;
    private static final long serialVersionUID = -2151279923272604993L;
    protected final c downstream;
    protected T value;

    public DeferredScalarSubscription(c cVar) {
        this.downstream = cVar;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
    public void cancel() {
        set(4);
        this.value = null;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete(T t11) {
        int i11 = get();
        while (i11 != 8) {
            if ((i11 & (-3)) != 0) {
                return;
            }
            if (i11 == 2) {
                lazySet(3);
                c cVar = this.downstream;
                cVar.onNext(t11);
                if (get() != 4) {
                    cVar.onComplete();
                    return;
                }
                return;
            }
            this.value = t11;
            if (compareAndSet(0, 1)) {
                return;
            }
            i11 = get();
            if (i11 == 4) {
                this.value = null;
                return;
            }
        }
        this.value = t11;
        lazySet(16);
        c cVar2 = this.downstream;
        cVar2.onNext(null);
        if (get() != 4) {
            cVar2.onComplete();
        }
    }

    public final boolean isCancelled() {
        return get() == 4;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        T t11 = this.value;
        this.value = null;
        return t11;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
    public final void request(long j11) {
        T t11;
        if (SubscriptionHelper.validate(j11)) {
            do {
                int i11 = get();
                if ((i11 & (-2)) != 0) {
                    return;
                }
                if (i11 == 1) {
                    if (!compareAndSet(1, 3) || (t11 = this.value) == null) {
                        return;
                    }
                    this.value = null;
                    c cVar = this.downstream;
                    cVar.onNext(t11);
                    if (get() != 4) {
                        cVar.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.c
    public final int requestFusion(int i11) {
        if ((i11 & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final boolean tryCancel() {
        return getAndSet(4) != 4;
    }
}
