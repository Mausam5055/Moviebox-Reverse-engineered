package e3;

import l2.i0;

/* JADX INFO: loaded from: classes2.dex */
final class a extends l2.i implements g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f61498h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f61499i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f61500j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f61501k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f61502l;

    public a(long j11, long j12, int i11, int i12, boolean z10) {
        super(j11, j12, i11, i12, z10);
        this.f61498h = j12;
        this.f61499i = i11;
        this.f61500j = i12;
        this.f61501k = z10;
        this.f61502l = j11 == -1 ? -1L : j11;
    }

    public a(long j11, long j12, i0.a aVar, boolean z10) {
        this(j11, j12, aVar.f68611f, aVar.f68608c, z10);
    }

    @Override // e3.g
    public long a() {
        return this.f61502l;
    }

    public a e(long j11) {
        return new a(j11, this.f61498h, this.f61499i, this.f61500j, this.f61501k);
    }

    @Override // e3.g
    public int g() {
        return this.f61499i;
    }

    @Override // e3.g
    public long getTimeUs(long j11) {
        return c(j11);
    }
}
