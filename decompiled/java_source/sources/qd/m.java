package qd;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class m extends q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f73580b = {1, 1, 1, 1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f73581c = {3, 1, 1};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[][] f73582d = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // qd.q
    public boolean[] d(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        q.c(str);
        boolean[] zArr = new boolean[(length * 9) + 9];
        int iB = q.b(zArr, 0, f73580b, true);
        for (int i11 = 0; i11 < length; i11 += 2) {
            int iDigit = Character.digit(str.charAt(i11), 10);
            int iDigit2 = Character.digit(str.charAt(i11 + 1), 10);
            int[] iArr = new int[10];
            for (int i12 = 0; i12 < 5; i12++) {
                int i13 = i12 * 2;
                int[][] iArr2 = f73582d;
                iArr[i13] = iArr2[iDigit][i12];
                iArr[i13 + 1] = iArr2[iDigit2][i12];
            }
            iB += q.b(zArr, iB, iArr, true);
        }
        q.b(zArr, iB, f73581c, true);
        return zArr;
    }

    @Override // qd.q
    protected Collection g() {
        return Collections.singleton(BarcodeFormat.ITF);
    }
}
