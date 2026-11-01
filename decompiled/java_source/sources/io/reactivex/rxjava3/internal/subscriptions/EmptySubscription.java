package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.operators.d;
import u10.c;

/* JADX INFO: loaded from: classes7.dex */
public enum EmptySubscription implements d {
    INSTANCE;

    public static void complete(c cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onComplete();
    }

    public static void error(Throwable th2, c cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onError(th2);
    }

    @Override // u10.d
    public void cancel() {
    }

    @Override // io.reactivex.rxjava3.operators.g
    public void clear() {
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean isEmpty() {
        return true;
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.operators.g
    public Object poll() {
        return null;
    }

    @Override // u10.d
    public void request(long j11) {
        SubscriptionHelper.validate(j11);
    }

    @Override // io.reactivex.rxjava3.operators.c
    public int requestFusion(int i11) {
        return i11 & 2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EmptySubscription";
    }
}
