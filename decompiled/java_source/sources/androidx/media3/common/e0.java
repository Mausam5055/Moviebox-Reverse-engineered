package androidx.media3.common;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f9925a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f9926b = a1.C0(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f9927c = a1.C0(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f9928d = a1.C0(2);

    class a extends e0 {
        a() {
        }

        @Override // androidx.media3.common.e0
        public int b(Object obj) {
            return -1;
        }

        @Override // androidx.media3.common.e0
        public b g(int i11, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.e0
        public int i() {
            return 0;
        }

        @Override // androidx.media3.common.e0
        public Object m(int i11) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.e0
        public c o(int i11, c cVar, long j11) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.e0
        public int p() {
            return 0;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final String f9929h = a1.C0(0);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f9930i = a1.C0(1);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f9931j = a1.C0(2);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final String f9932k = a1.C0(3);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f9933l = a1.C0(4);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f9934a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f9935b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f9936c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f9937d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f9938e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f9939f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public androidx.media3.common.b f9940g = androidx.media3.common.b.f9873g;

        public int a(int i11) {
            return this.f9940g.a(i11).f9897b;
        }

        public long b(int i11, int i12) {
            androidx.media3.common.b.a aVarA = this.f9940g.a(i11);
            return aVarA.f9897b != -1 ? aVarA.f9902g[i12] : C.TIME_UNSET;
        }

        public int c() {
            return this.f9940g.f9880b;
        }

        public int d(long j11) {
            return this.f9940g.b(j11, this.f9937d);
        }

        public int e(long j11) {
            return this.f9940g.c(j11, this.f9937d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return Objects.equals(this.f9934a, bVar.f9934a) && Objects.equals(this.f9935b, bVar.f9935b) && this.f9936c == bVar.f9936c && this.f9937d == bVar.f9937d && this.f9938e == bVar.f9938e && this.f9939f == bVar.f9939f && Objects.equals(this.f9940g, bVar.f9940g);
        }

        public long f(int i11) {
            return this.f9940g.a(i11).f9896a;
        }

        public long g() {
            return this.f9940g.f9881c;
        }

        public int h(int i11, int i12) {
            androidx.media3.common.b.a aVarA = this.f9940g.a(i11);
            if (aVarA.f9897b != -1) {
                return aVarA.f9901f[i12];
            }
            return 0;
        }

        public int hashCode() {
            Object obj = this.f9934a;
            int iHashCode = (Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f9935b;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f9936c) * 31;
            long j11 = this.f9937d;
            int i11 = (iHashCode2 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f9938e;
            return ((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f9939f ? 1 : 0)) * 31) + this.f9940g.hashCode();
        }

        public long i(int i11) {
            return this.f9940g.a(i11).f9904i;
        }

        public long j() {
            return a1.y1(this.f9937d);
        }

        public long k() {
            return this.f9937d;
        }

        public int l(int i11) {
            return this.f9940g.a(i11).c();
        }

        public int m(int i11, int i12) {
            return this.f9940g.a(i11).d(i12);
        }

        public long n() {
            return a1.y1(this.f9938e);
        }

        public long o() {
            return this.f9938e;
        }

        public int p() {
            return this.f9940g.f9883e;
        }

        public boolean q(int i11) {
            return !this.f9940g.a(i11).e();
        }

        public boolean r(int i11) {
            return i11 == c() - 1 && this.f9940g.d(i11);
        }

        public boolean s(int i11) {
            return this.f9940g.a(i11).f9905j;
        }

        public b t(Object obj, Object obj2, int i11, long j11, long j12) {
            return u(obj, obj2, i11, j11, j12, androidx.media3.common.b.f9873g, false);
        }

        public b u(Object obj, Object obj2, int i11, long j11, long j12, androidx.media3.common.b bVar, boolean z10) {
            this.f9934a = obj;
            this.f9935b = obj2;
            this.f9936c = i11;
            this.f9937d = j11;
            this.f9938e = j12;
            this.f9940g = bVar;
            this.f9939f = z10;
            return this;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f9952b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Object f9954d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f9955e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f9956f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f9957g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f9958h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f9959i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public t.g f9960j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f9961k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f9962l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public long f9963m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f9964n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f9965o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public long f9966p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final Object f9941q = new Object();

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static final Object f9942r = new Object();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static final t f9943s = new t.c().d("androidx.media3.common.Timeline").i(Uri.EMPTY).a();

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static final String f9944t = a1.C0(1);

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private static final String f9945u = a1.C0(2);

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private static final String f9946v = a1.C0(3);

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private static final String f9947w = a1.C0(4);

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private static final String f9948x = a1.C0(5);

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private static final String f9949y = a1.C0(6);

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static final String f9950z = a1.C0(7);
        private static final String A = a1.C0(8);
        private static final String B = a1.C0(9);
        private static final String C = a1.C0(10);
        private static final String D = a1.C0(11);
        private static final String E = a1.C0(12);
        private static final String F = a1.C0(13);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f9951a = f9941q;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public t f9953c = f9943s;

        public long a() {
            return a1.h0(this.f9957g);
        }

        public long b() {
            return a1.y1(this.f9962l);
        }

        public long c() {
            return this.f9962l;
        }

        public long d() {
            return a1.y1(this.f9963m);
        }

        public long e() {
            return this.f9966p;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !c.class.equals(obj.getClass())) {
                return false;
            }
            c cVar = (c) obj;
            return Objects.equals(this.f9951a, cVar.f9951a) && Objects.equals(this.f9953c, cVar.f9953c) && Objects.equals(this.f9954d, cVar.f9954d) && Objects.equals(this.f9960j, cVar.f9960j) && this.f9955e == cVar.f9955e && this.f9956f == cVar.f9956f && this.f9957g == cVar.f9957g && this.f9958h == cVar.f9958h && this.f9959i == cVar.f9959i && this.f9961k == cVar.f9961k && this.f9962l == cVar.f9962l && this.f9963m == cVar.f9963m && this.f9964n == cVar.f9964n && this.f9965o == cVar.f9965o && this.f9966p == cVar.f9966p;
        }

        public boolean f() {
            return this.f9960j != null;
        }

        public c g(Object obj, t tVar, Object obj2, long j11, long j12, long j13, boolean z10, boolean z11, t.g gVar, long j14, long j15, int i11, int i12, long j16) {
            t.h hVar;
            this.f9951a = obj;
            this.f9953c = tVar != null ? tVar : f9943s;
            this.f9952b = (tVar == null || (hVar = tVar.f10211b) == null) ? null : hVar.f10310h;
            this.f9954d = obj2;
            this.f9955e = j11;
            this.f9956f = j12;
            this.f9957g = j13;
            this.f9958h = z10;
            this.f9959i = z11;
            this.f9960j = gVar;
            this.f9962l = j14;
            this.f9963m = j15;
            this.f9964n = i11;
            this.f9965o = i12;
            this.f9966p = j16;
            this.f9961k = false;
            return this;
        }

        public int hashCode() {
            int iHashCode = (((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f9951a.hashCode()) * 31) + this.f9953c.hashCode()) * 31;
            Object obj = this.f9954d;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            t.g gVar = this.f9960j;
            int iHashCode3 = (iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
            long j11 = this.f9955e;
            int i11 = (iHashCode3 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f9956f;
            int i12 = (i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            long j13 = this.f9957g;
            int i13 = (((((((i12 + ((int) (j13 ^ (j13 >>> 32)))) * 31) + (this.f9958h ? 1 : 0)) * 31) + (this.f9959i ? 1 : 0)) * 31) + (this.f9961k ? 1 : 0)) * 31;
            long j14 = this.f9962l;
            int i14 = (i13 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
            long j15 = this.f9963m;
            int i15 = (((((i14 + ((int) (j15 ^ (j15 >>> 32)))) * 31) + this.f9964n) * 31) + this.f9965o) * 31;
            long j16 = this.f9966p;
            return i15 + ((int) (j16 ^ (j16 >>> 32)));
        }
    }

    protected e0() {
    }

    public int a(boolean z10) {
        return q() ? -1 : 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z10) {
        if (q()) {
            return -1;
        }
        return p() - 1;
    }

    public final int d(int i11, b bVar, c cVar, int i12, boolean z10) {
        int i13 = f(i11, bVar).f9936c;
        if (n(i13, cVar).f9965o != i11) {
            return i11 + 1;
        }
        int iE = e(i13, i12, z10);
        if (iE == -1) {
            return -1;
        }
        return n(iE, cVar).f9964n;
    }

    public int e(int i11, int i12, boolean z10) {
        if (i12 == 0) {
            if (i11 == c(z10)) {
                return -1;
            }
            return i11 + 1;
        }
        if (i12 == 1) {
            return i11;
        }
        if (i12 == 2) {
            return i11 == c(z10) ? a(z10) : i11 + 1;
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        int iC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        if (e0Var.p() != p() || e0Var.i() != i()) {
            return false;
        }
        c cVar = new c();
        b bVar = new b();
        c cVar2 = new c();
        b bVar2 = new b();
        for (int i11 = 0; i11 < p(); i11++) {
            if (!n(i11, cVar).equals(e0Var.n(i11, cVar2))) {
                return false;
            }
        }
        for (int i12 = 0; i12 < i(); i12++) {
            if (!g(i12, bVar, true).equals(e0Var.g(i12, bVar2, true))) {
                return false;
            }
        }
        int iA = a(true);
        if (iA != e0Var.a(true) || (iC = c(true)) != e0Var.c(true)) {
            return false;
        }
        while (iA != iC) {
            int iE = e(iA, 0, true);
            if (iE != e0Var.e(iA, 0, true)) {
                return false;
            }
            iA = iE;
        }
        return true;
    }

    public final b f(int i11, b bVar) {
        return g(i11, bVar, false);
    }

    public abstract b g(int i11, b bVar, boolean z10);

    public b h(Object obj, b bVar) {
        return g(b(obj), bVar, true);
    }

    public int hashCode() {
        c cVar = new c();
        b bVar = new b();
        int iP = Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + p();
        for (int i11 = 0; i11 < p(); i11++) {
            iP = (iP * 31) + n(i11, cVar).hashCode();
        }
        int i12 = (iP * 31) + i();
        for (int i13 = 0; i13 < i(); i13++) {
            i12 = (i12 * 31) + g(i13, bVar, true).hashCode();
        }
        int iA = a(true);
        while (iA != -1) {
            i12 = (i12 * 31) + iA;
            iA = e(iA, 0, true);
        }
        return i12;
    }

    public abstract int i();

    public final Pair j(c cVar, b bVar, int i11, long j11) {
        return (Pair) androidx.media3.common.util.a.e(k(cVar, bVar, i11, j11, 0L));
    }

    public final Pair k(c cVar, b bVar, int i11, long j11, long j12) {
        androidx.media3.common.util.a.c(i11, 0, p());
        o(i11, cVar, j12);
        if (j11 == C.TIME_UNSET) {
            j11 = cVar.c();
            if (j11 == C.TIME_UNSET) {
                return null;
            }
        }
        int i12 = cVar.f9964n;
        f(i12, bVar);
        while (i12 < cVar.f9965o && bVar.f9938e != j11) {
            int i13 = i12 + 1;
            if (f(i13, bVar).f9938e > j11) {
                break;
            }
            i12 = i13;
        }
        g(i12, bVar, true);
        long jMin = j11 - bVar.f9938e;
        long j13 = bVar.f9937d;
        if (j13 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j13 - 1);
        }
        return Pair.create(androidx.media3.common.util.a.e(bVar.f9935b), Long.valueOf(Math.max(0L, jMin)));
    }

    public int l(int i11, int i12, boolean z10) {
        if (i12 == 0) {
            if (i11 == a(z10)) {
                return -1;
            }
            return i11 - 1;
        }
        if (i12 == 1) {
            return i11;
        }
        if (i12 == 2) {
            return i11 == a(z10) ? c(z10) : i11 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object m(int i11);

    public final c n(int i11, c cVar) {
        return o(i11, cVar, 0L);
    }

    public abstract c o(int i11, c cVar, long j11);

    public abstract int p();

    public final boolean q() {
        return p() == 0;
    }

    public final boolean r(int i11, b bVar, c cVar, int i12, boolean z10) {
        return d(i11, bVar, cVar, i12, z10) == -1;
    }
}
