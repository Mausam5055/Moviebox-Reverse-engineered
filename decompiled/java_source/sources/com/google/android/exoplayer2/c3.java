package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes3.dex */
public final class c3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c3 f24830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c3 f24831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c3 f24832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c3 f24833f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c3 f24834g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f24835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f24836b;

    static {
        c3 c3Var = new c3(0L, 0L);
        f24830c = c3Var;
        f24831d = new c3(Long.MAX_VALUE, Long.MAX_VALUE);
        f24832e = new c3(Long.MAX_VALUE, 0L);
        f24833f = new c3(0L, Long.MAX_VALUE);
        f24834g = c3Var;
    }

    public c3(long j11, long j12) {
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        com.google.android.exoplayer2.util.a.a(j12 >= 0);
        this.f24835a = j11;
        this.f24836b = j12;
    }

    public long a(long j11, long j12, long j13) {
        long j14 = this.f24835a;
        if (j14 == 0 && this.f24836b == 0) {
            return j11;
        }
        long jW0 = com.google.android.exoplayer2.util.p0.W0(j11, j14, Long.MIN_VALUE);
        long jB = com.google.android.exoplayer2.util.p0.b(j11, this.f24836b, Long.MAX_VALUE);
        boolean z10 = false;
        boolean z11 = jW0 <= j12 && j12 <= jB;
        if (jW0 <= j13 && j13 <= jB) {
            z10 = true;
        }
        if (z11 && z10) {
            return Math.abs(j12 - j11) <= Math.abs(j13 - j11) ? j12 : j13;
        }
        if (z11) {
            return j12;
        }
        return z10 ? j13 : jW0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c3.class != obj.getClass()) {
            return false;
        }
        c3 c3Var = (c3) obj;
        return this.f24835a == c3Var.f24835a && this.f24836b == c3Var.f24836b;
    }

    public int hashCode() {
        return (((int) this.f24835a) * 31) + ((int) this.f24836b);
    }
}
