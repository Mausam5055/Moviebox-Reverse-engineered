package com.google.android.material.divider;

import ab.i;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.b;
import androidx.core.view.ViewCompat;
import bb.a;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import xa.c;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialDivider extends View {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f28918f = R$style.Widget_MaterialComponents_MaterialDivider;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f28919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28923e;

    public MaterialDivider(@NonNull Context context) {
        this(context, null);
    }

    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialDividerStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28918f;
        super(a.c(context, attributeSet, i11, i12), attributeSet, i11);
        Context context2 = getContext();
        this.f28919a = new i();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialDivider, i11, i12, new int[0]);
        this.f28920b = typedArrayI.getDimensionPixelSize(R$styleable.MaterialDivider_dividerThickness, getResources().getDimensionPixelSize(R$dimen.material_divider_thickness));
        this.f28922d = typedArrayI.getDimensionPixelOffset(R$styleable.MaterialDivider_dividerInsetStart, 0);
        this.f28923e = typedArrayI.getDimensionPixelOffset(R$styleable.MaterialDivider_dividerInsetEnd, 0);
        setDividerColor(c.a(context2, typedArrayI, R$styleable.MaterialDivider_dividerColor).getDefaultColor());
        typedArrayI.recycle();
    }

    public int getDividerColor() {
        return this.f28921c;
    }

    public int getDividerInsetEnd() {
        return this.f28923e;
    }

    public int getDividerInsetStart() {
        return this.f28922d;
    }

    public int getDividerThickness() {
        return this.f28920b;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        int i11;
        super.onDraw(canvas);
        boolean z10 = ViewCompat.getLayoutDirection(this) == 1;
        int i12 = z10 ? this.f28923e : this.f28922d;
        if (z10) {
            width = getWidth();
            i11 = this.f28922d;
        } else {
            width = getWidth();
            i11 = this.f28923e;
        }
        this.f28919a.setBounds(i12, 0, width - i11, getBottom() - getTop());
        this.f28919a.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int mode = View.MeasureSpec.getMode(i12);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i13 = this.f28920b;
            if (i13 > 0 && measuredHeight != i13) {
                measuredHeight = i13;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(int i11) {
        if (this.f28921c != i11) {
            this.f28921c = i11;
            this.f28919a.d0(ColorStateList.valueOf(i11));
            invalidate();
        }
    }

    public void setDividerColorResource(int i11) {
        setDividerColor(b.getColor(getContext(), i11));
    }

    public void setDividerInsetEnd(int i11) {
        this.f28923e = i11;
    }

    public void setDividerInsetEndResource(int i11) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i11));
    }

    public void setDividerInsetStart(int i11) {
        this.f28922d = i11;
    }

    public void setDividerInsetStartResource(int i11) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i11));
    }

    public void setDividerThickness(int i11) {
        if (this.f28920b != i11) {
            this.f28920b = i11;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(int i11) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i11));
    }
}
