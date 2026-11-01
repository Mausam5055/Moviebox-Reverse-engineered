package com.mbridge.msdk.foundation.same.report.crashreport;

import android.annotation.TargetApi;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class c extends Thread {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile c f35524e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f35525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile b f35526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.crashreport.a f35527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f35528d;

    private class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f35529a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f35530b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f35531c;

        private b() {
            this.f35529a = SystemClock.uptimeMillis();
        }

        boolean a() {
            return !this.f35530b || this.f35529a - this.f35531c >= ((long) c.this.f35528d);
        }

        void b() {
            this.f35530b = false;
            this.f35531c = SystemClock.uptimeMillis();
            c.this.f35525a.postAtFrontOfQueue(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this) {
                this.f35530b = true;
                this.f35529a = SystemClock.uptimeMillis();
            }
        }
    }

    private c() {
        super("AnrMonitor-Thread");
        this.f35525a = new Handler(Looper.getMainLooper());
        this.f35528d = 5000;
    }

    public static c a() {
        if (f35524e == null) {
            synchronized (c.class) {
                try {
                    if (f35524e == null) {
                        f35524e = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35524e;
    }

    public c a(int i11, com.mbridge.msdk.foundation.same.report.crashreport.a aVar) {
        this.f35528d = i11;
        this.f35527c = aVar;
        return this;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0025 */
    @Override // java.lang.Thread, java.lang.Runnable
    @TargetApi(16)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            if (isInterrupted() || !(this.f35526b == null || this.f35526b.f35530b)) {
                try {
                    Thread.sleep(this.f35528d);
                } catch (Exception unused) {
                }
            } else {
                synchronized (this) {
                    if (this.f35526b == null) {
                        this.f35526b = new b();
                    }
                    this.f35526b.b();
                    long jUptimeMillis = this.f35528d;
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    while (jUptimeMillis > 0) {
                        try {
                            wait(jUptimeMillis);
                        } catch (InterruptedException e11) {
                            Log.w("AnrMonitor", e11.toString());
                        }
                        jUptimeMillis = ((long) this.f35528d) - (SystemClock.uptimeMillis() - jUptimeMillis2);
                    }
                    if (!this.f35526b.a()) {
                        com.mbridge.msdk.foundation.same.report.crashreport.a aVar = this.f35527c;
                        if (aVar != null) {
                            aVar.a();
                        }
                    } else if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger() && this.f35527c != null) {
                        StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                        this.f35527c.a(d.b(stackTrace), stackTrace);
                    }
                }
            }
        }
    }
}
