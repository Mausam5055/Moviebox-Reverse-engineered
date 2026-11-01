package v9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.upstream.i0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public class k extends a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f77171o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f77172p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g f77173q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f77174r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile boolean f77175s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f77176t;

    public k(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, o1 o1Var, int i11, Object obj, long j11, long j12, long j13, long j14, long j15, int i12, long j16, g gVar) {
        super(kVar, nVar, o1Var, i11, obj, j11, j12, j13, j14, j15);
        this.f77171o = i12;
        this.f77172p = j16;
        this.f77173q = gVar;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public final void cancelLoad() {
        this.f77175s = true;
    }

    @Override // v9.n
    public long e() {
        return this.f77183j + ((long) this.f77171o);
    }

    @Override // v9.n
    public boolean f() {
        return this.f77176t;
    }

    protected g.b j(c cVar) {
        return cVar;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public final void load() {
        if (this.f77174r == 0) {
            c cVarH = h();
            cVarH.b(this.f77172p);
            g gVar = this.f77173q;
            g.b bVarJ = j(cVarH);
            long j11 = this.f77105k;
            long j12 = j11 == C.TIME_UNSET ? -9223372036854775807L : j11 - this.f77172p;
            long j13 = this.f77106l;
            gVar.e(bVarJ, j12, j13 == C.TIME_UNSET ? -9223372036854775807L : j13 - this.f77172p);
        }
        try {
            com.google.android.exoplayer2.upstream.n nVarE = this.f77133b.e(this.f77174r);
            i0 i0Var = this.f77140i;
            g9.f fVar = new g9.f(i0Var, nVarE.f27443g, i0Var.a(nVarE));
            do {
                try {
                    if (this.f77175s) {
                        break;
                    }
                } catch (Throwable th2) {
                    this.f77174r = fVar.getPosition() - this.f77133b.f27443g;
                    throw th2;
                }
            } while (this.f77173q.a(fVar));
            this.f77174r = fVar.getPosition() - this.f77133b.f27443g;
            com.google.android.exoplayer2.upstream.m.a(this.f77140i);
            this.f77176t = !this.f77175s;
        } catch (Throwable th3) {
            com.google.android.exoplayer2.upstream.m.a(this.f77140i);
            throw th3;
        }
    }
}
