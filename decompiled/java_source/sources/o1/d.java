package o1;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes2.dex */
abstract class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f70645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f70646b;

    protected d(float[] fArr) {
        this.f70645a = fArr;
        this.f70646b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f11) {
        if (f11 >= 1.0f) {
            return 1.0f;
        }
        if (f11 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f70645a;
        int iMin = Math.min((int) ((fArr.length - 1) * f11), fArr.length - 2);
        float f12 = this.f70646b;
        float f13 = (f11 - (iMin * f12)) / f12;
        float[] fArr2 = this.f70645a;
        float f14 = fArr2[iMin];
        return f14 + (f13 * (fArr2[iMin + 1] - f14));
    }
}
