package com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Futures extends o {

    private static final class CallbackListener<V> implements Runnable {
        final m callback;
        final Future<V> future;

        CallbackListener(Future<V> future, m mVar) {
            this.future = future;
            this.callback = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable thA;
            Future<V> future = this.future;
            if ((future instanceof gb.a) && (thA = gb.b.a((gb.a) future)) != null) {
                this.callback.onFailure(thA);
                return;
            }
            try {
                this.callback.onSuccess(Futures.d(this.future));
            } catch (ExecutionException e11) {
                this.callback.onFailure(e11.getCause());
            } catch (Throwable th2) {
                this.callback.onFailure(th2);
            }
        }

        public String toString() {
            return com.google.common.base.h.b(this).j(this.callback).toString();
        }
    }

    private static final class NonCancellationPropagatingFuture<V> extends AbstractFuture.h implements Runnable {
        private r delegate;

        NonCancellationPropagatingFuture(r rVar) {
            this.delegate = rVar;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        protected void afterDone() {
            this.delegate = null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        protected String pendingToString() {
            r rVar = this.delegate;
            if (rVar == null) {
                return null;
            }
            return "delegate=[" + rVar + "]";
        }

        @Override // java.lang.Runnable
        public void run() {
            r rVar = this.delegate;
            if (rVar != null) {
                setFuture(rVar);
            }
        }
    }

    public static void a(r rVar, m mVar, Executor executor) {
        com.google.common.base.m.o(mVar);
        rVar.addListener(new CallbackListener(rVar, mVar), executor);
    }

    public static r b(r rVar, Class cls, com.google.common.base.f fVar, Executor executor) {
        return AbstractCatchingFuture.create(rVar, cls, fVar, executor);
    }

    public static r c(r rVar, Class cls, f fVar, Executor executor) {
        return AbstractCatchingFuture.createAsync(rVar, cls, fVar, executor);
    }

    public static Object d(Future future) {
        com.google.common.base.m.x(future.isDone(), "Future was expected to be done: %s", future);
        return z.a(future);
    }

    public static r e(Throwable th2) {
        com.google.common.base.m.o(th2);
        return new p(th2);
    }

    public static r f(r rVar, com.google.common.base.f fVar, Executor executor) {
        return AbstractTransformFuture.create(rVar, fVar, executor);
    }

    public static r g(r rVar, f fVar, Executor executor) {
        return AbstractTransformFuture.createAsync(rVar, fVar, executor);
    }

    public static r h(r rVar, long j11, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return rVar.isDone() ? rVar : TimeoutFuture.v(rVar, j11, timeUnit, scheduledExecutorService);
    }
}
