package v9;

import com.google.android.exoplayer2.o1;

/* JADX INFO: loaded from: classes3.dex */
public abstract class n extends f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f77183j;

    public n(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, o1 o1Var, int i11, Object obj, long j11, long j12, long j13) {
        super(kVar, nVar, 1, o1Var, i11, obj, j11, j12);
        com.google.android.exoplayer2.util.a.e(o1Var);
        this.f77183j = j13;
    }

    public long e() {
        long j11 = this.f77183j;
        if (j11 != -1) {
            return 1 + j11;
        }
        return -1L;
    }

    public abstract boolean f();
}
