package com.amazonaws.event;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f18369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f18370b;

    public ProgressEvent(long j11) {
        this.f18369a = j11;
    }

    public long a() {
        return this.f18369a;
    }

    public int b() {
        return this.f18370b;
    }

    public void c(int i11) {
        this.f18370b = i11;
    }
}
