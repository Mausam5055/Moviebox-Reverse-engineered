package com.mbridge.msdk.tracker.network;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b0 extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f38560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f38561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f38563d;

    public b0() {
        this.f38562c = 0;
        this.f38563d = "";
        this.f38560a = null;
    }

    public b0(q qVar) {
        this.f38562c = 0;
        this.f38563d = "";
        this.f38560a = qVar;
    }

    public b0(String str) {
        super(str);
        this.f38562c = 0;
        this.f38563d = "";
        this.f38560a = null;
    }

    public b0(Throwable th2) {
        super(th2);
        this.f38562c = 0;
        this.f38563d = "";
        this.f38560a = null;
    }

    public abstract int a();

    public void a(int i11) {
        this.f38562c = i11;
    }

    void a(long j11) {
        this.f38561b = j11;
    }

    public int b() {
        return this.f38562c;
    }
}
