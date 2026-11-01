package com.google.common.util.concurrent;

import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class MoreExecutors {

    /* JADX INFO: renamed from: com.google.common.util.concurrent.MoreExecutors$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ r val$future;
        final /* synthetic */ BlockingQueue val$queue;

        AnonymousClass1(BlockingQueue blockingQueue, r rVar) {
            this.val$queue = blockingQueue;
            this.val$future = rVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$queue.add(this.val$future);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class ScheduledListeningDecorator extends c implements ScheduledExecutorService, t {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ScheduledExecutorService f31002b;

        private static final class NeverSuccessfulListenableFutureTask extends AbstractFuture.h implements Runnable {
            private final Runnable delegate;

            public NeverSuccessfulListenableFutureTask(Runnable runnable) {
                this.delegate = (Runnable) com.google.common.base.m.o(runnable);
            }

            @Override // com.google.common.util.concurrent.AbstractFuture
            protected String pendingToString() {
                return "task=[" + this.delegate + "]";
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.delegate.run();
                } catch (Throwable th2) {
                    setException(th2);
                    throw th2;
                }
            }
        }

        private static final class a extends l.a implements s {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final ScheduledFuture f31003b;

            public a(r rVar, ScheduledFuture scheduledFuture) {
                super(rVar);
                this.f31003b = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.k, java.util.concurrent.Future
            public boolean cancel(boolean z10) {
                boolean zCancel = super.cancel(z10);
                if (zCancel) {
                    this.f31003b.cancel(z10);
                }
                return zCancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.f31003b.getDelay(timeUnit);
            }

            @Override // java.lang.Comparable
            /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
            public int compareTo(Delayed delayed) {
                return this.f31003b.compareTo(delayed);
            }
        }

        ScheduledListeningDecorator(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f31002b = (ScheduledExecutorService) com.google.common.base.m.o(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public s schedule(Runnable runnable, long j11, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(runnable, null);
            return new a(trustedListenableFutureTaskCreate, this.f31002b.schedule(trustedListenableFutureTaskCreate, j11, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public s schedule(Callable callable, long j11, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(callable);
            return new a(trustedListenableFutureTaskCreate, this.f31002b.schedule(trustedListenableFutureTaskCreate, j11, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public s scheduleAtFixedRate(Runnable runnable, long j11, long j12, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new a(neverSuccessfulListenableFutureTask, this.f31002b.scheduleAtFixedRate(neverSuccessfulListenableFutureTask, j11, j12, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public s scheduleWithFixedDelay(Runnable runnable, long j11, long j12, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new a(neverSuccessfulListenableFutureTask, this.f31002b.scheduleWithFixedDelay(neverSuccessfulListenableFutureTask, j11, j12, timeUnit));
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Executor f31004a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbstractFuture f31005b;

        a(Executor executor, AbstractFuture abstractFuture) {
            this.f31004a = executor;
            this.f31005b = abstractFuture;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.f31004a.execute(runnable);
            } catch (RejectedExecutionException e11) {
                this.f31005b.setException(e11);
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class b {
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class c extends com.google.common.util.concurrent.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ExecutorService f31006a;

        c(ExecutorService executorService) {
            this.f31006a = (ExecutorService) com.google.common.base.m.o(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j11, TimeUnit timeUnit) {
            return this.f31006a.awaitTermination(j11, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f31006a.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.f31006a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.f31006a.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f31006a.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List shutdownNow() {
            return this.f31006a.shutdownNow();
        }

        public final String toString() {
            return super.toString() + "[" + this.f31006a + "]";
        }
    }

    public static Executor a() {
        return DirectExecutor.INSTANCE;
    }

    public static t b(ExecutorService executorService) {
        if (executorService instanceof t) {
            return (t) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new ScheduledListeningDecorator((ScheduledExecutorService) executorService) : new c(executorService);
    }

    static Executor c(Executor executor, AbstractFuture abstractFuture) {
        com.google.common.base.m.o(executor);
        com.google.common.base.m.o(abstractFuture);
        return executor == a() ? executor : new a(executor, abstractFuture);
    }
}
