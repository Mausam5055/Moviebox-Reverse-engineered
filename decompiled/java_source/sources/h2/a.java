package h2;

import androidx.media3.common.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f64266k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f64267l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private c f64268m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int[] f64269n;

    public a(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i11, Object obj, long j11, long j12, long j13, long j14, long j15) {
        super(aVar, hVar, rVar, i11, obj, j11, j12, j15);
        this.f64266k = j13;
        this.f64267l = j14;
    }

    public final int g(int i11) {
        return ((int[]) androidx.media3.common.util.a.i(this.f64269n))[i11];
    }

    protected final c h() {
        return (c) androidx.media3.common.util.a.i(this.f64268m);
    }

    public void i(c cVar) {
        this.f64268m = cVar;
        this.f64269n = cVar.a();
    }
}
