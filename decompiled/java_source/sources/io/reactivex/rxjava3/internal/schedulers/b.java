package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class b implements Future {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final io.reactivex.rxjava3.disposables.c f65511a;

    b(io.reactivex.rxjava3.disposables.c cVar) {
        this.f65511a = cVar;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        this.f65511a.dispose();
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        return null;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j11, TimeUnit timeUnit) {
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return false;
    }
}
