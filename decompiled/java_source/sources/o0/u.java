package o0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u {
    public static final long a(int i11, int i12) {
        return t.c((((long) i12) & 4294967295L) | (((long) i11) << 32));
    }

    public static final long b(long j11) {
        return p.c((((j11 << 32) >> 33) & 4294967295L) | ((j11 >> 33) << 32));
    }

    public static final long c(long j11) {
        int iRound = Math.round(y.m.i(j11));
        return t.c((((long) Math.round(y.m.g(j11))) & 4294967295L) | (((long) iRound) << 32));
    }

    public static final long d(long j11) {
        return y.n.a(t.g(j11), t.f(j11));
    }
}
