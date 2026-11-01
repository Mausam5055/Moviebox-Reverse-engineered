package androidx.compose.runtime.snapshots;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    public static final int a(int[] iArr, int i11) {
        int length = iArr.length - 1;
        int i12 = 0;
        while (i12 <= length) {
            int i13 = (i12 + length) >>> 1;
            int i14 = iArr[i13];
            if (i11 > i14) {
                i12 = i13 + 1;
            } else {
                if (i11 >= i14) {
                    return i13;
                }
                length = i13 - 1;
            }
        }
        return -(i12 + 1);
    }
}
