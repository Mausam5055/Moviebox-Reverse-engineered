package androidx.media3.common.util;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f10405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f10406b;

    public l() {
        this(i.f10387a);
    }

    public l(i iVar) {
        this.f10405a = iVar;
    }

    public synchronized void a() {
        while (!this.f10406b) {
            wait();
        }
    }

    public synchronized boolean b(long j11) {
        try {
            if (j11 <= 0) {
                return this.f10406b;
            }
            long jElapsedRealtime = this.f10405a.elapsedRealtime();
            long j12 = j11 + jElapsedRealtime;
            if (j12 < jElapsedRealtime) {
                a();
            } else {
                while (!this.f10406b && jElapsedRealtime < j12) {
                    wait(j12 - jElapsedRealtime);
                    jElapsedRealtime = this.f10405a.elapsedRealtime();
                }
            }
            return this.f10406b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void c() {
        boolean z10 = false;
        while (!this.f10406b) {
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
        z10 = this.f10406b;
        this.f10406b = false;
        return z10;
    }

    public synchronized boolean e() {
        return this.f10406b;
    }

    public synchronized boolean f() {
        if (this.f10406b) {
            return false;
        }
        this.f10406b = true;
        notifyAll();
        return true;
    }
}
