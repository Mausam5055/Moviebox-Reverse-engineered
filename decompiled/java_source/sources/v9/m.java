package v9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.upstream.i0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class m extends f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final g f77179j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private g.b f77180k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f77181l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile boolean f77182m;

    public m(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, o1 o1Var, int i11, Object obj, g gVar) {
        super(kVar, nVar, 2, o1Var, i11, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f77179j = gVar;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void cancelLoad() {
        this.f77182m = true;
    }

    public void e(g.b bVar) {
        this.f77180k = bVar;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void load() {
        if (this.f77181l == 0) {
            this.f77179j.e(this.f77180k, C.TIME_UNSET, C.TIME_UNSET);
        }
        try {
            com.google.android.exoplayer2.upstream.n nVarE = this.f77133b.e(this.f77181l);
            i0 i0Var = this.f77140i;
            g9.f fVar = new g9.f(i0Var, nVarE.f27443g, i0Var.a(nVarE));
            while (!this.f77182m && this.f77179j.a(fVar)) {
                try {
                } catch (Throwable th2) {
                    this.f77181l = fVar.getPosition() - this.f77133b.f27443g;
                    throw th2;
                }
            }
            this.f77181l = fVar.getPosition() - this.f77133b.f27443g;
            com.google.android.exoplayer2.upstream.m.a(this.f77140i);
        } catch (Throwable th3) {
            com.google.android.exoplayer2.upstream.m.a(this.f77140i);
            throw th3;
        }
    }
}
