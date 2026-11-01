package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import lz.j;

/* JADX INFO: loaded from: classes7.dex */
public final class ForEachWhileSubscriber<T> extends AtomicReference<u10.d> implements io.reactivex.rxjava3.core.f, io.reactivex.rxjava3.disposables.c {
    private static final long serialVersionUID = -4403180040475402120L;
    boolean done;
    final lz.a onComplete;
    final lz.f onError;
    final j onNext;

    public ForEachWhileSubscriber(j jVar, lz.f fVar, lz.a aVar) {
        this.onNext = jVar;
        this.onError = fVar;
        this.onComplete = aVar;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // u10.c
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
        }
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        if (this.done) {
            pz.a.r(th2);
            return;
        }
        this.done = true;
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            pz.a.r(new CompositeException(th2, th3));
        }
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (this.done) {
            return;
        }
        try {
            if (this.onNext.a(t11)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dispose();
            onError(th2);
        }
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}
