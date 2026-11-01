package com.google.android.material.progressindicator;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f29418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f29420c = new int[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f29421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f29422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f29423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f29424g;

    protected b(Context context, AttributeSet attributeSet, int i11, int i12) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_track_thickness);
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.BaseProgressIndicator, i11, i12, new int[0]);
        this.f29418a = xa.c.d(context, typedArrayI, R$styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f29419b = Math.min(xa.c.d(context, typedArrayI, R$styleable.BaseProgressIndicator_trackCornerRadius, 0), this.f29418a / 2);
        this.f29422e = typedArrayI.getInt(R$styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f29423f = typedArrayI.getInt(R$styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        this.f29424g = typedArrayI.getDimensionPixelSize(R$styleable.BaseProgressIndicator_indicatorTrackGapSize, 0);
        c(context, typedArrayI);
        d(context, typedArrayI);
        typedArrayI.recycle();
    }

    private void c(Context context, TypedArray typedArray) {
        if (!typedArray.hasValue(R$styleable.BaseProgressIndicator_indicatorColor)) {
            this.f29420c = new int[]{com.google.android.material.color.b.b(context, R$attr.colorPrimary, -1)};
            return;
        }
        if (typedArray.peekValue(R$styleable.BaseProgressIndicator_indicatorColor).type != 1) {
            this.f29420c = new int[]{typedArray.getColor(R$styleable.BaseProgressIndicator_indicatorColor, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(R$styleable.BaseProgressIndicator_indicatorColor, -1));
        this.f29420c = intArray;
        if (intArray.length == 0) {
            throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
        }
    }

    private void d(Context context, TypedArray typedArray) {
        if (typedArray.hasValue(R$styleable.BaseProgressIndicator_trackColor)) {
            this.f29421d = typedArray.getColor(R$styleable.BaseProgressIndicator_trackColor, -1);
            return;
        }
        this.f29421d = this.f29420c[0];
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.disabledAlpha});
        float f11 = typedArrayObtainStyledAttributes.getFloat(0, 0.2f);
        typedArrayObtainStyledAttributes.recycle();
        this.f29421d = com.google.android.material.color.b.a(this.f29421d, (int) (f11 * 255.0f));
    }

    public boolean a() {
        return this.f29423f != 0;
    }

    public boolean b() {
        return this.f29422e != 0;
    }

    void e() {
        if (this.f29424g < 0) {
            throw new IllegalArgumentException("indicatorTrackGapSize must be >= 0.");
        }
    }
}
