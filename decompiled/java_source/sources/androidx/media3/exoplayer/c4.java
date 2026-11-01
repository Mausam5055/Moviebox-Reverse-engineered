package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class c4 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c4 f11342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c4 f11343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c4 f11344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c4 f11345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c4 f11346g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f11348b;

    static {
        c4 c4Var = new c4(0L, 0L);
        f11342c = c4Var;
        f11343d = new c4(Long.MAX_VALUE, Long.MAX_VALUE);
        f11344e = new c4(Long.MAX_VALUE, 0L);
        f11345f = new c4(0L, Long.MAX_VALUE);
        f11346g = c4Var;
    }

    public c4(long j11, long j12) {
        androidx.media3.common.util.a.a(j11 >= 0);
        androidx.media3.common.util.a.a(j12 >= 0);
        this.f11347a = j11;
        this.f11348b = j12;
    }

    public long a(long j11, long j12, long j13) {
        long j14 = this.f11347a;
        if (j14 == 0 && this.f11348b == 0) {
            return j11;
        }
        long jS1 = androidx.media3.common.util.a1.s1(j11, j14, Long.MIN_VALUE);
        long jC = androidx.media3.common.util.a1.c(j11, this.f11348b, Long.MAX_VALUE);
        boolean z10 = false;
        boolean z11 = jS1 <= j12 && j12 <= jC;
        if (jS1 <= j13 && j13 <= jC) {
            z10 = true;
        }
        if (z11 && z10) {
            return Math.abs(j12 - j11) <= Math.abs(j13 - j11) ? j12 : j13;
        }
        if (z11) {
            return j12;
        }
        return z10 ? j13 : jS1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c4.class != obj.getClass()) {
            return false;
        }
        c4 c4Var = (c4) obj;
        return this.f11347a == c4Var.f11347a && this.f11348b == c4Var.f11348b;
    }

    public int hashCode() {
        return (((int) this.f11347a) * 31) + ((int) this.f11348b);
    }
}
