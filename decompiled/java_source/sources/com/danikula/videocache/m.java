package com.danikula.videocache;

/* JADX INFO: loaded from: classes3.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f24055a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected volatile boolean f24059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f24060f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f24062h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f24056b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f24057c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile int f24058d = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile long f24061g = -1;

    public m(a aVar) {
        this.f24055a = (a) l.c(aVar);
        aVar.F(this);
    }

    private void h() {
        synchronized (this.f24056b) {
            try {
                this.f24060f = true;
                this.f24056b.wait(1000L);
                this.f24060f = false;
            } catch (Throwable th2) {
                q.b("waitForSourceData error， error = " + th2);
                th2.printStackTrace();
            }
        }
    }

    public void a(long j11) {
        this.f24055a.E(j11);
        this.f24055a.C(j11);
    }

    public boolean b() {
        return this.f24060f;
    }

    public void c() {
        synchronized (this.f24056b) {
            q.c("-------get new data, notify wait~");
            this.f24060f = false;
            this.f24056b.notifyAll();
        }
    }

    public int d(byte[] bArr, long j11, int i11, String str) {
        n.a(bArr, j11, i11);
        while (!this.f24055a.isCompleted() && !this.f24055a.H(j11, i11, str) && !this.f24059e) {
            this.f24062h = true;
            h();
        }
        if (this.f24062h) {
            q.e("isWaited， isAvailable = " + this.f24055a.H(j11, i11, str) + " ,offset = " + j11);
        }
        this.f24062h = false;
        int iD = this.f24055a.D(bArr, j11, i11, str);
        if (iD > 0) {
            com.transsnet.downloader.util.i.f59939a.b("4");
        }
        if (this.f24061g < 0 || (j11 - this.f24061g > 512000 && iD > 0)) {
            this.f24061g = j11;
            q.f("ProxyCache read， isCompleted = " + this.f24055a.isCompleted() + " ,offset = " + j11);
        }
        return iD;
    }

    public void e() {
        synchronized (this.f24057c) {
            q.a("Shutdown proxy");
            try {
                this.f24059e = true;
                this.f24055a.close();
            } catch (Throwable th2) {
                q.a("Shutdown proxy, error = " + th2);
            }
        }
    }

    public void f() {
        q.e("----start");
        this.f24059e = false;
    }

    public void g() {
        q.e("--stop");
        this.f24059e = true;
        c();
    }
}
