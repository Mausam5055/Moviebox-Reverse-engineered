package v9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.e0;

/* JADX INFO: loaded from: classes4.dex */
public final class p extends a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f77185o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final o1 f77186p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f77187q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f77188r;

    public p(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, o1 o1Var, int i11, Object obj, long j11, long j12, long j13, int i12, o1 o1Var2) {
        super(kVar, nVar, o1Var, i11, obj, j11, j12, C.TIME_UNSET, C.TIME_UNSET, j13);
        this.f77185o = i12;
        this.f77186p = o1Var2;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void cancelLoad() {
    }

    @Override // v9.n
    public boolean f() {
        return this.f77188r;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public void load() {
        c cVarH = h();
        cVarH.b(0L);
        e0 e0VarTrack = cVarH.track(0, this.f77185o);
        e0VarTrack.e(this.f77186p);
        try {
            long jA = this.f77140i.a(this.f77133b.e(this.f77187q));
            if (jA != -1) {
                jA += this.f77187q;
            }
            g9.f fVar = new g9.f(this.f77140i, this.f77187q, jA);
            for (int iB = 0; iB != -1; iB = e0VarTrack.b(fVar, Integer.MAX_VALUE, true)) {
                this.f77187q += (long) iB;
            }
            e0VarTrack.d(this.f77138g, 1, (int) this.f77187q, 0, null);
            com.google.android.exoplayer2.upstream.m.a(this.f77140i);
            this.f77188r = true;
        } catch (Throwable th2) {
            com.google.android.exoplayer2.upstream.m.a(this.f77140i);
            throw th2;
        }
    }
}
