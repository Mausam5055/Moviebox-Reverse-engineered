package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.operators.d;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BasicIntQueueSubscription<T> extends AtomicInteger implements d {
    private static final long serialVersionUID = -6671519529404341862L;

    public abstract /* synthetic */ void cancel();

    public abstract /* synthetic */ void clear();

    public abstract /* synthetic */ boolean isEmpty();

    @Override // io.reactivex.rxjava3.operators.g
    public final boolean offer(T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(T t11, T t12) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public abstract /* synthetic */ Object poll() throws Throwable;

    public abstract /* synthetic */ void request(long j11);

    public abstract /* synthetic */ int requestFusion(int i11);
}
