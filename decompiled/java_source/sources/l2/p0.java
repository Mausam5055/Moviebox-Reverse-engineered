package l2;

/* JADX INFO: loaded from: classes2.dex */
public final class p0 implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f68677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f68678b;

    public p0(long j11) {
        this(j11, 0L);
    }

    public p0(long j11, long j12) {
        this.f68677a = j11;
        this.f68678b = j12;
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f68677a;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        return new m0.a(new n0(j11, this.f68678b));
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return true;
    }
}
