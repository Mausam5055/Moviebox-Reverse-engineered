package com.mbridge.msdk.tracker.network;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes5.dex */
public class n implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue<t<?>> f38584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f38585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f38586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w f38587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f38588e = false;

    public n(BlockingQueue<t<?>> blockingQueue, m mVar, b bVar, w wVar) {
        this.f38584a = blockingQueue;
        this.f38585b = mVar;
        this.f38586c = bVar;
        this.f38587d = wVar;
    }

    private void a() throws InterruptedException {
        b(this.f38584a.take());
    }

    private void a(t<?> tVar) {
        TrafficStats.setThreadStatsTag(tVar.s());
    }

    private void a(t<?> tVar, b0 b0Var) {
        this.f38587d.a(tVar, tVar.c(b0Var));
    }

    void b(t<?> tVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        tVar.a(3);
        try {
            try {
                try {
                    tVar.a("network-queue-take");
                    if (tVar.v()) {
                        tVar.c("network-discard-cancelled");
                        tVar.x();
                        return;
                    }
                    if (tVar.y()) {
                        a(tVar);
                    }
                    q qVarA = this.f38585b.a(tVar);
                    tVar.a("network-http-complete");
                    if (qVarA.f38619e && tVar.u()) {
                        tVar.c("not-modified");
                        tVar.x();
                        return;
                    }
                    v<?> vVarA = tVar.a(qVarA);
                    tVar.a("network-parse-complete");
                    if (tVar.z() && vVarA.f38692b != null) {
                        this.f38586c.a(tVar.e(), vVarA.f38692b);
                        tVar.a("network-cache-written");
                    }
                    tVar.w();
                    this.f38587d.a(tVar, vVarA);
                    tVar.a(vVarA);
                } catch (Exception e11) {
                    c0.a(e11, "Unhandled exception %s", e11.toString());
                    a0 a0Var = new a0(e11);
                    a0Var.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                    this.f38587d.a(tVar, a0Var);
                    tVar.x();
                }
            } catch (b0 e12) {
                e12.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                a(tVar, e12);
                tVar.x();
            }
        } finally {
            tVar.a(4);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f38588e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                c0.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
