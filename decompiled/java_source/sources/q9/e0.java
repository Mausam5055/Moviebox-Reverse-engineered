package q9;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
final class e0 extends g9.a {

    private static final class a implements g9.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l0 f73223a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.d0 f73224b = new com.google.android.exoplayer2.util.d0();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f73225c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f73226d;

        public a(int i11, l0 l0Var, int i12) {
            this.f73225c = i11;
            this.f73223a = l0Var;
            this.f73226d = i12;
        }

        private g9.a.e c(com.google.android.exoplayer2.util.d0 d0Var, long j11, long j12) {
            int iA;
            int iA2;
            int iF = d0Var.f();
            long j13 = -1;
            long j14 = -1;
            long j15 = -9223372036854775807L;
            while (d0Var.a() >= 188 && (iA2 = (iA = j0.a(d0Var.d(), d0Var.e(), iF)) + 188) <= iF) {
                long jC = j0.c(d0Var, iA, this.f73225c);
                if (jC != C.TIME_UNSET) {
                    long jB = this.f73223a.b(jC);
                    if (jB > j11) {
                        return j15 == C.TIME_UNSET ? g9.a.e.d(jB, j12) : g9.a.e.e(j12 + j14);
                    }
                    if (100000 + jB > j11) {
                        return g9.a.e.e(j12 + ((long) iA));
                    }
                    j14 = iA;
                    j15 = jB;
                }
                d0Var.P(iA2);
                j13 = iA2;
            }
            return j15 != C.TIME_UNSET ? g9.a.e.f(j15, j12 + j13) : g9.a.e.f63365d;
        }

        @Override // g9.a.f
        public void a() {
            this.f73224b.M(p0.f27631f);
        }

        @Override // g9.a.f
        public g9.a.e b(g9.m mVar, long j11) {
            long position = mVar.getPosition();
            int iMin = (int) Math.min(this.f73226d, mVar.getLength() - position);
            this.f73224b.L(iMin);
            mVar.peekFully(this.f73224b.d(), 0, iMin);
            return c(this.f73224b, j11, position);
        }
    }

    public e0(l0 l0Var, long j11, long j12, int i11, int i12) {
        super(new g9.a.b(), new a(i11, l0Var, i12), j11, 0L, j11 + 1, 0L, j12, 188L, 940);
    }
}
