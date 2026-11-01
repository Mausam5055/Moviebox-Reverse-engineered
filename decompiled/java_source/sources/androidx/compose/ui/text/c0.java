package androidx.compose.ui.text;

import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {
    public static final long a(int i11) {
        return b(i11, i11);
    }

    public static final long b(int i11, int i12) {
        return b0.c(d(i11, i12));
    }

    public static final long c(long j11, int i11, int i12) {
        int iM = RangesKt.m(b0.k(j11), i11, i12);
        int iM2 = RangesKt.m(b0.g(j11), i11, i12);
        return (iM == b0.k(j11) && iM2 == b0.g(j11)) ? j11 : b(iM, iM2);
    }

    private static final long d(int i11, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException(("start cannot be negative. [start: " + i11 + ", end: " + i12 + ']').toString());
        }
        if (i12 >= 0) {
            return (((long) i12) & 4294967295L) | (((long) i11) << 32);
        }
        throw new IllegalArgumentException(("end cannot be negative. [start: " + i11 + ", end: " + i12 + ']').toString());
    }
}
