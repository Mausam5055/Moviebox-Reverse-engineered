package s3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
final class h0 extends l2.e {

    private static final class a implements l2.e.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final p0 f74949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.common.util.j0 f74950b = new androidx.media3.common.util.j0();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f74951c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f74952d;

        public a(int i11, p0 p0Var, int i12) {
            this.f74951c = i11;
            this.f74949a = p0Var;
            this.f74952d = i12;
        }

        private l2.e.C0825e c(androidx.media3.common.util.j0 j0Var, long j11, long j12) {
            int iA;
            int iA2;
            int iG = j0Var.g();
            long j13 = -1;
            long j14 = -1;
            long j15 = -9223372036854775807L;
            while (j0Var.a() >= 188 && (iA2 = (iA = m0.a(j0Var.e(), j0Var.f(), iG)) + 188) <= iG) {
                long jC = m0.c(j0Var, iA, this.f74951c);
                if (jC != C.TIME_UNSET) {
                    long jB = this.f74949a.b(jC);
                    if (jB > j11) {
                        return j15 == C.TIME_UNSET ? l2.e.C0825e.d(jB, j12) : l2.e.C0825e.e(j12 + j14);
                    }
                    if (100000 + jB > j11) {
                        return l2.e.C0825e.e(j12 + ((long) iA));
                    }
                    j14 = iA;
                    j15 = jB;
                }
                j0Var.W(iA2);
                j13 = iA2;
            }
            return j15 != C.TIME_UNSET ? l2.e.C0825e.f(j15, j12 + j13) : l2.e.C0825e.f68560d;
        }

        @Override // l2.e.f
        public void a() {
            this.f74950b.T(a1.f10355f);
        }

        @Override // l2.e.f
        public l2.e.C0825e b(l2.s sVar, long j11) {
            long position = sVar.getPosition();
            int iMin = (int) Math.min(this.f74952d, sVar.getLength() - position);
            this.f74950b.S(iMin);
            sVar.peekFully(this.f74950b.e(), 0, iMin);
            return c(this.f74950b, j11, position);
        }
    }

    public h0(p0 p0Var, long j11, long j12, int i11, int i12) {
        super(new l2.e.b(), new a(i11, p0Var, i12), j11, 0L, j11 + 1, 0L, j12, 188L, 940);
    }
}
