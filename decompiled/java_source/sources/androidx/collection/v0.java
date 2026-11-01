package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long[] f2353a = {-9187201950435737345L, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final n0 f2354b = new n0(0);

    public static final void a(long[] metadata, int i11) {
        Intrinsics.h(metadata, "metadata");
        int i12 = (i11 + 7) >> 3;
        for (int i13 = 0; i13 < i12; i13++) {
            long j11 = metadata[i13] & (-9187201950435737472L);
            metadata[i13] = (-72340172838076674L) & ((~j11) + (j11 >>> 7));
        }
        int iA0 = ArraysKt.a0(metadata);
        int i14 = iA0 - 1;
        metadata[i14] = (metadata[i14] & 72057594037927935L) | (-72057594037927936L);
        metadata[iA0] = metadata[0];
    }

    public static final int b(long[] metadata, int i11, int i12) {
        Intrinsics.h(metadata, "metadata");
        while (i11 < i12) {
            if (((metadata[i11 >> 3] >> ((i11 & 7) << 3)) & 255) == 128) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static final int c(int i11) {
        if (i11 == 7) {
            return 6;
        }
        return i11 - (i11 / 8);
    }

    public static final n0 d() {
        return new n0(0, 1, null);
    }

    public static final int e(int i11) {
        if (i11 == 0) {
            return 6;
        }
        return (i11 * 2) + 1;
    }

    public static final int f(int i11) {
        if (i11 > 0) {
            return (-1) >>> Integer.numberOfLeadingZeros(i11);
        }
        return 0;
    }

    public static final int g(int i11) {
        if (i11 == 7) {
            return 8;
        }
        return i11 + ((i11 - 1) / 7);
    }
}
