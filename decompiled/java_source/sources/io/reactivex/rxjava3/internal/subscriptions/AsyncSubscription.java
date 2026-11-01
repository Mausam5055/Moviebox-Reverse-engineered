package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import u10.d;

/* JADX INFO: loaded from: classes7.dex */
public final class AsyncSubscription extends AtomicLong implements d, c {
    private static final long serialVersionUID = 7028635084060361255L;
    final AtomicReference<d> actual;
    final AtomicReference<c> resource;

    public AsyncSubscription() {
        this.resource = new AtomicReference<>();
        this.actual = new AtomicReference<>();
    }

    public AsyncSubscription(c cVar) {
        this();
        this.resource.lazySet(cVar);
    }

    @Override // u10.d
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this.actual);
        DisposableHelper.dispose(this.resource);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.actual.get() == SubscriptionHelper.CANCELLED;
    }

    public boolean replaceResource(c cVar) {
        return DisposableHelper.replace(this.resource, cVar);
    }

    @Override // u10.d
    public void request(long j11) {
        SubscriptionHelper.deferredRequest(this.actual, this, j11);
    }

    public boolean setResource(c cVar) {
        return DisposableHelper.set(this.resource, cVar);
    }

    public void setSubscription(d dVar) {
        SubscriptionHelper.deferredSetOnce(this.actual, this, dVar);
    }
}
