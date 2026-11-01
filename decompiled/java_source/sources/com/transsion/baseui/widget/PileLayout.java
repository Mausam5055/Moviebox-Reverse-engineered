package com.transsion.baseui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.baseui.R$styleable;

/* JADX INFO: loaded from: classes5.dex */
public class PileLayout extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected float f43588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected float f43589b;

    public PileLayout(Context context) {
        this(context, null, 0);
    }

    public PileLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PileLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PileLayout);
        this.f43588a = typedArrayObtainStyledAttributes.getDimension(R$styleable.PileLayout_PileLayout_vertivalSpace, dp2px(4.0f));
        this.f43589b = typedArrayObtainStyledAttributes.getDimension(R$styleable.PileLayout_PileLayout_pileWidth, dp2px(10.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    public float dp2px(float f11) {
        return TypedValue.applyDimension(1, f11, getResources().getDisplayMetrics());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int iMax = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = marginLayoutParams.leftMargin + childAt.getMeasuredWidth() + marginLayoutParams.rightMargin;
                if (paddingLeft + measuredWidth + getPaddingRight() > i15) {
                    paddingLeft = getPaddingLeft();
                    paddingTop = (int) (paddingTop + iMax + this.f43588a);
                    iMax = 0;
                    i16 = 0;
                }
                int i18 = marginLayoutParams.leftMargin;
                childAt.layout(paddingLeft + i18, marginLayoutParams.topMargin + paddingTop, i18 + paddingLeft + childAt.getMeasuredWidth(), marginLayoutParams.topMargin + paddingTop + childAt.getMeasuredHeight());
                paddingLeft += measuredWidth;
                int measuredHeight = marginLayoutParams.topMargin + childAt.getMeasuredHeight() + marginLayoutParams.bottomMargin;
                if (i16 != childCount - 1) {
                    paddingLeft = (int) (paddingLeft - this.f43589b);
                }
                iMax = Math.max(iMax, measuredHeight);
                i16++;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        int childCount = getChildCount();
        int iMax = 0;
        int i13 = 0;
        int i14 = 0;
        int iMax2 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < childCount) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                int i17 = iMax;
                int i18 = i13;
                measureChildWithMargins(childAt, i11, 0, i12, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                int i19 = i15 + measuredWidth;
                float f11 = i19;
                if (f11 - (i16 > 0 ? this.f43589b : 0.0f) > (size - getPaddingLeft()) - getPaddingRight()) {
                    iMax2 = Math.max(iMax2, i15);
                    i13 = (int) (i18 + i17 + this.f43588a);
                    i15 = measuredWidth;
                    iMax = measuredHeight;
                    i16 = 0;
                } else {
                    if (i16 > 0) {
                        i19 = (int) (f11 - this.f43589b);
                    }
                    i15 = i19;
                    iMax = Math.max(i17, measuredHeight);
                    i13 = i18;
                }
                if (i14 == childCount - 1) {
                    i13 += iMax;
                    iMax2 = Math.max(i15, iMax2);
                }
                i16++;
            } else if (i14 == childCount - 1) {
                i13 += iMax;
                iMax2 = Math.max(iMax2, i15);
            }
            i14++;
            size2 = size2;
        }
        int i20 = size2;
        int i21 = i13;
        if (mode != 1073741824) {
            size = iMax2 + getPaddingLeft() + getPaddingRight();
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i20 : i21 + getPaddingTop() + getPaddingBottom());
    }
}
