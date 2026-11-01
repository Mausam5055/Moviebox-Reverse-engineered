package z9;

import com.google.android.exoplayer2.source.rtsp.j;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import g9.e0;
import g9.n;

/* JADX INFO: loaded from: classes4.dex */
final class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f79362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c0 f79363b = new c0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f79364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f79365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f79366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f79367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f79368g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private e0 f79369h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f79370i;

    public b(j jVar) {
        this.f79362a = jVar;
        this.f79364c = jVar.f26430b;
        String str = (String) com.google.android.exoplayer2.util.a.e((String) jVar.f26432d.get("mode"));
        if (com.google.common.base.a.a(str, "AAC-hbr")) {
            this.f79365d = 13;
            this.f79366e = 3;
        } else {
            if (!com.google.common.base.a.a(str, "AAC-lbr")) {
                throw new UnsupportedOperationException("AAC mode not supported");
            }
            this.f79365d = 6;
            this.f79366e = 2;
        }
        this.f79367f = this.f79366e + this.f79365d;
    }

    private static void d(e0 e0Var, long j11, int i11) {
        e0Var.d(j11, 1, i11, 0, null);
    }

    private static long e(long j11, long j12, long j13, int i11) {
        return j11 + p0.N0(j12 - j13, 1000000L, i11);
    }

    @Override // z9.e
    public void a(d0 d0Var, long j11, int i11, boolean z10) {
        com.google.android.exoplayer2.util.a.e(this.f79369h);
        short sZ = d0Var.z();
        int i12 = sZ / this.f79367f;
        long jE = e(this.f79370i, j11, this.f79368g, this.f79364c);
        this.f79363b.m(d0Var);
        if (i12 == 1) {
            int iH = this.f79363b.h(this.f79365d);
            this.f79363b.r(this.f79366e);
            this.f79369h.c(d0Var, d0Var.a());
            if (z10) {
                d(this.f79369h, jE, iH);
                return;
            }
            return;
        }
        d0Var.Q((sZ + 7) / 8);
        for (int i13 = 0; i13 < i12; i13++) {
            int iH2 = this.f79363b.h(this.f79365d);
            this.f79363b.r(this.f79366e);
            this.f79369h.c(d0Var, iH2);
            d(this.f79369h, jE, iH2);
            jE += p0.N0(i12, 1000000L, this.f79364c);
        }
    }

    @Override // z9.e
    public void b(long j11, int i11) {
        this.f79368g = j11;
    }

    @Override // z9.e
    public void c(n nVar, int i11) {
        e0 e0VarTrack = nVar.track(i11, 1);
        this.f79369h = e0VarTrack;
        e0VarTrack.e(this.f79362a.f26431c);
    }

    @Override // z9.e
    public void seek(long j11, long j12) {
        this.f79368g = j11;
        this.f79370i = j12;
    }
}
