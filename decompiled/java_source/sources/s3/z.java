package s3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
final class z extends l2.e {

    private static final class b implements l2.e.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final p0 f75279a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.common.util.j0 f75280b;

        private b(p0 p0Var) {
            this.f75279a = p0Var;
            this.f75280b = new androidx.media3.common.util.j0();
        }

        private l2.e.C0825e c(androidx.media3.common.util.j0 j0Var, long j11, long j12) {
            int iF = -1;
            int iF2 = -1;
            long j13 = -9223372036854775807L;
            while (j0Var.a() >= 4) {
                if (z.k(j0Var.e(), j0Var.f()) != 442) {
                    j0Var.X(1);
                } else {
                    j0Var.X(4);
                    long jL = a0.l(j0Var);
                    if (jL != C.TIME_UNSET) {
                        long jB = this.f75279a.b(jL);
                        if (jB > j11) {
                            return j13 == C.TIME_UNSET ? l2.e.C0825e.d(jB, j12) : l2.e.C0825e.e(j12 + ((long) iF2));
                        }
                        if (100000 + jB > j11) {
                            return l2.e.C0825e.e(j12 + ((long) j0Var.f()));
                        }
                        iF2 = j0Var.f();
                        j13 = jB;
                    }
                    d(j0Var);
                    iF = j0Var.f();
                }
            }
            return j13 != C.TIME_UNSET ? l2.e.C0825e.f(j13, j12 + ((long) iF)) : l2.e.C0825e.f68560d;
        }

        private static void d(androidx.media3.common.util.j0 j0Var) {
            int iK;
            int iG = j0Var.g();
            if (j0Var.a() < 10) {
                j0Var.W(iG);
                return;
            }
            j0Var.X(9);
            int iH = j0Var.H() & 7;
            if (j0Var.a() < iH) {
                j0Var.W(iG);
                return;
            }
            j0Var.X(iH);
            if (j0Var.a() < 4) {
                j0Var.W(iG);
                return;
            }
            if (z.k(j0Var.e(), j0Var.f()) == 443) {
                j0Var.X(4);
                int iP = j0Var.P();
                if (j0Var.a() < iP) {
                    j0Var.W(iG);
                    return;
                }
                j0Var.X(iP);
            }
            while (j0Var.a() >= 4 && (iK = z.k(j0Var.e(), j0Var.f())) != 442 && iK != 441 && (iK >>> 8) == 1) {
                j0Var.X(4);
                if (j0Var.a() < 2) {
                    j0Var.W(iG);
                    return;
                }
                j0Var.W(Math.min(j0Var.g(), j0Var.f() + j0Var.P()));
            }
        }

        @Override // l2.e.f
        public void a() {
            this.f75280b.T(a1.f10355f);
        }

        @Override // l2.e.f
        public l2.e.C0825e b(l2.s sVar, long j11) {
            long position = sVar.getPosition();
            int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, sVar.getLength() - position);
            this.f75280b.S(iMin);
            sVar.peekFully(this.f75280b.e(), 0, iMin);
            return c(this.f75280b, j11, position);
        }
    }

    public z(p0 p0Var, long j11, long j12) {
        super(new l2.e.b(), new b(p0Var), j11, 0L, j11 + 1, 0L, j12, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i11) {
        return (bArr[i11 + 3] & 255) | ((bArr[i11] & 255) << 24) | ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11 + 2] & 255) << 8);
    }
}
