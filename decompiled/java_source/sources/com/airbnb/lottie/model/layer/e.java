package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import java.util.Collections;
import java.util.List;
import r4.k;
import u4.j;

/* JADX INFO: loaded from: classes2.dex */
public class e extends a {
    private final m4.d E;
    private final b F;

    e(LottieDrawable lottieDrawable, Layer layer, b bVar, h hVar) {
        super(lottieDrawable, layer);
        this.F = bVar;
        m4.d dVar = new m4.d(lottieDrawable, this, new k("__container", layer.o(), false), hVar);
        this.E = dVar;
        dVar.c(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void I(p4.d dVar, int i11, List list, p4.d dVar2) {
        this.E.d(dVar, i11, list, dVar2);
    }

    @Override // com.airbnb.lottie.model.layer.a, m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        super.f(rectF, matrix, z10);
        this.E.f(rectF, this.f17872o, z10);
    }

    @Override // com.airbnb.lottie.model.layer.a
    void t(Canvas canvas, Matrix matrix, int i11) {
        this.E.h(canvas, matrix, i11);
    }

    @Override // com.airbnb.lottie.model.layer.a
    public r4.a w() {
        r4.a aVarW = super.w();
        return aVarW != null ? aVarW : this.F.w();
    }

    @Override // com.airbnb.lottie.model.layer.a
    public j y() {
        j jVarY = super.y();
        return jVarY != null ? jVarY : this.F.y();
    }
}
