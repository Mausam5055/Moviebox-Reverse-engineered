package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Message;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class HandlerScheduler extends Scheduler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f65303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f65304d;

    private static final class ScheduledRunnable implements Runnable, c {
        private final Runnable delegate;
        private volatile boolean disposed;
        private final Handler handler;

        ScheduledRunnable(Handler handler, Runnable runnable) {
            this.handler = handler;
            this.delegate = runnable;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.handler.removeCallbacks(this);
            this.disposed = true;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.delegate.run();
            } catch (Throwable th2) {
                pz.a.r(th2);
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private static final class a extends Scheduler.Worker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f65305a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f65306b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile boolean f65307c;

        a(Handler handler, boolean z10) {
            this.f65305a = handler;
            this.f65306b = z10;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f65307c = true;
            this.f65305a.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65307c;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public c schedule(Runnable runnable, long j11, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            if (this.f65307c) {
                return io.reactivex.rxjava3.disposables.b.a();
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.f65305a, pz.a.t(runnable));
            Message messageObtain = Message.obtain(this.f65305a, scheduledRunnable);
            messageObtain.obj = this;
            if (this.f65306b) {
                messageObtain.setAsynchronous(true);
            }
            this.f65305a.sendMessageDelayed(messageObtain, timeUnit.toMillis(j11));
            if (!this.f65307c) {
                return scheduledRunnable;
            }
            this.f65305a.removeCallbacks(scheduledRunnable);
            return io.reactivex.rxjava3.disposables.b.a();
        }
    }

    HandlerScheduler(Handler handler, boolean z10) {
        this.f65303c = handler;
        this.f65304d = z10;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker c() {
        return new a(this.f65303c, this.f65304d);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public c e(Runnable runnable, long j11, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.f65303c, pz.a.t(runnable));
        Message messageObtain = Message.obtain(this.f65303c, scheduledRunnable);
        if (this.f65304d) {
            messageObtain.setAsynchronous(true);
        }
        this.f65303c.sendMessageDelayed(messageObtain, timeUnit.toMillis(j11));
        return scheduledRunnable;
    }
}
