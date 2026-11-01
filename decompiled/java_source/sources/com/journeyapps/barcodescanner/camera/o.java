package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import xe.q;

/* JADX INFO: loaded from: classes4.dex */
public class o extends PreviewScalingStrategy {
    private static float e(float f11) {
        return f11 < 1.0f ? 1.0f / f11 : f11;
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    protected float c(q qVar, q qVar2) {
        int i11 = qVar.f78234a;
        if (i11 <= 0 || qVar.f78235b <= 0) {
            return 0.0f;
        }
        float fE = (1.0f / e((i11 * 1.0f) / qVar2.f78234a)) / e((qVar.f78235b * 1.0f) / qVar2.f78235b);
        float fE2 = e(((qVar.f78234a * 1.0f) / qVar.f78235b) / ((qVar2.f78234a * 1.0f) / qVar2.f78235b));
        return fE * (((1.0f / fE2) / fE2) / fE2);
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect d(q qVar, q qVar2) {
        return new Rect(0, 0, qVar2.f78234a, qVar2.f78235b);
    }
}
