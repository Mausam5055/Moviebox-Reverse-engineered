package com.amazonaws.util;

import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class TimingInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Long f19005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f19006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Long f19007c;

    protected TimingInfo(Long l11, long j11, Long l12) {
        this.f19005a = l11;
        this.f19006b = j11;
        this.f19007c = l12;
    }

    public static double b(long j11, long j12) {
        return TimeUnit.NANOSECONDS.toMicros(j12 - j11) / 1000.0d;
    }

    public static TimingInfo m() {
        return new TimingInfo(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo n() {
        return new TimingInfoFullSupport(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo o(long j11) {
        return new TimingInfoFullSupport(null, j11, null);
    }

    public static TimingInfo p(long j11, Long l11) {
        return new TimingInfoUnmodifiable(null, j11, l11);
    }

    public void a(String str, TimingInfo timingInfo) {
    }

    public TimingInfo c() {
        this.f19007c = Long.valueOf(System.nanoTime());
        return this;
    }

    public Map d() {
        return Collections.emptyMap();
    }

    public final long e() {
        Long l11 = this.f19007c;
        if (l11 == null) {
            return -1L;
        }
        return l11.longValue();
    }

    public final long f() {
        return this.f19006b;
    }

    public Map g() {
        return Collections.emptyMap();
    }

    public final double h() {
        Double dI = i();
        if (dI == null) {
            return -1.0d;
        }
        return dI.doubleValue();
    }

    public final Double i() {
        if (k()) {
            return Double.valueOf(b(this.f19006b, this.f19007c.longValue()));
        }
        return null;
    }

    public void j(String str) {
    }

    public final boolean k() {
        return this.f19007c != null;
    }

    public void l(String str, long j11) {
    }

    public final String toString() {
        return String.valueOf(h());
    }
}
