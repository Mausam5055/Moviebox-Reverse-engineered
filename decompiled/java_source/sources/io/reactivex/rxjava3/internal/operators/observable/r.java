package io.reactivex.rxjava3.internal.operators.observable;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
final class r extends io.reactivex.rxjava3.core.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final io.reactivex.rxjava3.subjects.a f65467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicBoolean f65468b = new AtomicBoolean();

    r(io.reactivex.rxjava3.subjects.a aVar) {
        this.f65467a = aVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        this.f65467a.subscribe(oVar);
        this.f65468b.set(true);
    }

    boolean J() {
        return !this.f65468b.get() && this.f65468b.compareAndSet(false, true);
    }
}
