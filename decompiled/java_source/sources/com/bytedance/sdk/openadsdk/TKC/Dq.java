package com.bytedance.sdk.openadsdk.TKC;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends ViewGroup implements TEQ.TKC {
    private final TEQ Sj;

    public Dq(Context context, TEQ teq) {
        super(context);
        this.Sj = teq;
        teq.Sj(this);
    }

    private ColorStateList Sj() {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{Color.rgb(255, 44, 85), ViewCompat.MEASURED_STATE_MASK});
    }

    private Drawable sP() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        float fSP = FPG.sP(getContext(), 5.0f);
        gradientDrawable.setCornerRadius(fSP);
        gradientDrawable.setColor(Color.parseColor("#0D000000"));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setStroke(FPG.sP(getContext(), 1.0f), Color.parseColor("#FE2C55"));
        gradientDrawable2.setCornerRadius(fSP);
        gradientDrawable2.setColor(Color.parseColor("#12FE2C55"));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_selected}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    private View sP(FilterWord filterWord) {
        TextView textView = new TextView(getContext());
        textView.setTag(filterWord);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        int iSP = FPG.sP(getContext(), 8.0f);
        marginLayoutParams.leftMargin = iSP;
        marginLayoutParams.bottomMargin = iSP;
        textView.setTextColor(Sj());
        textView.setText(filterWord.getName());
        textView.setPadding(iSP, iSP, iSP, iSP);
        textView.setBackground(sP());
        textView.setSelected(false);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.Dq.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Dq.this.Sj != null) {
                    if (view.isSelected()) {
                        Dq.this.Sj.Sj(TEQ.Sj);
                        return;
                    }
                    Object tag = view.getTag();
                    if (tag instanceof FilterWord) {
                        Dq.this.Sj.Sj((FilterWord) tag);
                    }
                }
            }
        });
        textView.setSelected(false);
        textView.setLayoutParams(marginLayoutParams);
        return textView;
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.TKC
    public void Sj(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null) {
                if (TEQ.Sj.equals(filterWord)) {
                    childAt.setSelected(false);
                } else {
                    childAt.setSelected(filterWord.equals(childAt.getTag()));
                }
            }
        }
    }

    public void Sj(List<FilterWord> list) {
        if (list == null) {
            return;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            FilterWord filterWord = list.get(i11);
            if (filterWord != null) {
                addView(sP(filterWord));
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int i15;
        int childCount = getChildCount();
        int i16 = i13 - i11;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (i17 < childCount) {
            View childAt = getChildAt(i17);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i20 = i17 != 0 ? marginLayoutParams.leftMargin : 0;
            if (measuredWidth + i20 + i18 < i16) {
                i15 = i18 + i20;
            } else {
                i19 += marginLayoutParams.bottomMargin + measuredHeight;
                i15 = 0;
            }
            childAt.layout(i15, marginLayoutParams.topMargin + i19, i15 + measuredWidth, measuredHeight + i19);
            i18 = i15 + measuredWidth + marginLayoutParams.rightMargin;
            i17++;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        View.MeasureSpec.getMode(i11);
        View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i11);
        View.MeasureSpec.getSize(i12);
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < getChildCount()) {
            View childAt = getChildAt(i13);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            measureChild(childAt, i11, i12);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i16 = i13 != 0 ? marginLayoutParams.leftMargin : 0;
            int i17 = (measuredWidth + i16) + i15 < size ? i15 + i16 : 0;
            if (i17 == 0) {
                i14 += measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            }
            i15 = i17 + measuredWidth + marginLayoutParams.rightMargin;
            i13++;
        }
        setMeasuredDimension(size, i14);
    }
}
