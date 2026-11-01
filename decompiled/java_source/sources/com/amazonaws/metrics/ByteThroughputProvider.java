package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ByteThroughputProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f18437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f18438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ThroughputMetricType f18439c;

    protected ByteThroughputProvider(ThroughputMetricType throughputMetricType) {
        this.f18439c = throughputMetricType;
    }

    public int a() {
        return this.f18438b;
    }

    public long b() {
        return this.f18437a;
    }

    public String c() {
        return super.toString();
    }

    protected void d(int i11, long j11) {
        this.f18438b += i11;
        this.f18437a += System.nanoTime() - j11;
    }

    protected void e() {
        this.f18438b = 0;
        this.f18437a = 0L;
    }

    public String toString() {
        return String.format("providerId=%s, throughputType=%s, byteCount=%d, duration=%d", c(), this.f18439c, Integer.valueOf(this.f18438b), Long.valueOf(this.f18437a));
    }
}
