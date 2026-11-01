package com.mbridge.msdk.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;

/* JADX INFO: loaded from: classes5.dex */
public class FeedbackRadioGroup extends RadioGroup {
    public FeedbackRadioGroup(Context context) {
        super(context);
    }

    public FeedbackRadioGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int iMax = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            if (marginLayoutParams.leftMargin + paddingLeft + childAt.getMeasuredWidth() + marginLayoutParams.rightMargin + getPaddingRight() > i13 - i11) {
                paddingLeft = getPaddingLeft();
                paddingTop += iMax;
                iMax = getChildAt(i15).getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            } else {
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
            }
            int i16 = marginLayoutParams.leftMargin + paddingLeft;
            int i17 = marginLayoutParams.topMargin + paddingTop;
            childAt.layout(i16, i17, childAt.getMeasuredWidth() + i16, childAt.getMeasuredHeight() + i17);
            paddingLeft += marginLayoutParams.leftMargin + childAt.getMeasuredWidth() + marginLayoutParams.rightMargin;
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        int iMax;
        int size = View.MeasureSpec.getSize(i11);
        int mode = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i12);
        int mode2 = View.MeasureSpec.getMode(i12);
        measureChildren(i11, i12);
        int childCount = getChildCount();
        int i13 = 0;
        int i14 = 0;
        int iMax2 = 0;
        int i15 = 0;
        int iMax3 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int i16 = i15 + measuredWidth;
            if (getPaddingLeft() + i16 + getPaddingRight() > size) {
                iMax = Math.max(i15, iMax2);
                i14 += iMax3;
                iMax3 = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                Log.v("FeedbackRadioGroup", "maxHeight:" + i14 + "---maxWidth:" + iMax);
            } else {
                iMax3 = Math.max(iMax3, childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                measuredWidth = i16;
                iMax = iMax2;
            }
            if (i13 == childCount - 1) {
                i14 += iMax3;
                iMax2 = Math.max(measuredWidth, iMax2);
            } else {
                iMax2 = iMax;
            }
            i13++;
            i15 = measuredWidth;
        }
        int paddingLeft = iMax2 + getPaddingLeft() + getPaddingRight();
        int paddingTop = i14 + getPaddingTop() + getPaddingBottom();
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        if (mode2 != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }
}
