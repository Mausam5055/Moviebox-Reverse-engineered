package com.google.firebase.crashlytics.internal.send;

import android.os.SystemClock;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.l;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.a0;
import com.google.firebase.crashlytics.internal.common.l0;
import com.google.firebase.crashlytics.internal.common.z0;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import ob.g;
import r8.h;
import r8.j;

/* JADX INFO: loaded from: classes.dex */
final class ReportQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f31711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f31712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f31713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f31714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f31715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BlockingQueue f31716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ThreadPoolExecutor f31717g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final h f31718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final l0 f31719i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f31720j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f31721k;

    /* JADX INFO: loaded from: classes4.dex */
    private final class ReportRunnable implements Runnable {
        private final a0 reportWithSessionId;
        private final TaskCompletionSource<a0> tcs;

        private ReportRunnable(a0 a0Var, TaskCompletionSource<a0> taskCompletionSource) {
            this.reportWithSessionId = a0Var;
            this.tcs = taskCompletionSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            ReportQueue.this.p(this.reportWithSessionId, this.tcs);
            ReportQueue.this.f31719i.c();
            double dG = ReportQueue.this.g();
            g.f().b("Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(dG / 1000.0d)) + " s for report: " + this.reportWithSessionId.d());
            ReportQueue.q(dG);
        }
    }

    ReportQueue(double d11, double d12, long j11, h hVar, l0 l0Var) {
        this.f31711a = d11;
        this.f31712b = d12;
        this.f31713c = j11;
        this.f31718h = hVar;
        this.f31719i = l0Var;
        this.f31714d = SystemClock.elapsedRealtime();
        int i11 = (int) d11;
        this.f31715e = i11;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i11);
        this.f31716f = arrayBlockingQueue;
        this.f31717g = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f31720j = 0;
        this.f31721k = 0L;
    }

    ReportQueue(h hVar, com.google.firebase.crashlytics.internal.settings.c cVar, l0 l0Var) {
        this(cVar.f31742f, cVar.f31743g, ((long) cVar.f31744h) * 1000, hVar, l0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double g() {
        return Math.min(3600000.0d, (60000.0d / this.f31711a) * Math.pow(this.f31712b, h()));
    }

    private int h() {
        if (this.f31721k == 0) {
            this.f31721k = o();
        }
        int iO = (int) ((o() - this.f31721k) / this.f31713c);
        int iMin = l() ? Math.min(100, this.f31720j + iO) : Math.max(0, this.f31720j - iO);
        if (this.f31720j != iMin) {
            this.f31720j = iMin;
            this.f31721k = o();
        }
        return iMin;
    }

    private boolean k() {
        return this.f31716f.size() < this.f31715e;
    }

    private boolean l() {
        return this.f31716f.size() == this.f31715e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(CountDownLatch countDownLatch) {
        try {
            l.a(this.f31718h, Priority.HIGHEST);
        } catch (Exception unused) {
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(TaskCompletionSource taskCompletionSource, boolean z10, a0 a0Var, Exception exc) {
        if (exc != null) {
            taskCompletionSource.trySetException(exc);
            return;
        }
        if (z10) {
            j();
        }
        taskCompletionSource.trySetResult(a0Var);
    }

    private long o() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final a0 a0Var, final TaskCompletionSource taskCompletionSource) {
        g.f().b("Sending report through Google DataTransport: " + a0Var.d());
        final boolean z10 = SystemClock.elapsedRealtime() - this.f31714d < 2000;
        this.f31718h.a(r8.d.h(a0Var.b()), new j() { // from class: com.google.firebase.crashlytics.internal.send.c
            @Override // r8.j
            public final void a(Exception exc) {
                this.f31728a.n(taskCompletionSource, z10, a0Var, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(double d11) {
        try {
            Thread.sleep((long) d11);
        } catch (InterruptedException unused) {
        }
    }

    TaskCompletionSource i(a0 a0Var, boolean z10) {
        synchronized (this.f31716f) {
            try {
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                if (!z10) {
                    p(a0Var, taskCompletionSource);
                    return taskCompletionSource;
                }
                this.f31719i.b();
                if (!k()) {
                    h();
                    g.f().b("Dropping report due to queue being full: " + a0Var.d());
                    this.f31719i.a();
                    taskCompletionSource.trySetResult(a0Var);
                    return taskCompletionSource;
                }
                g.f().b("Enqueueing report: " + a0Var.d());
                g.f().b("Queue size: " + this.f31716f.size());
                this.f31717g.execute(new ReportRunnable(a0Var, taskCompletionSource));
                g.f().b("Closing task for report: " + a0Var.d());
                taskCompletionSource.trySetResult(a0Var);
                return taskCompletionSource;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void j() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() { // from class: com.google.firebase.crashlytics.internal.send.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f31732a.m(countDownLatch);
            }
        }).start();
        z0.c(countDownLatch, 2L, TimeUnit.SECONDS);
    }
}
