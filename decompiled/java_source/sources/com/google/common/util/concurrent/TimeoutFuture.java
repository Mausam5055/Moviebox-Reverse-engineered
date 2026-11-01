package com.google.common.util.concurrent;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
final class TimeoutFuture extends i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f31008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScheduledFuture f31009b;

    private static final class Fire<V> implements Runnable {
        TimeoutFuture timeoutFutureRef;

        Fire(TimeoutFuture timeoutFuture) {
            this.timeoutFutureRef = timeoutFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            r rVar;
            TimeoutFuture timeoutFuture = this.timeoutFutureRef;
            if (timeoutFuture == null || (rVar = timeoutFuture.f31008a) == null) {
                return;
            }
            this.timeoutFutureRef = null;
            if (rVar.isDone()) {
                timeoutFuture.setFuture(rVar);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = timeoutFuture.f31009b;
                timeoutFuture.f31009b = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (jAbs > 10) {
                            str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                        }
                    } catch (Throwable th2) {
                        timeoutFuture.setException(new TimeoutFutureException(str));
                        throw th2;
                    }
                }
                timeoutFuture.setException(new TimeoutFutureException(str + ": " + rVar));
                rVar.cancel(true);
            } catch (Throwable th3) {
                rVar.cancel(true);
                throw th3;
            }
        }
    }

    private static final class TimeoutFutureException extends TimeoutException {
        private TimeoutFutureException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }
    }

    private TimeoutFuture(r rVar) {
        this.f31008a = (r) com.google.common.base.m.o(rVar);
    }

    static r v(r rVar, long j11, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(rVar);
        Fire fire = new Fire(timeoutFuture);
        timeoutFuture.f31009b = scheduledExecutorService.schedule(fire, j11, timeUnit);
        rVar.addListener(fire, MoreExecutors.a());
        return timeoutFuture;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected void afterDone() {
        maybePropagateCancellationTo(this.f31008a);
        ScheduledFuture scheduledFuture = this.f31009b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f31008a = null;
        this.f31009b = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected String pendingToString() {
        r rVar = this.f31008a;
        ScheduledFuture scheduledFuture = this.f31009b;
        if (rVar == null) {
            return null;
        }
        String str = "inputFuture=[" + rVar + "]";
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }
}
