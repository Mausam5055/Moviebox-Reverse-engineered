package com.google.firebase.perf.session.gauges;

import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import com.google.firebase.perf.util.Timer;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final sc.a f32332g = sc.a.e();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f32333h = TimeUnit.SECONDS.toMicros(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScheduledFuture f32338e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f32339f = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentLinkedQueue f32334a = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f32335b = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f32336c = "/proc/" + Integer.toString(Process.myPid()) + "/stat";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f32337d = e();

    c() {
    }

    private long d(long j11) {
        return Math.round((j11 / this.f32337d) * f32333h);
    }

    private long e() {
        return Os.sysconf(OsConstants._SC_CLK_TCK);
    }

    public static boolean f(long j11) {
        return j11 <= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Timer timer) {
        com.google.firebase.perf.v1.d dVarM = m(timer);
        if (dVarM != null) {
            this.f32334a.add(dVarM);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Timer timer) {
        com.google.firebase.perf.v1.d dVarM = m(timer);
        if (dVarM != null) {
            this.f32334a.add(dVarM);
        }
    }

    private synchronized void i(final Timer timer) {
        try {
            this.f32335b.schedule(new Runnable() { // from class: com.google.firebase.perf.session.gauges.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32330a.g(timer);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e11) {
            f32332g.j("Unable to collect Cpu Metric: " + e11.getMessage());
        }
    }

    private synchronized void j(long j11, final Timer timer) {
        this.f32339f = j11;
        try {
            this.f32338e = this.f32335b.scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.perf.session.gauges.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32328a.h(timer);
                }
            }, 0L, j11, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e11) {
            f32332g.j("Unable to start collecting Cpu Metrics: " + e11.getMessage());
        }
    }

    private com.google.firebase.perf.v1.d m(Timer timer) {
        if (timer == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f32336c));
            try {
                long currentTimestampMicros = timer.getCurrentTimestampMicros();
                String[] strArrSplit = bufferedReader.readLine().split(" ");
                com.google.firebase.perf.v1.d dVar = (com.google.firebase.perf.v1.d) com.google.firebase.perf.v1.d.k().d(currentTimestampMicros).i(d(Long.parseLong(strArrSplit[14]) + Long.parseLong(strArrSplit[16]))).j(d(Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[15]))).build();
                bufferedReader.close();
                return dVar;
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e11) {
            f32332g.j("Unable to read 'proc/[pid]/stat' file: " + e11.getMessage());
            return null;
        } catch (ArrayIndexOutOfBoundsException e12) {
            e = e12;
            f32332g.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NullPointerException e13) {
            e = e13;
            f32332g.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NumberFormatException e14) {
            e = e14;
            f32332g.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        }
    }

    public void c(Timer timer) {
        i(timer);
    }

    public void k(long j11, Timer timer) {
        long j12 = this.f32337d;
        if (j12 == -1 || j12 == 0 || f(j11)) {
            return;
        }
        if (this.f32338e == null) {
            j(j11, timer);
        } else if (this.f32339f != j11) {
            l();
            j(j11, timer);
        }
    }

    public void l() {
        ScheduledFuture scheduledFuture = this.f32338e;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.f32338e = null;
        this.f32339f = -1L;
    }
}
