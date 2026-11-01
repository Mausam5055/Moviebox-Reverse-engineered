package l2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m0 f68540a;

    public d0(m0 m0Var) {
        this.f68540a = m0Var;
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f68540a.getDurationUs();
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        return this.f68540a.getSeekPoints(j11);
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return this.f68540a.isSeekable();
    }
}
