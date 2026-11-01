package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import xe.q;

/* JADX INFO: loaded from: classes4.dex */
public class n extends PreviewScalingStrategy {
    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    protected float c(q qVar, q qVar2) {
        if (qVar.f78234a <= 0 || qVar.f78235b <= 0) {
            return 0.0f;
        }
        q qVarG = qVar.g(qVar2);
        float fPow = (qVarG.f78234a * 1.0f) / qVar.f78234a;
        if (fPow > 1.0f) {
            fPow = (float) Math.pow(1.0f / fPow, 1.1d);
        }
        float f11 = ((qVar2.f78234a * 1.0f) / qVarG.f78234a) * ((qVar2.f78235b * 1.0f) / qVarG.f78235b);
        return fPow * (((1.0f / f11) / f11) / f11);
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect d(q qVar, q qVar2) {
        q qVarG = qVar.g(qVar2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Preview: ");
        sb2.append(qVar);
        sb2.append("; Scaled: ");
        sb2.append(qVarG);
        sb2.append("; Want: ");
        sb2.append(qVar2);
        int i11 = (qVarG.f78234a - qVar2.f78234a) / 2;
        int i12 = (qVarG.f78235b - qVar2.f78235b) / 2;
        return new Rect(-i11, -i12, qVarG.f78234a - i11, qVarG.f78235b - i12);
    }
}
