package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class j extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f31033a;

    j(r rVar) {
        this.f31033a = (r) com.google.common.base.m.o(rVar);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.r
    public void addListener(Runnable runnable, Executor executor) {
        this.f31033a.addListener(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return this.f31033a.cancel(z10);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public Object get() {
        return this.f31033a.get();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public Object get(long j11, TimeUnit timeUnit) {
        return this.f31033a.get(j11, timeUnit);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f31033a.isCancelled();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public boolean isDone() {
        return this.f31033a.isDone();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public String toString() {
        return this.f31033a.toString();
    }
}
