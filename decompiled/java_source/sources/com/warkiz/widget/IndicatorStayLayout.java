package com.warkiz.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class IndicatorStayLayout extends LinearLayout {
    public IndicatorStayLayout(Context context) {
        this(context, null);
    }

    public IndicatorStayLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IndicatorStayLayout(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        setOrientation(1);
    }

    private void a(View view, int i11) {
        if (view instanceof IndicatorSeekBar) {
            IndicatorSeekBar indicatorSeekBar = (IndicatorSeekBar) view;
            indicatorSeekBar.setIndicatorStayAlways(true);
            View indicatorContentView = indicatorSeekBar.getIndicatorContentView();
            if (indicatorContentView == null) {
                throw new IllegalStateException("Can not find any indicator in the IndicatorSeekBar, please make sure you have called the attr: SHOW_INDICATOR_TYPE for IndicatorSeekBar and the value is not IndicatorType.NONE.");
            }
            if (indicatorContentView instanceof IndicatorSeekBar) {
                throw new IllegalStateException("IndicatorSeekBar can not be a contentView for Indicator in case this inflating loop.");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, g.a(indicatorSeekBar.getContext(), 2.0f) - indicatorSeekBar.getPaddingTop());
            addView(indicatorContentView, i11, marginLayoutParams);
            indicatorSeekBar.Y();
        }
    }

    public void attachTo(IndicatorSeekBar indicatorSeekBar) {
        attachTo(indicatorSeekBar, -2);
    }

    public void attachTo(IndicatorSeekBar indicatorSeekBar, int i11) {
        if (indicatorSeekBar == null) {
            throw new NullPointerException("the seek bar wanna attach to IndicatorStayLayout can not be null value.");
        }
        a(indicatorSeekBar, i11);
        addView(indicatorSeekBar, i11 + 1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount), childCount);
        }
        super.onFinishInflate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i11) {
        if (i11 != 1) {
            throw new IllegalArgumentException("IndicatorStayLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i11);
    }
}
