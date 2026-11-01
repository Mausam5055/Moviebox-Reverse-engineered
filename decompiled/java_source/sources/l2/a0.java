package l2;

import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class a0 implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f68486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f68487b;

    public a0(b0 b0Var, long j11) {
        this.f68486a = b0Var;
        this.f68487b = j11;
    }

    private n0 b(long j11, long j12) {
        return new n0((j11 * 1000000) / ((long) this.f68486a.f68505e), this.f68487b + j12);
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f68486a.f();
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        androidx.media3.common.util.a.i(this.f68486a.f68511k);
        b0 b0Var = this.f68486a;
        b0.a aVar = b0Var.f68511k;
        long[] jArr = aVar.f68513a;
        long[] jArr2 = aVar.f68514b;
        int iH = a1.h(jArr, b0Var.i(j11), true, false);
        n0 n0VarB = b(iH == -1 ? 0L : jArr[iH], iH != -1 ? jArr2[iH] : 0L);
        if (n0VarB.f68650a == j11 || iH == jArr.length - 1) {
            return new m0.a(n0VarB);
        }
        int i11 = iH + 1;
        return new m0.a(n0VarB, b(jArr[i11], jArr2[i11]));
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return true;
    }
}
