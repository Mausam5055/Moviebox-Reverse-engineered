package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
final class g extends io.reactivex.rxjava3.core.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final io.reactivex.rxjava3.processors.a f65377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final AtomicBoolean f65378c = new AtomicBoolean();

    g(io.reactivex.rxjava3.processors.a aVar) {
        this.f65377b = aVar;
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65377b.subscribe(cVar);
        this.f65378c.set(true);
    }

    boolean h() {
        return !this.f65378c.get() && this.f65378c.compareAndSet(false, true);
    }
}
