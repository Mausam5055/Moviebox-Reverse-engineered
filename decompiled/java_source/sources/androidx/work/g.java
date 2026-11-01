package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15487a;

    static {
        String strI = t.i("Data");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15487a = strI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean[] h(boolean[] zArr) {
        int length = zArr.length;
        Boolean[] boolArr = new Boolean[length];
        for (int i11 = 0; i11 < length; i11++) {
            boolArr[i11] = Boolean.valueOf(zArr[i11]);
        }
        return boolArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Byte[] i(byte[] bArr) {
        int length = bArr.length;
        Byte[] bArr2 = new Byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            bArr2[i11] = Byte.valueOf(bArr[i11]);
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Double[] j(double[] dArr) {
        int length = dArr.length;
        Double[] dArr2 = new Double[length];
        for (int i11 = 0; i11 < length; i11++) {
            dArr2[i11] = Double.valueOf(dArr[i11]);
        }
        return dArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Float[] k(float[] fArr) {
        int length = fArr.length;
        Float[] fArr2 = new Float[length];
        for (int i11 = 0; i11 < length; i11++) {
            fArr2[i11] = Float.valueOf(fArr[i11]);
        }
        return fArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer[] l(int[] iArr) {
        int length = iArr.length;
        Integer[] numArr = new Integer[length];
        for (int i11 = 0; i11 < length; i11++) {
            numArr[i11] = Integer.valueOf(iArr[i11]);
        }
        return numArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long[] m(long[] jArr) {
        int length = jArr.length;
        Long[] lArr = new Long[length];
        for (int i11 = 0; i11 < length; i11++) {
            lArr[i11] = Long.valueOf(jArr[i11]);
        }
        return lArr;
    }
}
