package com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i extends n {

    static abstract class a extends i implements AbstractFuture.g {
        a() {
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.r
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z10) {
            return super.cancel(z10);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final Object get() throws ExecutionException, InterruptedException {
            return super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final Object get(long j11, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return super.get(j11, timeUnit);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }
    }

    i() {
    }

    @Deprecated
    public static <V> i from(i iVar) {
        return (i) com.google.common.base.m.o(iVar);
    }

    public static <V> i from(r rVar) {
        return rVar instanceof i ? (i) rVar : new j(rVar);
    }

    public final void addCallback(m mVar, Executor executor) {
        Futures.a(this, mVar, executor);
    }

    public final <X extends Throwable> i catching(Class<X> cls, com.google.common.base.f fVar, Executor executor) {
        return (i) Futures.b(this, cls, fVar, executor);
    }

    public final <X extends Throwable> i catchingAsync(Class<X> cls, f fVar, Executor executor) {
        return (i) Futures.c(this, cls, fVar, executor);
    }

    public final <T> i transform(com.google.common.base.f fVar, Executor executor) {
        return (i) Futures.f(this, fVar, executor);
    }

    public final <T> i transformAsync(f fVar, Executor executor) {
        return (i) Futures.g(this, fVar, executor);
    }

    public final i withTimeout(long j11, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (i) Futures.h(this, j11, timeUnit, scheduledExecutorService);
    }
}
