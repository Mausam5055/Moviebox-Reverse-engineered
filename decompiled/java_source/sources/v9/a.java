package v9;

import com.google.android.exoplayer2.o1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends n {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f77105k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f77106l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private c f77107m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int[] f77108n;

    public a(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, o1 o1Var, int i11, Object obj, long j11, long j12, long j13, long j14, long j15) {
        super(kVar, nVar, o1Var, i11, obj, j11, j12, j15);
        this.f77105k = j13;
        this.f77106l = j14;
    }

    public final int g(int i11) {
        return ((int[]) com.google.android.exoplayer2.util.a.i(this.f77108n))[i11];
    }

    protected final c h() {
        return (c) com.google.android.exoplayer2.util.a.i(this.f77107m);
    }

    public void i(c cVar) {
        this.f77107m = cVar;
        this.f77108n = cVar.a();
    }
}
