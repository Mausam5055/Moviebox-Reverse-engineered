package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f29445h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f29446i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f29447j;

    public e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    public e(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, CircularProgressIndicator.DEF_STYLE_RES);
    }

    public e(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_inset_medium);
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.CircularProgressIndicator, i11, i12, new int[0]);
        this.f29445h = Math.max(xa.c.d(context, typedArrayI, R$styleable.CircularProgressIndicator_indicatorSize, dimensionPixelSize), this.f29418a * 2);
        this.f29446i = xa.c.d(context, typedArrayI, R$styleable.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f29447j = typedArrayI.getInt(R$styleable.CircularProgressIndicator_indicatorDirectionCircular, 0);
        typedArrayI.recycle();
        e();
    }
}
