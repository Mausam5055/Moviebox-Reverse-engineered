package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.operators.d;
import java.util.concurrent.atomic.AtomicInteger;
import u10.c;

/* JADX INFO: loaded from: classes7.dex */
public final class ScalarSubscription<T> extends AtomicInteger implements d {
    static final int CANCELLED = 2;
    static final int NO_REQUEST = 0;
    static final int REQUESTED = 1;
    private static final long serialVersionUID = -3830916580126663321L;
    final c subscriber;
    final T value;

    public ScalarSubscription(c cVar, T t11) {
        this.subscriber = cVar;
        this.value = t11;
    }

    @Override // u10.d
    public void cancel() {
        lazySet(2);
    }

    @Override // io.reactivex.rxjava3.operators.g
    public void clear() {
        lazySet(1);
    }

    public boolean isCancelled() {
        return get() == 2;
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean offer(T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public boolean offer(T t11, T t12) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.operators.g
    public T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.value;
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11) && compareAndSet(0, 1)) {
            c cVar = this.subscriber;
            cVar.onNext(this.value);
            if (get() != 2) {
                cVar.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.operators.c
    public int requestFusion(int i11) {
        return i11 & 1;
    }
}
