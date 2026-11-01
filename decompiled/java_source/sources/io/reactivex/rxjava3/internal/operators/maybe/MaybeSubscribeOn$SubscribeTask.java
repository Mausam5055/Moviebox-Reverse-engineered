package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.core.i;

/* JADX INFO: loaded from: classes7.dex */
final class MaybeSubscribeOn$SubscribeTask<T> implements Runnable {
    final h observer;
    final i source;

    MaybeSubscribeOn$SubscribeTask(h hVar, i iVar) {
        this.observer = hVar;
        this.source = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.source.a(this.observer);
    }
}
