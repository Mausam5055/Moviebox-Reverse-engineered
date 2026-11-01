package o0;

import kotlin.KotlinNothingValueException;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    public static final long a(int i11, int i12, int i13, int i14) {
        boolean z10 = false;
        if (!(i12 >= i11)) {
            o.a("maxWidth(" + i12 + ") must be >= than minWidth(" + i11 + ')');
        }
        if (!(i14 >= i13)) {
            o.a("maxHeight(" + i14 + ") must be >= than minHeight(" + i13 + ')');
        }
        if (i11 >= 0 && i13 >= 0) {
            z10 = true;
        }
        if (!z10) {
            o.a("minWidth(" + i11 + ") and minHeight(" + i13 + ") must be >= 0");
        }
        return j(i11, i12, i13, i14);
    }

    public static /* synthetic */ long b(int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i11 = 0;
        }
        if ((i15 & 2) != 0) {
            i12 = Integer.MAX_VALUE;
        }
        if ((i15 & 4) != 0) {
            i13 = 0;
        }
        if ((i15 & 8) != 0) {
            i14 = Integer.MAX_VALUE;
        }
        return a(i11, i12, i13, i14);
    }

    private static final int d(int i11, int i12) {
        return i11 == Integer.MAX_VALUE ? i11 : RangesKt.f(i11 + i12, 0);
    }

    private static final int e(int i11) {
        if (i11 < 8191) {
            return 13;
        }
        if (i11 < 32767) {
            return 15;
        }
        if (i11 < 65535) {
            return 16;
        }
        return i11 < 262143 ? 18 : 255;
    }

    public static final long f(long j11, long j12) {
        return u.a(RangesKt.m(t.g(j12), b.n(j11), b.l(j11)), RangesKt.m(t.f(j12), b.m(j11), b.k(j11)));
    }

    public static final long g(long j11, long j12) {
        return a(RangesKt.m(b.n(j12), b.n(j11), b.l(j11)), RangesKt.m(b.l(j12), b.n(j11), b.l(j11)), RangesKt.m(b.m(j12), b.m(j11), b.k(j11)), RangesKt.m(b.k(j12), b.m(j11), b.k(j11)));
    }

    public static final int h(long j11, int i11) {
        return RangesKt.m(i11, b.m(j11), b.k(j11));
    }

    public static final int i(long j11, int i11) {
        return RangesKt.m(i11, b.n(j11), b.l(j11));
    }

    public static final long j(int i11, int i12, int i13, int i14) {
        int i15 = i14 == Integer.MAX_VALUE ? i13 : i14;
        int iE = e(i15);
        int i16 = i12 == Integer.MAX_VALUE ? i11 : i12;
        int iE2 = e(i16);
        if (iE + iE2 > 31) {
            k(i16, i15);
        }
        int i17 = i12 + 1;
        int i18 = i17 & (~(i17 >> 31));
        int i19 = i14 + 1;
        int i20 = i19 & (~(i19 >> 31));
        int i21 = 0;
        if (iE2 != 13) {
            if (iE2 == 18) {
                i21 = 3;
            } else if (iE2 == 15) {
                i21 = 1;
            } else if (iE2 == 16) {
                i21 = 2;
            }
        }
        int i22 = ((i21 & 1) << 1) + (((i21 & 2) >> 1) * 3);
        return b.b((((long) i18) << 33) | ((long) i21) | (((long) i11) << 2) | (((long) i13) << (i22 + 15)) | (((long) i20) << (i22 + 46)));
    }

    private static final void k(int i11, int i12) {
        throw new IllegalArgumentException("Can't represent a width of " + i11 + " and height of " + i12 + " in Constraints");
    }

    private static final Void l(int i11) {
        throw new IllegalArgumentException("Can't represent a size of " + i11 + " in Constraints");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int m(int i11) {
        if (i11 < 8191) {
            return 262142;
        }
        if (i11 < 32767) {
            return 65534;
        }
        if (i11 < 65535) {
            return 32766;
        }
        if (i11 < 262143) {
            return 8190;
        }
        l(i11);
        throw new KotlinNothingValueException();
    }

    public static final long n(long j11, int i11, int i12) {
        return a(RangesKt.f(b.n(j11) + i11, 0), d(b.l(j11), i11), RangesKt.f(b.m(j11) + i12, 0), d(b.k(j11), i12));
    }
}
