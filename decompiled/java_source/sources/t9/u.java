package t9;

import android.net.Uri;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class u extends k3 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Object f76148p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final v1 f76149q = new v1.c().d("SinglePeriodTimeline").i(Uri.EMPTY).a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f76150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f76151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f76152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f76153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f76154g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f76155h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f76156i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f76157j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f76158k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f76159l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Object f76160m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final v1 f76161n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final v1.g f76162o;

    public u(long j11, long j12, long j13, long j14, long j15, long j16, long j17, boolean z10, boolean z11, boolean z12, Object obj, v1 v1Var, v1.g gVar) {
        this.f76150c = j11;
        this.f76151d = j12;
        this.f76152e = j13;
        this.f76153f = j14;
        this.f76154g = j15;
        this.f76155h = j16;
        this.f76156i = j17;
        this.f76157j = z10;
        this.f76158k = z11;
        this.f76159l = z12;
        this.f76160m = obj;
        this.f76161n = (v1) com.google.android.exoplayer2.util.a.e(v1Var);
        this.f76162o = gVar;
    }

    public u(long j11, long j12, long j13, long j14, boolean z10, boolean z11, boolean z12, Object obj, v1 v1Var) {
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j11, j12, j13, j14, z10, z11, false, obj, v1Var, z12 ? v1Var.f27711d : null);
    }

    public u(long j11, boolean z10, boolean z11, boolean z12, Object obj, v1 v1Var) {
        this(j11, j11, 0L, 0L, z10, z11, z12, obj, v1Var);
    }

    @Override // com.google.android.exoplayer2.k3
    public int f(Object obj) {
        return f76148p.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.k3
    public k3.b k(int i11, k3.b bVar, boolean z10) {
        com.google.android.exoplayer2.util.a.c(i11, 0, 1);
        return bVar.v(null, z10 ? f76148p : null, 0, this.f76153f, -this.f76155h);
    }

    @Override // com.google.android.exoplayer2.k3
    public int m() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.k3
    public Object q(int i11) {
        com.google.android.exoplayer2.util.a.c(i11, 0, 1);
        return f76148p;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
  0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.exoplayer2.k3
    public k3.d s(int i11, k3.d dVar, long j11) {
        long j12;
        com.google.android.exoplayer2.util.a.c(i11, 0, 1);
        long j13 = this.f76156i;
        boolean z10 = this.f76158k;
        if (!z10 || this.f76159l || j11 == 0) {
            j12 = j13;
        } else {
            long j14 = this.f76154g;
            if (j14 != C.TIME_UNSET) {
                j13 += j11;
                if (j13 <= j14) {
                    j12 = j13;
                }
            }
            j12 = -9223372036854775807L;
        }
        return dVar.k(k3.d.f25165r, this.f76161n, this.f76160m, this.f76150c, this.f76151d, this.f76152e, this.f76157j, z10, this.f76162o, j12, this.f76154g, 0, 0, this.f76155h);
    }

    @Override // com.google.android.exoplayer2.k3
    public int t() {
        return 1;
    }
}
