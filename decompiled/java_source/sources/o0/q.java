package o0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q {
    public static final long a(int i11, int i12) {
        return p.c((((long) i12) & 4294967295L) | (((long) i11) << 32));
    }

    public static final long b(long j11, long j12) {
        return y.h.a(y.g.m(j11) - p.h(j12), y.g.n(j11) - p.i(j12));
    }

    public static final long c(long j11, long j12) {
        return y.h.a(y.g.m(j11) + p.h(j12), y.g.n(j11) + p.i(j12));
    }

    public static final long d(long j11) {
        int iRound = Math.round(y.g.m(j11));
        return p.c((((long) Math.round(y.g.n(j11))) & 4294967295L) | (((long) iRound) << 32));
    }
}
