package androidx.compose.ui.graphics;

import android.graphics.Matrix;

/* JADX INFO: loaded from: classes.dex */
public abstract class r0 {
    public static final void a(Matrix matrix, float[] fArr) {
        float f11 = fArr[0];
        float f12 = fArr[1];
        float f13 = fArr[2];
        float f14 = fArr[3];
        float f15 = fArr[4];
        float f16 = fArr[5];
        float f17 = fArr[6];
        float f18 = fArr[7];
        float f19 = fArr[8];
        float f20 = fArr[12];
        float f21 = fArr[13];
        float f22 = fArr[15];
        fArr[0] = f11;
        fArr[1] = f15;
        fArr[2] = f20;
        fArr[3] = f12;
        fArr[4] = f16;
        fArr[5] = f21;
        fArr[6] = f14;
        fArr[7] = f18;
        fArr[8] = f22;
        matrix.setValues(fArr);
        fArr[0] = f11;
        fArr[1] = f12;
        fArr[2] = f13;
        fArr[3] = f14;
        fArr[4] = f15;
        fArr[5] = f16;
        fArr[6] = f17;
        fArr[7] = f18;
        fArr[8] = f19;
    }

    public static final void b(float[] fArr, Matrix matrix) {
        matrix.getValues(fArr);
        float f11 = fArr[0];
        float f12 = fArr[1];
        float f13 = fArr[2];
        float f14 = fArr[3];
        float f15 = fArr[4];
        float f16 = fArr[5];
        float f17 = fArr[6];
        float f18 = fArr[7];
        float f19 = fArr[8];
        fArr[0] = f11;
        fArr[1] = f14;
        fArr[2] = 0.0f;
        fArr[3] = f17;
        fArr[4] = f12;
        fArr[5] = f15;
        fArr[6] = 0.0f;
        fArr[7] = f18;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = f13;
        fArr[13] = f16;
        fArr[14] = 0.0f;
        fArr[15] = f19;
    }
}
