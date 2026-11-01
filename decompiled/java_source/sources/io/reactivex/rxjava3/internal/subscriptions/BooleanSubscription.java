package io.reactivex.rxjava3.internal.subscriptions;

import java.util.concurrent.atomic.AtomicBoolean;
import u10.d;

/* JADX INFO: loaded from: classes7.dex */
public final class BooleanSubscription extends AtomicBoolean implements d {
    private static final long serialVersionUID = -8127758972444290902L;

    @Override // u10.d
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override // u10.d
    public void request(long j11) {
        SubscriptionHelper.validate(j11);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
