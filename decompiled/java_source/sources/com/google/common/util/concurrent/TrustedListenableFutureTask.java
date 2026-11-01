package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes4.dex */
class TrustedListenableFutureTask<V> extends i.a implements RunnableFuture<V> {
    private volatile InterruptibleTask<?> task;

    private final class TrustedFutureInterruptibleAsyncTask extends InterruptibleTask<r> {
        private final e callable;

        TrustedFutureInterruptibleAsyncTask(e eVar) {
            android.support.v4.media.session.c.a(com.google.common.base.m.o(eVar));
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        void afterRanInterruptiblyFailure(Throwable th2) {
            TrustedListenableFutureTask.this.setException(th2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.InterruptibleTask
        public void afterRanInterruptiblySuccess(r rVar) {
            TrustedListenableFutureTask.this.setFuture(rVar);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.util.concurrent.InterruptibleTask
        public r runInterruptibly() throws Exception {
            throw null;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        String toPendingString() {
            throw null;
        }
    }

    private final class TrustedFutureInterruptibleTask extends InterruptibleTask<V> {
        private final Callable<V> callable;

        TrustedFutureInterruptibleTask(Callable<V> callable) {
            this.callable = (Callable) com.google.common.base.m.o(callable);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        void afterRanInterruptiblyFailure(Throwable th2) {
            TrustedListenableFutureTask.this.setException(th2);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        void afterRanInterruptiblySuccess(V v11) {
            TrustedListenableFutureTask.this.set(v11);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        V runInterruptibly() throws Exception {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        String toPendingString() {
            return this.callable.toString();
        }
    }

    TrustedListenableFutureTask(e eVar) {
        this.task = new TrustedFutureInterruptibleAsyncTask(eVar);
    }

    TrustedListenableFutureTask(Callable<V> callable) {
        this.task = new TrustedFutureInterruptibleTask(callable);
    }

    static <V> TrustedListenableFutureTask<V> create(e eVar) {
        return new TrustedListenableFutureTask<>(eVar);
    }

    static <V> TrustedListenableFutureTask<V> create(Runnable runnable, V v11) {
        return new TrustedListenableFutureTask<>(Executors.callable(runnable, v11));
    }

    static <V> TrustedListenableFutureTask<V> create(Callable<V> callable) {
        return new TrustedListenableFutureTask<>(callable);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected void afterDone() {
        InterruptibleTask<?> interruptibleTask;
        super.afterDone();
        if (wasInterrupted() && (interruptibleTask = this.task) != null) {
            interruptibleTask.interruptTask();
        }
        this.task = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected String pendingToString() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask == null) {
            return super.pendingToString();
        }
        return "task=[" + interruptibleTask + "]";
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask != null) {
            interruptibleTask.run();
        }
        this.task = null;
    }
}
