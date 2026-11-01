package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

/* JADX INFO: loaded from: classes4.dex */
public final class n extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f29507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f29508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f29509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f29510k;

    public n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.linearProgressIndicatorStyle);
    }

    public n(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, LinearProgressIndicator.DEF_STYLE_RES);
    }

    public n(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.LinearProgressIndicator, R$attr.linearProgressIndicatorStyle, LinearProgressIndicator.DEF_STYLE_RES, new int[0]);
        this.f29507h = typedArrayI.getInt(R$styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f29508i = typedArrayI.getInt(R$styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        this.f29510k = Math.min(typedArrayI.getDimensionPixelSize(R$styleable.LinearProgressIndicator_trackStopIndicatorSize, 0), this.f29418a);
        typedArrayI.recycle();
        e();
        this.f29509j = this.f29508i == 1;
    }

    @Override // com.google.android.material.progressindicator.b
    void e() {
        super.e();
        if (this.f29510k < 0) {
            throw new IllegalArgumentException("Stop indicator size must be >= 0.");
        }
        if (this.f29507h == 0) {
            if (this.f29419b > 0 && this.f29424g == 0) {
                throw new IllegalArgumentException("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            }
            if (this.f29420c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }
}
