package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.operators.d;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BasicQueueSubscription<T> extends AtomicLong implements d {
    private static final long serialVersionUID = -6671519529404341862L;

    @Override // u10.d
    public abstract /* synthetic */ void cancel();

    @Override // io.reactivex.rxjava3.operators.g
    public abstract /* synthetic */ void clear();

    @Override // io.reactivex.rxjava3.operators.g
    public abstract /* synthetic */ boolean isEmpty();

    @Override // io.reactivex.rxjava3.operators.g
    public final boolean offer(T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(T t11, T t12) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.operators.g
    public abstract /* synthetic */ Object poll() throws Throwable;

    @Override // u10.d
    public abstract /* synthetic */ void request(long j11);

    @Override // io.reactivex.rxjava3.operators.c
    public abstract /* synthetic */ int requestFusion(int i11);
}
