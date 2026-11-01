package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
public final class l1 extends k1 implements t0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f67897b;

    public l1(Executor executor) {
        this.f67897b = executor;
        if (d() instanceof ScheduledThreadPoolExecutor) {
            ((ScheduledThreadPoolExecutor) d()).setRemoveOnCancelPolicy(true);
        }
    }

    private final void p(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        v1.c(coroutineContext, i1.a("The task was rejected", rejectedExecutionException));
    }

    private final ScheduledFuture q(ScheduledExecutorService scheduledExecutorService, Runnable runnable, CoroutineContext coroutineContext, long j11) {
        try {
            return scheduledExecutorService.schedule(runnable, j11, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e11) {
            p(coroutineContext, e11);
            return null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executorD = d();
        ExecutorService executorService = executorD instanceof ExecutorService ? (ExecutorService) executorD : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // kotlinx.coroutines.k1
    public Executor d() {
        return this.f67897b;
    }

    @Override // kotlinx.coroutines.i0
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableH;
        try {
            Executor executorD = d();
            b bVar = c.f67643a;
            if (bVar == null || (runnableH = bVar.h(runnable)) == null) {
                runnableH = runnable;
            }
            executorD.execute(runnableH);
        } catch (RejectedExecutionException e11) {
            b bVar2 = c.f67643a;
            if (bVar2 != null) {
                bVar2.e();
            }
            p(coroutineContext, e11);
            y0.b().dispatch(coroutineContext, runnable);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof l1) && ((l1) obj).d() == d();
    }

    public int hashCode() {
        return System.identityHashCode(d());
    }

    @Override // kotlinx.coroutines.t0
    public a1 invokeOnTimeout(long j11, Runnable runnable, CoroutineContext coroutineContext) {
        Executor executorD = d();
        ScheduledExecutorService scheduledExecutorService = executorD instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorD : null;
        ScheduledFuture scheduledFutureQ = scheduledExecutorService != null ? q(scheduledExecutorService, runnable, coroutineContext, j11) : null;
        return scheduledFutureQ != null ? new z0(scheduledFutureQ) : DefaultExecutor.INSTANCE.invokeOnTimeout(j11, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.t0
    public void scheduleResumeAfterDelay(long j11, n nVar) {
        Executor executorD = d();
        ScheduledExecutorService scheduledExecutorService = executorD instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorD : null;
        ScheduledFuture scheduledFutureQ = scheduledExecutorService != null ? q(scheduledExecutorService, new ResumeUndispatchedRunnable(this, nVar), nVar.getContext(), j11) : null;
        if (scheduledFutureQ != null) {
            q.c(nVar, new l(scheduledFutureQ));
        } else {
            DefaultExecutor.INSTANCE.scheduleResumeAfterDelay(j11, nVar);
        }
    }

    @Override // kotlinx.coroutines.i0
    public String toString() {
        return d().toString();
    }
}
