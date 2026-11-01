package h2;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f64337o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f64338p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final f f64339q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f64340r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile boolean f64341s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f64342t;

    public j(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i11, Object obj, long j11, long j12, long j13, long j14, long j15, int i12, long j16, f fVar) {
        super(aVar, hVar, rVar, i11, obj, j11, j12, j13, j14, j15);
        this.f64337o = i12;
        this.f64338p = j16;
        this.f64339q = fVar;
    }

    private void k(c cVar) {
        if (y.q(this.f64299d.f10160n)) {
            r rVar = this.f64299d;
            int i11 = rVar.L;
            if ((i11 <= 1 && rVar.M <= 1) || i11 == -1 || rVar.M == -1) {
                return;
            }
            s0 s0VarTrack = cVar.track(0, 4);
            r rVar2 = this.f64299d;
            int i12 = rVar2.M * rVar2.L;
            long j11 = (this.f64303h - this.f64302g) / ((long) i12);
            for (int i13 = 1; i13 < i12; i13++) {
                s0VarTrack.b(new j0(), 0);
                s0VarTrack.d(((long) i13) * j11, 0, 0, 0, null);
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public final void cancelLoad() {
        this.f64341s = true;
    }

    @Override // h2.m
    public long e() {
        return this.f64350j + ((long) this.f64337o);
    }

    @Override // h2.m
    public boolean f() {
        return this.f64342t;
    }

    protected f.b j(c cVar) {
        return cVar;
    }

    protected void l() {
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public final void load() {
        c cVarH = h();
        if (this.f64340r == 0) {
            cVarH.b(this.f64338p);
            f fVar = this.f64339q;
            f.b bVarJ = j(cVarH);
            long j11 = this.f64266k;
            long j12 = j11 == C.TIME_UNSET ? -9223372036854775807L : j11 - this.f64338p;
            long j13 = this.f64267l;
            fVar.d(bVarJ, j12, j13 == C.TIME_UNSET ? -9223372036854775807L : j13 - this.f64338p);
        }
        try {
            w1.h hVarE = this.f64297b.e(this.f64340r);
            w1.l lVar = this.f64304i;
            l2.j jVar = new l2.j(lVar, hVarE.f77517g, lVar.a(hVarE));
            do {
                try {
                    if (this.f64341s) {
                        break;
                    }
                } catch (Throwable th2) {
                    this.f64340r = jVar.getPosition() - this.f64297b.f77517g;
                    throw th2;
                }
            } while (this.f64339q.a(jVar));
            k(cVarH);
            this.f64340r = jVar.getPosition() - this.f64297b.f77517g;
            l();
            w1.g.a(this.f64304i);
            this.f64342t = !this.f64341s;
        } catch (Throwable th3) {
            l();
            w1.g.a(this.f64304i);
            throw th3;
        }
    }
}
