package androidx.constraintlayout.core.motion.utils;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class k extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    f f6813d;

    k(String str) {
        this.f6769a = str;
        double[] dArr = new double[str.length() / 2];
        int iIndexOf = str.indexOf(40) + 1;
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        int i11 = 0;
        while (iIndexOf2 != -1) {
            dArr[i11] = Double.parseDouble(str.substring(iIndexOf, iIndexOf2).trim());
            iIndexOf = iIndexOf2 + 1;
            iIndexOf2 = str.indexOf(44, iIndexOf);
            i11++;
        }
        dArr[i11] = Double.parseDouble(str.substring(iIndexOf, str.indexOf(41, iIndexOf)).trim());
        this.f6813d = d(Arrays.copyOf(dArr, i11 + 1));
    }

    private static f d(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d11 = 1.0d / ((double) length2);
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 1);
        double[] dArr3 = new double[length];
        for (int i11 = 0; i11 < dArr.length; i11++) {
            double d12 = dArr[i11];
            int i12 = i11 + length2;
            dArr2[i12][0] = d12;
            double d13 = ((double) i11) * d11;
            dArr3[i12] = d13;
            if (i11 > 0) {
                int i13 = (length2 * 2) + i11;
                dArr2[i13][0] = d12 + 1.0d;
                dArr3[i13] = d13 + 1.0d;
                int i14 = i11 - 1;
                dArr2[i14][0] = (d12 - 1.0d) - d11;
                dArr3[i14] = (d13 - 1.0d) - d11;
            }
        }
        f fVar = new f(dArr3, dArr2);
        PrintStream printStream = System.out;
        printStream.println(" 0 " + fVar.c(0.0d, 0));
        printStream.println(" 1 " + fVar.c(1.0d, 0));
        return fVar;
    }

    @Override // androidx.constraintlayout.core.motion.utils.c
    public double a(double d11) {
        return this.f6813d.c(d11, 0);
    }

    @Override // androidx.constraintlayout.core.motion.utils.c
    public double b(double d11) {
        return this.f6813d.f(d11, 0);
    }
}
