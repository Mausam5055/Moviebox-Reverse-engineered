package kotlinx.coroutines.internal;

import kotlin.text.StringsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class c0 {
    public static final int a(String str, int i11, int i12, int i13) {
        return (int) a0.c(str, i11, i12, i13);
    }

    public static final long b(String str, long j11, long j12, long j13) {
        String strD = a0.d(str);
        if (strD == null) {
            return j11;
        }
        Long lX = StringsKt.x(strD);
        if (lX == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + strD + '\'').toString());
        }
        long jLongValue = lX.longValue();
        if (j12 <= jLongValue && jLongValue <= j13) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j12 + ".." + j13 + ", but is '" + jLongValue + '\'').toString());
    }

    public static final String c(String str, String str2) {
        String strD = a0.d(str);
        return strD == null ? str2 : strD;
    }

    public static final boolean d(String str, boolean z10) {
        String strD = a0.d(str);
        return strD != null ? Boolean.parseBoolean(strD) : z10;
    }

    public static /* synthetic */ int e(String str, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 4) != 0) {
            i12 = 1;
        }
        if ((i14 & 8) != 0) {
            i13 = Integer.MAX_VALUE;
        }
        return a0.b(str, i11, i12, i13);
    }

    public static /* synthetic */ long f(String str, long j11, long j12, long j13, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            j12 = 1;
        }
        long j14 = j12;
        if ((i11 & 8) != 0) {
            j13 = Long.MAX_VALUE;
        }
        return a0.c(str, j11, j14, j13);
    }
}
