package androidx.core.util;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f8274a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static char[] f8275b = new char[24];

    private static int a(int i11, int i12, boolean z10, int i13) {
        if (i11 > 99 || (z10 && i13 >= 3)) {
            return i12 + 3;
        }
        if (i11 > 9 || (z10 && i13 >= 2)) {
            return i12 + 2;
        }
        if (z10 || i11 > 0) {
            return i12 + 1;
        }
        return 0;
    }

    public static void b(long j11, long j12, PrintWriter printWriter) {
        if (j11 == 0) {
            printWriter.print("--");
        } else {
            d(j11 - j12, printWriter, 0);
        }
    }

    public static void c(long j11, PrintWriter printWriter) {
        d(j11, printWriter, 0);
    }

    public static void d(long j11, PrintWriter printWriter, int i11) {
        synchronized (f8274a) {
            printWriter.print(new String(f8275b, 0, e(j11, i11)));
        }
    }

    private static int e(long j11, int i11) {
        char c11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        long j12 = j11;
        if (f8275b.length < i11) {
            f8275b = new char[i11];
        }
        char[] cArr = f8275b;
        if (j12 == 0) {
            int i17 = i11 - 1;
            while (i17 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j12 > 0) {
            c11 = '+';
        } else {
            j12 = -j12;
            c11 = '-';
        }
        int i18 = (int) (j12 % 1000);
        int iFloor = (int) Math.floor(j12 / 1000);
        if (iFloor > 86400) {
            i12 = iFloor / 86400;
            iFloor -= 86400 * i12;
        } else {
            i12 = 0;
        }
        if (iFloor > 3600) {
            i13 = iFloor / 3600;
            iFloor -= i13 * 3600;
        } else {
            i13 = 0;
        }
        if (iFloor > 60) {
            int i19 = iFloor / 60;
            i14 = iFloor - (i19 * 60);
            i15 = i19;
        } else {
            i14 = iFloor;
            i15 = 0;
        }
        if (i11 != 0) {
            int iA = a(i12, 1, false, 0);
            int iA2 = iA + a(i13, 1, iA > 0, 2);
            int iA3 = iA2 + a(i15, 1, iA2 > 0, 2);
            int iA4 = iA3 + a(i14, 1, iA3 > 0, 2);
            i16 = 0;
            for (int iA5 = iA4 + a(i18, 2, true, iA4 > 0 ? 3 : 0) + 1; iA5 < i11; iA5++) {
                cArr[i16] = ' ';
                i16++;
            }
        } else {
            i16 = 0;
        }
        cArr[i16] = c11;
        int i20 = i16 + 1;
        boolean z10 = i11 != 0;
        int iF = f(cArr, i12, 'd', i20, false, 0);
        int iF2 = f(cArr, i13, 'h', iF, iF != i20, z10 ? 2 : 0);
        int iF3 = f(cArr, i15, 'm', iF2, iF2 != i20, z10 ? 2 : 0);
        int iF4 = f(cArr, i14, 's', iF3, iF3 != i20, z10 ? 2 : 0);
        int iF5 = f(cArr, i18, 'm', iF4, true, (!z10 || iF4 == i20) ? 0 : 3);
        cArr[iF5] = 's';
        return iF5 + 1;
    }

    private static int f(char[] cArr, int i11, char c11, int i12, boolean z10, int i13) {
        int i14;
        if (!z10 && i11 <= 0) {
            return i12;
        }
        if ((!z10 || i13 < 3) && i11 <= 99) {
            i14 = i12;
        } else {
            int i15 = i11 / 100;
            cArr[i12] = (char) (i15 + 48);
            i14 = i12 + 1;
            i11 -= i15 * 100;
        }
        if ((z10 && i13 >= 2) || i11 > 9 || i12 != i14) {
            int i16 = i11 / 10;
            cArr[i14] = (char) (i16 + 48);
            i14++;
            i11 -= i16 * 10;
        }
        cArr[i14] = (char) (i11 + 48);
        cArr[i14 + 1] = c11;
        return i14 + 2;
    }
}
