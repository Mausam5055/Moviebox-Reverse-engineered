package androidx.media3.exoplayer.source;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l0 extends c {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Void f12854l = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected final r f12855k;

    protected l0(r rVar) {
        this.f12855k = rVar;
    }

    protected r.b J(r.b bVar) {
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.c
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final r.b D(Void r11, r.b bVar) {
        return J(bVar);
    }

    protected long L(long j11, r.b bVar) {
        return j11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.c
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public final long E(Void r11, long j11, r.b bVar) {
        return L(j11, bVar);
    }

    protected int N(int i11) {
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.c
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final int F(Void r11, int i11) {
        return N(i11);
    }

    protected abstract void P(androidx.media3.common.e0 e0Var);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.c
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final void G(Void r11, r rVar, androidx.media3.common.e0 e0Var) {
        P(e0Var);
    }

    protected final void R() {
        I(f12854l, this.f12855k);
    }

    protected void S() {
        R();
    }

    @Override // androidx.media3.exoplayer.source.r
    public androidx.media3.common.t a() {
        return this.f12855k.a();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean b() {
        return this.f12855k.b();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public androidx.media3.common.e0 c() {
        return this.f12855k.c();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public void l(androidx.media3.common.t tVar) {
        this.f12855k.l(tVar);
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.a
    protected final void z(w1.n nVar) {
        super.z(nVar);
        S();
    }
}
