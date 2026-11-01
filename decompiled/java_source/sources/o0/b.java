package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70596b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70597a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a(int i11, int i12, int i13, int i14) {
            int iMin = Math.min(i13, 262142);
            int iMin2 = i14 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i14, 262142);
            int iM = c.m(iMin2 == Integer.MAX_VALUE ? iMin : iMin2);
            return c.a(Math.min(iM, i11), i12 != Integer.MAX_VALUE ? Math.min(iM, i12) : Integer.MAX_VALUE, iMin, iMin2);
        }

        public final long b(int i11, int i12, int i13, int i14) {
            int iMin = Math.min(i11, 262142);
            int iMin2 = i12 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i12, 262142);
            int iM = c.m(iMin2 == Integer.MAX_VALUE ? iMin : iMin2);
            return c.a(iMin, iMin2, Math.min(iM, i13), i14 != Integer.MAX_VALUE ? Math.min(iM, i14) : Integer.MAX_VALUE);
        }

        public final long c(int i11, int i12) {
            if (!(i11 >= 0 && i12 >= 0)) {
                o.a("width(" + i11 + ") and height(" + i12 + ") must be >= 0");
            }
            return c.j(i11, i11, i12, i12);
        }
    }

    private /* synthetic */ b(long j11) {
        this.f70597a = j11;
    }

    public static final /* synthetic */ b a(long j11) {
        return new b(j11);
    }

    public static long b(long j11) {
        return j11;
    }

    public static final long c(long j11, int i11, int i12, int i13, int i14) {
        if (!(i13 >= 0 && i11 >= 0)) {
            o.a("minHeight(" + i13 + ") and minWidth(" + i11 + ") must be >= 0");
        }
        if (!(i12 >= i11)) {
            o.a("maxWidth(" + i12 + ") must be >= minWidth(" + i11 + ')');
        }
        if (!(i14 >= i13)) {
            o.a("maxHeight(" + i14 + ") must be >= minHeight(" + i13 + ')');
        }
        return c.j(i11, i12, i13, i14);
    }

    public static /* synthetic */ long d(long j11, int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i11 = n(j11);
        }
        int i16 = i11;
        if ((i15 & 2) != 0) {
            i12 = l(j11);
        }
        int i17 = i12;
        if ((i15 & 4) != 0) {
            i13 = m(j11);
        }
        int i18 = i13;
        if ((i15 & 8) != 0) {
            i14 = k(j11);
        }
        return c(j11, i16, i17, i18, i14);
    }

    public static boolean e(long j11, Object obj) {
        return (obj instanceof b) && j11 == ((b) obj).r();
    }

    public static final boolean f(long j11, long j12) {
        return j11 == j12;
    }

    public static final boolean g(long j11) {
        int i11 = (int) (3 & j11);
        int i12 = ((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3);
        return (((int) (j11 >> (i12 + 46))) & ((1 << (18 - i12)) - 1)) != 0;
    }

    public static final boolean h(long j11) {
        int i11 = (int) (3 & j11);
        return (((int) (j11 >> 33)) & ((1 << ((((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3)) + 13)) - 1)) != 0;
    }

    public static final boolean i(long j11) {
        int i11 = (int) (3 & j11);
        int i12 = ((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3);
        int i13 = (1 << (18 - i12)) - 1;
        int i14 = ((int) (j11 >> (i12 + 15))) & i13;
        int i15 = ((int) (j11 >> (i12 + 46))) & i13;
        return i14 == (i15 == 0 ? Integer.MAX_VALUE : i15 - 1);
    }

    public static final boolean j(long j11) {
        int i11 = (int) (3 & j11);
        int i12 = (1 << ((((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3)) + 13)) - 1;
        int i13 = ((int) (j11 >> 2)) & i12;
        int i14 = ((int) (j11 >> 33)) & i12;
        return i13 == (i14 == 0 ? Integer.MAX_VALUE : i14 - 1);
    }

    public static final int k(long j11) {
        int i11 = (int) (3 & j11);
        int i12 = ((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3);
        int i13 = ((int) (j11 >> (i12 + 46))) & ((1 << (18 - i12)) - 1);
        if (i13 == 0) {
            return Integer.MAX_VALUE;
        }
        return i13 - 1;
    }

    public static final int l(long j11) {
        int i11 = (int) (3 & j11);
        int i12 = ((int) (j11 >> 33)) & ((1 << ((((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3)) + 13)) - 1);
        if (i12 == 0) {
            return Integer.MAX_VALUE;
        }
        return i12 - 1;
    }

    public static final int m(long j11) {
        int i11 = (int) (3 & j11);
        int i12 = ((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3);
        return ((int) (j11 >> (i12 + 15))) & ((1 << (18 - i12)) - 1);
    }

    public static final int n(long j11) {
        int i11 = (int) (3 & j11);
        return ((int) (j11 >> 2)) & ((1 << ((((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3)) + 13)) - 1);
    }

    public static int o(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static final boolean p(long j11) {
        int i11 = (int) (3 & j11);
        int i12 = ((i11 & 1) << 1) + (((i11 & 2) >> 1) * 3);
        return (((int) (j11 >> 33)) & ((1 << (i12 + 13)) - 1)) - 1 == 0 || (((int) (j11 >> (i12 + 46))) & ((1 << (18 - i12)) - 1)) - 1 == 0;
    }

    public static String q(long j11) {
        int iL = l(j11);
        String strValueOf = iL == Integer.MAX_VALUE ? "Infinity" : String.valueOf(iL);
        int iK = k(j11);
        return "Constraints(minWidth = " + n(j11) + ", maxWidth = " + strValueOf + ", minHeight = " + m(j11) + ", maxHeight = " + (iK != Integer.MAX_VALUE ? String.valueOf(iK) : "Infinity") + ')';
    }

    public boolean equals(Object obj) {
        return e(this.f70597a, obj);
    }

    public int hashCode() {
        return o(this.f70597a);
    }

    public final /* synthetic */ long r() {
        return this.f70597a;
    }

    public String toString() {
        return q(this.f70597a);
    }
}
