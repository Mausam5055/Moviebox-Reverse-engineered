package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.operators.b;

/* JADX INFO: loaded from: classes7.dex */
public enum EmptyDisposable implements b {
    INSTANCE,
    NEVER;

    public static void complete(io.reactivex.rxjava3.core.b bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onComplete();
    }

    public static void complete(h hVar) {
        hVar.onSubscribe(INSTANCE);
        hVar.onComplete();
    }

    public static void complete(o oVar) {
        oVar.onSubscribe(INSTANCE);
        oVar.onComplete();
    }

    public static void error(Throwable th2, io.reactivex.rxjava3.core.b bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onError(th2);
    }

    public static void error(Throwable th2, h hVar) {
        hVar.onSubscribe(INSTANCE);
        hVar.onError(th2);
    }

    public static void error(Throwable th2, o oVar) {
        oVar.onSubscribe(INSTANCE);
        oVar.onError(th2);
    }

    public static void error(Throwable th2, q qVar) {
        qVar.onSubscribe(INSTANCE);
        qVar.onError(th2);
    }

    @Override // io.reactivex.rxjava3.operators.g
    public void clear() {
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this == INSTANCE;
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

    @Override // io.reactivex.rxjava3.operators.c
    public int requestFusion(int i11) {
        return i11 & 2;
    }
}
