package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes.dex */
public abstract class j4 {
    /* JADX INFO: Access modifiers changed from: private */
    public static final float b(float[] fArr, int i11, float[] fArr2, int i12) {
        int i13 = i11 * 4;
        return (fArr[i13] * fArr2[i12]) + (fArr[i13 + 1] * fArr2[4 + i12]) + (fArr[i13 + 2] * fArr2[8 + i12]) + (fArr[i13 + 3] * fArr2[12 + i12]);
    }

    public static final boolean c(float[] fArr) {
        int i11 = 0;
        while (i11 < 4) {
            int i12 = 0;
            while (i12 < 4) {
                if (fArr[(i11 * 4) + i12] != (i11 == i12 ? 1.0f : 0.0f)) {
                    return false;
                }
                i12++;
            }
            i11++;
        }
        return true;
    }
}
