package com.google.firebase.perf.session.gauges;

import com.google.firebase.perf.util.StorageUnit;
import com.google.firebase.perf.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final sc.a f32355f = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f32356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentLinkedQueue f32357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runtime f32358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ScheduledFuture f32359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f32360e;

    l() {
        this(Executors.newSingleThreadScheduledExecutor(), Runtime.getRuntime());
    }

    l(ScheduledExecutorService scheduledExecutorService, Runtime runtime) {
        this.f32359d = null;
        this.f32360e = -1L;
        this.f32356a = scheduledExecutorService;
        this.f32357b = new ConcurrentLinkedQueue();
        this.f32358c = runtime;
    }

    private int d() {
        return com.google.firebase.perf.util.k.c(StorageUnit.BYTES.toKilobytes(this.f32358c.totalMemory() - this.f32358c.freeMemory()));
    }

    public static boolean e(long j11) {
        return j11 <= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Timer timer) {
        com.google.firebase.perf.v1.b bVarL = l(timer);
        if (bVarL != null) {
            this.f32357b.add(bVarL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Timer timer) {
        com.google.firebase.perf.v1.b bVarL = l(timer);
        if (bVarL != null) {
            this.f32357b.add(bVarL);
        }
    }

    private synchronized void h(final Timer timer) {
        try {
            this.f32356a.schedule(new Runnable() { // from class: com.google.firebase.perf.session.gauges.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32353a.f(timer);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e11) {
            f32355f.j("Unable to collect Memory Metric: " + e11.getMessage());
        }
    }

    private synchronized void i(long j11, final Timer timer) {
        this.f32360e = j11;
        try {
            this.f32359d = this.f32356a.scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.perf.session.gauges.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32351a.g(timer);
                }
            }, 0L, j11, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e11) {
            f32355f.j("Unable to start collecting Memory Metrics: " + e11.getMessage());
        }
    }

    private com.google.firebase.perf.v1.b l(Timer timer) {
        if (timer == null) {
            return null;
        }
        return (com.google.firebase.perf.v1.b) com.google.firebase.perf.v1.b.j().d(timer.getCurrentTimestampMicros()).i(d()).build();
    }

    public void c(Timer timer) {
        h(timer);
    }

    public void j(long j11, Timer timer) {
        if (e(j11)) {
            return;
        }
        if (this.f32359d == null) {
            i(j11, timer);
        } else if (this.f32360e != j11) {
            k();
            i(j11, timer);
        }
    }

    public void k() {
        ScheduledFuture scheduledFuture = this.f32359d;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.f32359d = null;
        this.f32360e = -1L;
    }
}
