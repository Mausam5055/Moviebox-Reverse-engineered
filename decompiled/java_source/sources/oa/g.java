package oa;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes4.dex */
public class g implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f70928a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f70929b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f70930c = new Matrix();

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix evaluate(float f11, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f70928a);
        matrix2.getValues(this.f70929b);
        for (int i11 = 0; i11 < 9; i11++) {
            float[] fArr = this.f70929b;
            float f12 = fArr[i11];
            float f13 = this.f70928a[i11];
            fArr[i11] = f13 + ((f12 - f13) * f11);
        }
        this.f70930c.setValues(this.f70929b);
        return this.f70930c;
    }
}
