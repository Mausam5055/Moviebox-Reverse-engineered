package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* JADX INFO: loaded from: classes7.dex */
public final class e extends io.reactivex.rxjava3.core.j implements io.reactivex.rxjava3.operators.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.j f65436a = new e();

    private e() {
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        EmptyDisposable.complete(oVar);
    }

    @Override // io.reactivex.rxjava3.operators.e, lz.k
    public Object get() {
        return null;
    }
}
