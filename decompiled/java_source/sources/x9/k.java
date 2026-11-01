package x9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final i f78124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f78125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f78126c;

    public static abstract class a extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f78127d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final long f78128e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List f78129f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f78130g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final long f78131h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final long f78132i;

        public a(i iVar, long j11, long j12, long j13, long j14, List list, long j15, long j16, long j17) {
            super(iVar, j11, j12);
            this.f78127d = j13;
            this.f78128e = j14;
            this.f78129f = list;
            this.f78132i = j15;
            this.f78130g = j16;
            this.f78131h = j17;
        }

        public long c(long j11, long j12) {
            long jG = g(j11);
            return jG != -1 ? jG : (int) (i((j12 - this.f78131h) + this.f78132i, j11) - d(j11, j12));
        }

        public long d(long j11, long j12) {
            if (g(j11) == -1) {
                long j13 = this.f78130g;
                if (j13 != C.TIME_UNSET) {
                    return Math.max(e(), i((j12 - this.f78131h) - j13, j11));
                }
            }
            return e();
        }

        public long e() {
            return this.f78127d;
        }

        public long f(long j11, long j12) {
            if (this.f78129f != null) {
                return C.TIME_UNSET;
            }
            long jD = d(j11, j12) + c(j11, j12);
            return (j(jD) + h(jD, j11)) - this.f78132i;
        }

        public abstract long g(long j11);

        public final long h(long j11, long j12) {
            List list = this.f78129f;
            if (list != null) {
                return (((d) list.get((int) (j11 - this.f78127d))).f78138b * 1000000) / this.f78125b;
            }
            long jG = g(j12);
            return (jG == -1 || j11 != (e() + jG) - 1) ? (this.f78128e * 1000000) / this.f78125b : j12 - j(j11);
        }

        public long i(long j11, long j12) {
            long jE = e();
            long jG = g(j12);
            if (jG == 0) {
                return jE;
            }
            if (this.f78129f == null) {
                long j13 = this.f78127d + (j11 / ((this.f78128e * 1000000) / this.f78125b));
                if (j13 < jE) {
                    return jE;
                }
                return jG == -1 ? j13 : Math.min(j13, (jE + jG) - 1);
            }
            long j14 = (jG + jE) - 1;
            long j15 = jE;
            while (j15 <= j14) {
                long j16 = ((j14 - j15) / 2) + j15;
                long j17 = j(j16);
                if (j17 < j11) {
                    j15 = j16 + 1;
                } else {
                    if (j17 <= j11) {
                        return j16;
                    }
                    j14 = j16 - 1;
                }
            }
            return j15 == jE ? j15 : j14;
        }

        public final long j(long j11) {
            List list = this.f78129f;
            return p0.N0(list != null ? ((d) list.get((int) (j11 - this.f78127d))).f78137a - this.f78126c : (j11 - this.f78127d) * this.f78128e, 1000000L, this.f78125b);
        }

        public abstract i k(j jVar, long j11);

        public boolean l() {
            return this.f78129f != null;
        }
    }

    public static final class b extends a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final List f78133j;

        public b(i iVar, long j11, long j12, long j13, long j14, List list, long j15, List list2, long j16, long j17) {
            super(iVar, j11, j12, j13, j14, list, j15, j16, j17);
            this.f78133j = list2;
        }

        @Override // x9.k.a
        public long g(long j11) {
            return this.f78133j.size();
        }

        @Override // x9.k.a
        public i k(j jVar, long j11) {
            return (i) this.f78133j.get((int) (j11 - this.f78127d));
        }

        @Override // x9.k.a
        public boolean l() {
            return true;
        }
    }

    public static final class c extends a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final n f78134j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final n f78135k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final long f78136l;

        public c(i iVar, long j11, long j12, long j13, long j14, long j15, List list, long j16, n nVar, n nVar2, long j17, long j18) {
            super(iVar, j11, j12, j13, j15, list, j16, j17, j18);
            this.f78134j = nVar;
            this.f78135k = nVar2;
            this.f78136l = j14;
        }

        @Override // x9.k
        public i a(j jVar) {
            n nVar = this.f78134j;
            if (nVar == null) {
                return super.a(jVar);
            }
            o1 o1Var = jVar.f78111b;
            return new i(nVar.a(o1Var.f25485a, 0L, o1Var.f25492h, 0L), 0L, -1L);
        }

        @Override // x9.k.a
        public long g(long j11) {
            List list = this.f78129f;
            if (list != null) {
                return list.size();
            }
            long j12 = this.f78136l;
            if (j12 != -1) {
                return (j12 - this.f78127d) + 1;
            }
            if (j11 != C.TIME_UNSET) {
                return com.google.common.math.a.a(BigInteger.valueOf(j11).multiply(BigInteger.valueOf(this.f78125b)), BigInteger.valueOf(this.f78128e).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
            }
            return -1L;
        }

        @Override // x9.k.a
        public i k(j jVar, long j11) {
            List list = this.f78129f;
            long j12 = list != null ? ((d) list.get((int) (j11 - this.f78127d))).f78137a : (j11 - this.f78127d) * this.f78128e;
            n nVar = this.f78135k;
            o1 o1Var = jVar.f78111b;
            return new i(nVar.a(o1Var.f25485a, j11, o1Var.f25492h, j12), 0L, -1L);
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f78137a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final long f78138b;

        public d(long j11, long j12) {
            this.f78137a = j11;
            this.f78138b = j12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f78137a == dVar.f78137a && this.f78138b == dVar.f78138b;
        }

        public int hashCode() {
            return (((int) this.f78137a) * 31) + ((int) this.f78138b);
        }
    }

    public static class e extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f78139d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final long f78140e;

        public e() {
            this(null, 1L, 0L, 0L, 0L);
        }

        public e(i iVar, long j11, long j12, long j13, long j14) {
            super(iVar, j11, j12);
            this.f78139d = j13;
            this.f78140e = j14;
        }

        public i c() {
            long j11 = this.f78140e;
            if (j11 <= 0) {
                return null;
            }
            return new i(null, this.f78139d, j11);
        }
    }

    public k(i iVar, long j11, long j12) {
        this.f78124a = iVar;
        this.f78125b = j11;
        this.f78126c = j12;
    }

    public i a(j jVar) {
        return this.f78124a;
    }

    public long b() {
        return p0.N0(this.f78126c, 1000000L, this.f78125b);
    }
}
