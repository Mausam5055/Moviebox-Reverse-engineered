package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
abstract class c {
    public static int[] a(int[] iArr) {
        return iArr;
    }

    public static final int b(int[] iArr, int i11) {
        return iArr[i11 + c(iArr)];
    }

    private static final int c(int[] iArr) {
        return iArr.length / 2;
    }

    public static final void d(int[] iArr, int i11, int i12) {
        iArr[i11 + c(iArr)] = i12;
    }
}
