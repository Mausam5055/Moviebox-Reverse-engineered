package com.google.firebase.perf.util;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f32374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f32375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TimeUnit f32376c;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32377a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f32377a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32377a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32377a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public g(long j11, long j12, TimeUnit timeUnit) {
        this.f32374a = j11;
        this.f32375b = j12;
        this.f32376c = timeUnit;
    }

    public double a() {
        int i11 = a.f32377a[this.f32376c.ordinal()];
        if (i11 == 1) {
            return (this.f32374a / this.f32375b) * TimeUnit.SECONDS.toNanos(1L);
        }
        if (i11 != 2) {
            return i11 != 3 ? this.f32374a / this.f32376c.toSeconds(this.f32375b) : (this.f32374a / this.f32375b) * TimeUnit.SECONDS.toMillis(1L);
        }
        return (this.f32374a / this.f32375b) * TimeUnit.SECONDS.toMicros(1L);
    }
}
