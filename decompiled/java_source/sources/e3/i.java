package e3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.i0;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes2.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i0.a f61537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f61538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f61539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f61540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f61541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f61542f;

    private i(i0.a aVar, long j11, long j12, long[] jArr, int i11, int i12) {
        this.f61537a = new i0.a(aVar);
        this.f61538b = j11;
        this.f61539c = j12;
        this.f61542f = jArr;
        this.f61540d = i11;
        this.f61541e = i12;
    }

    public static i b(i0.a aVar, j0 j0Var) {
        long[] jArr;
        int i11;
        int i12;
        int iQ = j0Var.q();
        int iL = (iQ & 1) != 0 ? j0Var.L() : -1;
        long J = (iQ & 2) != 0 ? j0Var.J() : -1L;
        if ((iQ & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i13 = 0; i13 < 100; i13++) {
                jArr2[i13] = j0Var.H();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((iQ & 8) != 0) {
            j0Var.X(4);
        }
        if (j0Var.a() >= 24) {
            j0Var.X(21);
            int iK = j0Var.K();
            i12 = iK & UnixStat.PERM_MASK;
            i11 = (16773120 & iK) >> 12;
        } else {
            i11 = -1;
            i12 = -1;
        }
        return new i(aVar, iL, J, jArr, i11, i12);
    }

    public long a() {
        long j11 = this.f61538b;
        if (j11 == -1 || j11 == 0) {
            return C.TIME_UNSET;
        }
        i0.a aVar = this.f61537a;
        return a1.d1((j11 * ((long) aVar.f68612g)) - 1, aVar.f68609d);
    }
}
