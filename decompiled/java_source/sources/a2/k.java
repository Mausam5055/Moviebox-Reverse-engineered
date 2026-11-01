package a2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final i f109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f111c;

    public static abstract class a extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f112d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final long f113e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List f114f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f115g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final long f116h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final long f117i;

        public a(i iVar, long j11, long j12, long j13, long j14, List list, long j15, long j16, long j17) {
            super(iVar, j11, j12);
            this.f112d = j13;
            this.f113e = j14;
            this.f114f = list;
            this.f117i = j15;
            this.f115g = j16;
            this.f116h = j17;
        }

        public long c(long j11, long j12) {
            long jG = g(j11);
            return jG != -1 ? jG : (int) (i((j12 - this.f116h) + this.f117i, j11) - d(j11, j12));
        }

        public long d(long j11, long j12) {
            if (g(j11) == -1) {
                long j13 = this.f115g;
                if (j13 != C.TIME_UNSET) {
                    return Math.max(e(), i((j12 - this.f116h) - j13, j11));
                }
            }
            return e();
        }

        public long e() {
            return this.f112d;
        }

        public long f(long j11, long j12) {
            if (this.f114f != null) {
                return C.TIME_UNSET;
            }
            long jD = d(j11, j12) + c(j11, j12);
            return (j(jD) + h(jD, j11)) - this.f117i;
        }

        public abstract long g(long j11);

        public final long h(long j11, long j12) {
            List list = this.f114f;
            if (list != null) {
                return (((d) list.get((int) (j11 - this.f112d))).f123b * 1000000) / this.f110b;
            }
            long jG = g(j12);
            return (jG == -1 || j11 != (e() + jG) - 1) ? (this.f113e * 1000000) / this.f110b : j12 - j(j11);
        }

        public long i(long j11, long j12) {
            long jE = e();
            long jG = g(j12);
            if (jG == 0) {
                return jE;
            }
            if (this.f114f == null) {
                long j13 = this.f112d + (j11 / ((this.f113e * 1000000) / this.f110b));
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
            List list = this.f114f;
            return a1.e1(list != null ? ((d) list.get((int) (j11 - this.f112d))).f122a - this.f111c : (j11 - this.f112d) * this.f113e, 1000000L, this.f110b);
        }

        public abstract i k(j jVar, long j11);

        public boolean l() {
            return this.f114f != null;
        }
    }

    public static final class b extends a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final List f118j;

        public b(i iVar, long j11, long j12, long j13, long j14, List list, long j15, List list2, long j16, long j17) {
            super(iVar, j11, j12, j13, j14, list, j15, j16, j17);
            this.f118j = list2;
        }

        @Override // a2.k.a
        public long g(long j11) {
            return this.f118j.size();
        }

        @Override // a2.k.a
        public i k(j jVar, long j11) {
            return (i) this.f118j.get((int) (j11 - this.f112d));
        }

        @Override // a2.k.a
        public boolean l() {
            return true;
        }
    }

    public static final class c extends a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final n f119j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final n f120k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final long f121l;

        public c(i iVar, long j11, long j12, long j13, long j14, long j15, List list, long j16, n nVar, n nVar2, long j17, long j18) {
            super(iVar, j11, j12, j13, j15, list, j16, j17, j18);
            this.f119j = nVar;
            this.f120k = nVar2;
            this.f121l = j14;
        }

        @Override // a2.k
        public i a(j jVar) {
            n nVar = this.f119j;
            if (nVar == null) {
                return super.a(jVar);
            }
            r rVar = jVar.f96b;
            return new i(nVar.a(rVar.f10147a, 0L, rVar.f10156j, 0L), 0L, -1L);
        }

        @Override // a2.k.a
        public long g(long j11) {
            List list = this.f114f;
            if (list != null) {
                return list.size();
            }
            long j12 = this.f121l;
            if (j12 != -1) {
                return (j12 - this.f112d) + 1;
            }
            if (j11 != C.TIME_UNSET) {
                return com.google.common.math.a.a(BigInteger.valueOf(j11).multiply(BigInteger.valueOf(this.f110b)), BigInteger.valueOf(this.f113e).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
            }
            return -1L;
        }

        @Override // a2.k.a
        public i k(j jVar, long j11) {
            List list = this.f114f;
            long j12 = list != null ? ((d) list.get((int) (j11 - this.f112d))).f122a : (j11 - this.f112d) * this.f113e;
            n nVar = this.f120k;
            r rVar = jVar.f96b;
            return new i(nVar.a(rVar.f10147a, j11, rVar.f10156j, j12), 0L, -1L);
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f122a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final long f123b;

        public d(long j11, long j12) {
            this.f122a = j11;
            this.f123b = j12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f122a == dVar.f122a && this.f123b == dVar.f123b;
        }

        public int hashCode() {
            return (((int) this.f122a) * 31) + ((int) this.f123b);
        }
    }

    public static class e extends k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f124d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final long f125e;

        public e() {
            this(null, 1L, 0L, 0L, 0L);
        }

        public e(i iVar, long j11, long j12, long j13, long j14) {
            super(iVar, j11, j12);
            this.f124d = j13;
            this.f125e = j14;
        }

        public i c() {
            long j11 = this.f125e;
            if (j11 <= 0) {
                return null;
            }
            return new i(null, this.f124d, j11);
        }
    }

    public k(i iVar, long j11, long j12) {
        this.f109a = iVar;
        this.f110b = j11;
        this.f111c = j12;
    }

    public i a(j jVar) {
        return this.f109a;
    }

    public long b() {
        return a1.e1(this.f111c, 1000000L, this.f110b);
    }
}
