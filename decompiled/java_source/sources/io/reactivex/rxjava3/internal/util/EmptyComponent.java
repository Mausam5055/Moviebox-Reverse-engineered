package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.core.q;

/* JADX INFO: loaded from: classes7.dex */
public enum EmptyComponent implements io.reactivex.rxjava3.core.f, o, io.reactivex.rxjava3.core.h, q, io.reactivex.rxjava3.core.b, u10.d, io.reactivex.rxjava3.disposables.c {
    INSTANCE;

    public static <T> o asObserver() {
        return INSTANCE;
    }

    public static <T> u10.c asSubscriber() {
        return INSTANCE;
    }

    @Override // u10.d
    public void cancel() {
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return true;
    }

    @Override // u10.c
    public void onComplete() {
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        pz.a.r(th2);
    }

    @Override // u10.c
    public void onNext(Object obj) {
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        cVar.dispose();
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        dVar.cancel();
    }

    @Override // io.reactivex.rxjava3.core.h
    public void onSuccess(Object obj) {
    }

    @Override // u10.d
    public void request(long j11) {
    }
}
