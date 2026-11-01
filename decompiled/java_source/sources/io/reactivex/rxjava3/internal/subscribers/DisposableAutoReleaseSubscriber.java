package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class DisposableAutoReleaseSubscriber<T> extends AtomicReference<u10.d> implements io.reactivex.rxjava3.core.f, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = 8924480688481408726L;
    final AtomicReference<io.reactivex.rxjava3.disposables.d> composite;
    final lz.a onComplete;
    final lz.f onError;
    final lz.f onNext;

    public DisposableAutoReleaseSubscriber(io.reactivex.rxjava3.disposables.d dVar, lz.f fVar, lz.f fVar2, lz.a aVar) {
        this.onNext = fVar;
        this.onError = fVar2;
        this.onComplete = aVar;
        this.composite = new AtomicReference<>(dVar);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this);
        removeSelf();
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f65325f;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return SubscriptionHelper.CANCELLED == get();
    }

    @Override // u10.c
    public void onComplete() {
        u10.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onComplete.run();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                pz.a.r(th2);
            }
        }
        removeSelf();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        u10.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onError.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                pz.a.r(new CompositeException(th2, th3));
            }
        } else {
            pz.a.r(th2);
        }
        removeSelf();
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (get() != SubscriptionHelper.CANCELLED) {
            try {
                this.onNext.accept(t11);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                get().cancel();
                onError(th2);
            }
        }
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            dVar.request(Long.MAX_VALUE);
        }
    }

    void removeSelf() {
        io.reactivex.rxjava3.disposables.d andSet = this.composite.getAndSet(null);
        if (andSet != null) {
            andSet.c(this);
        }
    }
}
