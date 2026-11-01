package io.reactivex.rxjava3.core;

/* JADX INFO: loaded from: classes6.dex */
public interface o {
    void onComplete();

    void onError(Throwable th2);

    void onNext(Object obj);

    void onSubscribe(io.reactivex.rxjava3.disposables.c cVar);
}
