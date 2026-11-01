package q9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
final class x extends g9.a {

    private static final class b implements g9.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l0 f73527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.d0 f73528b;

        private b(l0 l0Var) {
            this.f73527a = l0Var;
            this.f73528b = new com.google.android.exoplayer2.util.d0();
        }

        private g9.a.e c(com.google.android.exoplayer2.util.d0 d0Var, long j11, long j12) {
            int iE = -1;
            int iE2 = -1;
            long j13 = -9223372036854775807L;
            while (d0Var.a() >= 4) {
                if (x.k(d0Var.d(), d0Var.e()) != 442) {
                    d0Var.Q(1);
                } else {
                    d0Var.Q(4);
                    long jL = y.l(d0Var);
                    if (jL != C.TIME_UNSET) {
                        long jB = this.f73527a.b(jL);
                        if (jB > j11) {
                            return j13 == C.TIME_UNSET ? g9.a.e.d(jB, j12) : g9.a.e.e(j12 + ((long) iE2));
                        }
                        if (100000 + jB > j11) {
                            return g9.a.e.e(j12 + ((long) d0Var.e()));
                        }
                        iE2 = d0Var.e();
                        j13 = jB;
                    }
                    d(d0Var);
                    iE = d0Var.e();
                }
            }
            return j13 != C.TIME_UNSET ? g9.a.e.f(j13, j12 + ((long) iE)) : g9.a.e.f63365d;
        }

        private static void d(com.google.android.exoplayer2.util.d0 d0Var) {
            int iK;
            int iF = d0Var.f();
            if (d0Var.a() < 10) {
                d0Var.P(iF);
                return;
            }
            d0Var.Q(9);
            int iD = d0Var.D() & 7;
            if (d0Var.a() < iD) {
                d0Var.P(iF);
                return;
            }
            d0Var.Q(iD);
            if (d0Var.a() < 4) {
                d0Var.P(iF);
                return;
            }
            if (x.k(d0Var.d(), d0Var.e()) == 443) {
                d0Var.Q(4);
                int iJ = d0Var.J();
                if (d0Var.a() < iJ) {
                    d0Var.P(iF);
                    return;
                }
                d0Var.Q(iJ);
            }
            while (d0Var.a() >= 4 && (iK = x.k(d0Var.d(), d0Var.e())) != 442 && iK != 441 && (iK >>> 8) == 1) {
                d0Var.Q(4);
                if (d0Var.a() < 2) {
                    d0Var.P(iF);
                    return;
                }
                d0Var.P(Math.min(d0Var.f(), d0Var.e() + d0Var.J()));
            }
        }

        @Override // g9.a.f
        public void a() {
            this.f73528b.M(p0.f27631f);
        }

        @Override // g9.a.f
        public g9.a.e b(g9.m mVar, long j11) {
            long position = mVar.getPosition();
            int iMin = (int) Math.min(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, mVar.getLength() - position);
            this.f73528b.L(iMin);
            mVar.peekFully(this.f73528b.d(), 0, iMin);
            return c(this.f73528b, j11, position);
        }
    }

    public x(l0 l0Var, long j11, long j12) {
        super(new g9.a.b(), new b(l0Var), j11, 0L, j11 + 1, 0L, j12, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i11) {
        return (bArr[i11 + 3] & 255) | ((bArr[i11] & 255) << 24) | ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11 + 2] & 255) << 8);
    }
}
