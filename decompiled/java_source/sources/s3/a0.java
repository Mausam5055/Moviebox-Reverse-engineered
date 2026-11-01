package s3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
final class a0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f74862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f74863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74864e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p0 f74860a = new p0(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f74865f = C.TIME_UNSET;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f74866g = C.TIME_UNSET;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f74867h = C.TIME_UNSET;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74861b = new androidx.media3.common.util.j0();

    a0() {
    }

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int b(l2.s sVar) {
        this.f74861b.T(a1.f10355f);
        this.f74862c = true;
        sVar.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i11) {
        return (bArr[i11 + 3] & 255) | ((bArr[i11] & 255) << 24) | ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11 + 2] & 255) << 8);
    }

    private int h(l2.s sVar, l2.l0 l0Var) {
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, sVar.getLength());
        long j11 = 0;
        if (sVar.getPosition() != j11) {
            l0Var.f68620a = j11;
            return 1;
        }
        this.f74861b.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f74861b.e(), 0, iMin);
        this.f74865f = i(this.f74861b);
        this.f74863d = true;
        return 0;
    }

    private long i(androidx.media3.common.util.j0 j0Var) {
        int iG = j0Var.g();
        for (int iF = j0Var.f(); iF < iG - 3; iF++) {
            if (f(j0Var.e(), iF) == 442) {
                j0Var.W(iF + 4);
                long jL = l(j0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int j(l2.s sVar, l2.l0 l0Var) {
        long length = sVar.getLength();
        int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, length);
        long j11 = length - ((long) iMin);
        if (sVar.getPosition() != j11) {
            l0Var.f68620a = j11;
            return 1;
        }
        this.f74861b.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f74861b.e(), 0, iMin);
        this.f74866g = k(this.f74861b);
        this.f74864e = true;
        return 0;
    }

    private long k(androidx.media3.common.util.j0 j0Var) {
        int iF = j0Var.f();
        for (int iG = j0Var.g() - 4; iG >= iF; iG--) {
            if (f(j0Var.e(), iG) == 442) {
                j0Var.W(iG + 4);
                long jL = l(j0Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public static long l(androidx.media3.common.util.j0 j0Var) {
        int iF = j0Var.f();
        if (j0Var.a() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        j0Var.l(bArr, 0, 9);
        j0Var.W(iF);
        return !a(bArr) ? C.TIME_UNSET : m(bArr);
    }

    private static long m(byte[] bArr) {
        byte b11 = bArr[0];
        long j11 = (((((long) b11) & 56) >> 3) << 30) | ((((long) b11) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
        byte b12 = bArr[2];
        return j11 | (((((long) b12) & 248) >> 3) << 15) | ((((long) b12) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public long c() {
        return this.f74867h;
    }

    public p0 d() {
        return this.f74860a;
    }

    public boolean e() {
        return this.f74862c;
    }

    public int g(l2.s sVar, l2.l0 l0Var) {
        if (!this.f74864e) {
            return j(sVar, l0Var);
        }
        if (this.f74866g == C.TIME_UNSET) {
            return b(sVar);
        }
        if (!this.f74863d) {
            return h(sVar, l0Var);
        }
        long j11 = this.f74865f;
        if (j11 == C.TIME_UNSET) {
            return b(sVar);
        }
        this.f74867h = this.f74860a.c(this.f74866g) - this.f74860a.b(j11);
        return b(sVar);
    }
}
