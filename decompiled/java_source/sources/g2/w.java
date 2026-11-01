package g2;

import android.net.Uri;
import androidx.media3.common.e0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class w extends e0 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Object f63248r = new Object();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final androidx.media3.common.t f63249s = new androidx.media3.common.t.c().d("SinglePeriodTimeline").i(Uri.EMPTY).a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f63250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f63251f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f63252g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f63253h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f63254i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f63255j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f63256k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f63257l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f63258m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f63259n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f63260o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.media3.common.t f63261p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.media3.common.t.g f63262q;

    public w(long j11, long j12, long j13, long j14, long j15, long j16, long j17, boolean z10, boolean z11, boolean z12, Object obj, androidx.media3.common.t tVar, androidx.media3.common.t.g gVar) {
        this.f63250e = j11;
        this.f63251f = j12;
        this.f63252g = j13;
        this.f63253h = j14;
        this.f63254i = j15;
        this.f63255j = j16;
        this.f63256k = j17;
        this.f63257l = z10;
        this.f63258m = z11;
        this.f63259n = z12;
        this.f63260o = obj;
        this.f63261p = (androidx.media3.common.t) androidx.media3.common.util.a.e(tVar);
        this.f63262q = gVar;
    }

    public w(long j11, long j12, long j13, long j14, boolean z10, boolean z11, boolean z12, Object obj, androidx.media3.common.t tVar) {
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j11, j12, j13, j14, z10, z11, false, obj, tVar, z12 ? tVar.f10213d : null);
    }

    public w(long j11, boolean z10, boolean z11, boolean z12, Object obj, androidx.media3.common.t tVar) {
        this(j11, j11, 0L, 0L, z10, z11, z12, obj, tVar);
    }

    @Override // androidx.media3.common.e0
    public int b(Object obj) {
        return f63248r.equals(obj) ? 0 : -1;
    }

    @Override // androidx.media3.common.e0
    public e0.b g(int i11, e0.b bVar, boolean z10) {
        androidx.media3.common.util.a.c(i11, 0, 1);
        return bVar.t(null, z10 ? f63248r : null, 0, this.f63253h, -this.f63255j);
    }

    @Override // androidx.media3.common.e0
    public int i() {
        return 1;
    }

    @Override // androidx.media3.common.e0
    public Object m(int i11) {
        androidx.media3.common.util.a.c(i11, 0, 1);
        return f63248r;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
  0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media3.common.e0
    public e0.c o(int i11, e0.c cVar, long j11) {
        long j12;
        androidx.media3.common.util.a.c(i11, 0, 1);
        long j13 = this.f63256k;
        boolean z10 = this.f63258m;
        if (!z10 || this.f63259n || j11 == 0) {
            j12 = j13;
        } else {
            long j14 = this.f63254i;
            if (j14 != C.TIME_UNSET) {
                j13 += j11;
                if (j13 <= j14) {
                    j12 = j13;
                }
            }
            j12 = -9223372036854775807L;
        }
        return cVar.g(e0.c.f9941q, this.f63261p, this.f63260o, this.f63250e, this.f63251f, this.f63252g, this.f63257l, z10, this.f63262q, j12, this.f63254i, 0, 0, this.f63255j);
    }

    @Override // androidx.media3.common.e0
    public int p() {
        return 1;
    }
}
