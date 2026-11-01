package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class BoundedSubscriber<T> extends AtomicReference<u10.d> implements io.reactivex.rxjava3.core.f, u10.d, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -7251123623727029452L;
    final int bufferSize;
    int consumed;
    final int limit;
    final lz.a onComplete;
    final lz.f onError;
    final lz.f onNext;
    final lz.f onSubscribe;

    public BoundedSubscriber(lz.f fVar, lz.f fVar2, lz.a aVar, lz.f fVar3, int i11) {
        this.onNext = fVar;
        this.onError = fVar2;
        this.onComplete = aVar;
        this.onSubscribe = fVar3;
        this.bufferSize = i11;
        this.limit = i11 - (i11 >> 2);
    }

    @Override // u10.d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        cancel();
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f65325f;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
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
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        u10.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar == subscriptionHelper) {
            pz.a.r(th2);
            return;
        }
        lazySet(subscriptionHelper);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            pz.a.r(new CompositeException(th2, th3));
        }
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t11);
            int i11 = this.consumed + 1;
            if (i11 == this.limit) {
                this.consumed = 0;
                get().request(this.limit);
            } else {
                this.consumed = i11;
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            get().cancel();
            onError(th2);
        }
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dVar.cancel();
                onError(th2);
            }
        }
    }

    @Override // u10.d
    public void request(long j11) {
        get().request(j11);
    }
}
