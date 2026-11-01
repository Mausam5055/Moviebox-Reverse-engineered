package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f27584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f27585b;

    public h() {
        this(e.f27567a);
    }

    public h(e eVar) {
        this.f27584a = eVar;
    }

    public synchronized void a() {
        while (!this.f27585b) {
            wait();
        }
    }

    public synchronized boolean b(long j11) {
        try {
            if (j11 <= 0) {
                return this.f27585b;
            }
            long jElapsedRealtime = this.f27584a.elapsedRealtime();
            long j12 = j11 + jElapsedRealtime;
            if (j12 < jElapsedRealtime) {
                a();
            } else {
                while (!this.f27585b && jElapsedRealtime < j12) {
                    wait(j12 - jElapsedRealtime);
                    jElapsedRealtime = this.f27584a.elapsedRealtime();
                }
            }
            return this.f27585b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void c() {
        boolean z10 = false;
        while (!this.f27585b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean d() {
        boolean z10;
        z10 = this.f27585b;
        this.f27585b = false;
        return z10;
    }

    public synchronized boolean e() {
        return this.f27585b;
    }

    public synchronized boolean f() {
        if (this.f27585b) {
            return false;
        }
        this.f27585b = true;
        notifyAll();
        return true;
    }
}
