package androidx.media3.common.util;

import androidx.annotation.Nullable;
import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RunnableFutureTask<R, E extends Exception> implements RunnableFuture<R> {
    private boolean canceled;

    @Nullable
    private Exception exception;

    @Nullable
    private R result;

    @Nullable
    private Thread workThread;
    private final l started = new l();
    private final l finished = new l();
    private final Object cancelLock = new Object();

    protected RunnableFutureTask() {
    }

    private R getResult() throws ExecutionException {
        if (this.canceled) {
            throw new CancellationException();
        }
        if (this.exception == null) {
            return this.result;
        }
        throw new ExecutionException(this.exception);
    }

    public final void blockUntilFinished() {
        this.finished.c();
    }

    public final void blockUntilStarted() {
        this.started.c();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        synchronized (this.cancelLock) {
            try {
                if (!this.canceled && !this.finished.e()) {
                    this.canceled = true;
                    cancelWork();
                    Thread thread = this.workThread;
                    if (thread == null) {
                        this.started.f();
                        this.finished.f();
                    } else if (z10) {
                        thread.interrupt();
                    }
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void cancelWork() {
    }

    protected abstract R doWork() throws Exception;

    @Override // java.util.concurrent.Future
    public final R get() throws ExecutionException, InterruptedException {
        this.finished.a();
        return getResult();
    }

    @Override // java.util.concurrent.Future
    public final R get(long j11, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.finished.b(TimeUnit.MILLISECONDS.convert(j11, timeUnit))) {
            return getResult();
        }
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.canceled;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.finished.e();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.cancelLock) {
            try {
                if (this.canceled) {
                    return;
                }
                this.workThread = Thread.currentThread();
                this.started.f();
                try {
                    try {
                        this.result = doWork();
                        synchronized (this.cancelLock) {
                            this.finished.f();
                            this.workThread = null;
                            Thread.interrupted();
                        }
                    } catch (Throwable th2) {
                        synchronized (this.cancelLock) {
                            this.finished.f();
                            this.workThread = null;
                            Thread.interrupted();
                            throw th2;
                        }
                    }
                } catch (Exception e11) {
                    this.exception = e11;
                    synchronized (this.cancelLock) {
                        this.finished.f();
                        this.workThread = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
