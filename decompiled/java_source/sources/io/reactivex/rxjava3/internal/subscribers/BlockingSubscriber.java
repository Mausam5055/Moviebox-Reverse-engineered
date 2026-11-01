package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class BlockingSubscriber<T> extends AtomicReference<u10.d> implements io.reactivex.rxjava3.core.f, u10.d {
    public static final Object TERMINATED = new Object();
    private static final long serialVersionUID = -4875965440900746268L;
    final Queue<Object> queue;

    public BlockingSubscriber(Queue<Object> queue) {
        this.queue = queue;
    }

    @Override // u10.d
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.queue.offer(TERMINATED);
        }
    }

    public boolean isCancelled() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // u10.c
    public void onComplete() {
        this.queue.offer(NotificationLite.complete());
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        this.queue.offer(NotificationLite.error(th2));
    }

    @Override // u10.c
    public void onNext(T t11) {
        this.queue.offer(NotificationLite.next(t11));
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            this.queue.offer(NotificationLite.subscription(this));
        }
    }

    @Override // u10.d
    public void request(long j11) {
        get().request(j11);
    }
}
