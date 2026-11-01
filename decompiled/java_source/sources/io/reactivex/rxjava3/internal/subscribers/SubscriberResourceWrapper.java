package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class SubscriberResourceWrapper<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.f, io.reactivex.rxjava3.disposables.c, u10.d {
    private static final long serialVersionUID = -8612022020200669122L;
    final u10.c downstream;
    final AtomicReference<u10.d> upstream = new AtomicReference<>();

    public SubscriberResourceWrapper(u10.c cVar) {
        this.downstream = cVar;
    }

    @Override // u10.d
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this.upstream);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.upstream.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // u10.c
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.downstream.onComplete();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        DisposableHelper.dispose(this);
        this.downstream.onError(th2);
    }

    @Override // u10.c
    public void onNext(T t11) {
        this.downstream.onNext(t11);
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            this.upstream.get().request(j11);
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.set(this, cVar);
    }
}
