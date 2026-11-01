package h2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f64352o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final r f64353p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f64354q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f64355r;

    public o(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i11, Object obj, long j11, long j12, long j13, int i12, r rVar2) {
        super(aVar, hVar, rVar, i11, obj, j11, j12, C.TIME_UNSET, C.TIME_UNSET, j13);
        this.f64352o = i12;
        this.f64353p = rVar2;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public void cancelLoad() {
    }

    @Override // h2.m
    public boolean f() {
        return this.f64355r;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public void load() {
        c cVarH = h();
        cVarH.b(0L);
        s0 s0VarTrack = cVarH.track(0, this.f64352o);
        s0VarTrack.c(this.f64353p);
        try {
            long jA = this.f64304i.a(this.f64297b.e(this.f64354q));
            if (jA != -1) {
                jA += this.f64354q;
            }
            l2.j jVar = new l2.j(this.f64304i, this.f64354q, jA);
            for (int iE = 0; iE != -1; iE = s0VarTrack.e(jVar, Integer.MAX_VALUE, true)) {
                this.f64354q += (long) iE;
            }
            s0VarTrack.d(this.f64302g, 1, (int) this.f64354q, 0, null);
            w1.g.a(this.f64304i);
            this.f64355r = true;
        } catch (Throwable th2) {
            w1.g.a(this.f64304i);
            throw th2;
        }
    }
}
