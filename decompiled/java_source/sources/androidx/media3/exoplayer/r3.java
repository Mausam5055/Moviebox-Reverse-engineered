package androidx.media3.exoplayer;

import android.os.SystemClock;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class r3 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final androidx.media3.exoplayer.source.r.b f12542u = new androidx.media3.exoplayer.source.r.b(new Object());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.media3.common.e0 f12543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.media3.exoplayer.source.r.b f12544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f12545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f12546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ExoPlaybackException f12548f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f12549g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g2.z f12550h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final j2.f0 f12551i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f12552j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final androidx.media3.exoplayer.source.r.b f12553k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f12554l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f12555m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f12556n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final androidx.media3.common.z f12557o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f12558p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile long f12559q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile long f12560r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile long f12561s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile long f12562t;

    public r3(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j11, long j12, int i11, ExoPlaybackException exoPlaybackException, boolean z10, g2.z zVar, j2.f0 f0Var, List list, androidx.media3.exoplayer.source.r.b bVar2, boolean z11, int i12, int i13, androidx.media3.common.z zVar2, long j13, long j14, long j15, long j16, boolean z12) {
        this.f12543a = e0Var;
        this.f12544b = bVar;
        this.f12545c = j11;
        this.f12546d = j12;
        this.f12547e = i11;
        this.f12548f = exoPlaybackException;
        this.f12549g = z10;
        this.f12550h = zVar;
        this.f12551i = f0Var;
        this.f12552j = list;
        this.f12553k = bVar2;
        this.f12554l = z11;
        this.f12555m = i12;
        this.f12556n = i13;
        this.f12557o = zVar2;
        this.f12559q = j13;
        this.f12560r = j14;
        this.f12561s = j15;
        this.f12562t = j16;
        this.f12558p = z12;
    }

    public static r3 k(j2.f0 f0Var) {
        androidx.media3.common.e0 e0Var = androidx.media3.common.e0.f9925a;
        androidx.media3.exoplayer.source.r.b bVar = f12542u;
        return new r3(e0Var, bVar, C.TIME_UNSET, 0L, 1, null, false, g2.z.f63264d, f0Var, ImmutableList.of(), bVar, false, 1, 0, androidx.media3.common.z.f10563d, 0L, 0L, 0L, 0L, false);
    }

    public static androidx.media3.exoplayer.source.r.b l() {
        return f12542u;
    }

    public r3 a() {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, this.f12547e, this.f12548f, this.f12549g, this.f12550h, this.f12551i, this.f12552j, this.f12553k, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, this.f12560r, m(), SystemClock.elapsedRealtime(), this.f12558p);
    }

    public r3 b(boolean z10) {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, this.f12547e, this.f12548f, z10, this.f12550h, this.f12551i, this.f12552j, this.f12553k, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, this.f12560r, this.f12561s, this.f12562t, this.f12558p);
    }

    public r3 c(androidx.media3.exoplayer.source.r.b bVar) {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, this.f12547e, this.f12548f, this.f12549g, this.f12550h, this.f12551i, this.f12552j, bVar, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, this.f12560r, this.f12561s, this.f12562t, this.f12558p);
    }

    public r3 d(androidx.media3.exoplayer.source.r.b bVar, long j11, long j12, long j13, long j14, g2.z zVar, j2.f0 f0Var, List list) {
        return new r3(this.f12543a, bVar, j12, j13, this.f12547e, this.f12548f, this.f12549g, zVar, f0Var, list, this.f12553k, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, j14, j11, SystemClock.elapsedRealtime(), this.f12558p);
    }

    public r3 e(boolean z10, int i11, int i12) {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, this.f12547e, this.f12548f, this.f12549g, this.f12550h, this.f12551i, this.f12552j, this.f12553k, z10, i11, i12, this.f12557o, this.f12559q, this.f12560r, this.f12561s, this.f12562t, this.f12558p);
    }

    public r3 f(ExoPlaybackException exoPlaybackException) {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, this.f12547e, exoPlaybackException, this.f12549g, this.f12550h, this.f12551i, this.f12552j, this.f12553k, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, this.f12560r, this.f12561s, this.f12562t, this.f12558p);
    }

    public r3 g(androidx.media3.common.z zVar) {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, this.f12547e, this.f12548f, this.f12549g, this.f12550h, this.f12551i, this.f12552j, this.f12553k, this.f12554l, this.f12555m, this.f12556n, zVar, this.f12559q, this.f12560r, this.f12561s, this.f12562t, this.f12558p);
    }

    public r3 h(int i11) {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, i11, this.f12548f, this.f12549g, this.f12550h, this.f12551i, this.f12552j, this.f12553k, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, this.f12560r, this.f12561s, this.f12562t, this.f12558p);
    }

    public r3 i(boolean z10) {
        return new r3(this.f12543a, this.f12544b, this.f12545c, this.f12546d, this.f12547e, this.f12548f, this.f12549g, this.f12550h, this.f12551i, this.f12552j, this.f12553k, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, this.f12560r, this.f12561s, this.f12562t, z10);
    }

    public r3 j(androidx.media3.common.e0 e0Var) {
        return new r3(e0Var, this.f12544b, this.f12545c, this.f12546d, this.f12547e, this.f12548f, this.f12549g, this.f12550h, this.f12551i, this.f12552j, this.f12553k, this.f12554l, this.f12555m, this.f12556n, this.f12557o, this.f12559q, this.f12560r, this.f12561s, this.f12562t, this.f12558p);
    }

    public long m() {
        long j11;
        long j12;
        if (!n()) {
            return this.f12561s;
        }
        do {
            j11 = this.f12562t;
            j12 = this.f12561s;
        } while (j11 != this.f12562t);
        return androidx.media3.common.util.a1.R0(androidx.media3.common.util.a1.y1(j12) + ((long) ((SystemClock.elapsedRealtime() - j11) * this.f12557o.f10566a)));
    }

    public boolean n() {
        return this.f12547e == 3 && this.f12554l && this.f12556n == 0;
    }

    public void o(long j11) {
        this.f12561s = j11;
        this.f12562t = SystemClock.elapsedRealtime();
    }
}
