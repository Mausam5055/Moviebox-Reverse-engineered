package io.reactivex.rxjava3.core;

/* JADX INFO: loaded from: classes7.dex */
public interface h {
    void onComplete();

    void onError(Throwable th2);

    void onSubscribe(io.reactivex.rxjava3.disposables.c cVar);

    void onSuccess(Object obj);
}
