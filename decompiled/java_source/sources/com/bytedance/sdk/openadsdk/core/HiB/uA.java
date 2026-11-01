package com.bytedance.sdk.openadsdk.core.HiB;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public class uA {
    public static int Sj(int i11) {
        return ((i11 & 3) == 3 || (i11 & 5) == 5) ? i11 | 8388608 : i11;
    }

    public static ViewGroup.LayoutParams Sj(View view, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParamsSP = sP(view, layoutParams);
        if (layoutParamsSP != null) {
            layoutParams = layoutParamsSP;
        }
        Sj(layoutParams);
        return layoutParams;
    }

    private static void Sj(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginStart(marginLayoutParams.leftMargin);
            marginLayoutParams.setMarginEnd(marginLayoutParams.rightMargin);
        }
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.gravity = Sj(layoutParams2.gravity);
        }
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams3.gravity = Sj(layoutParams3.gravity);
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams;
            int[] rules = layoutParams4.getRules();
            if (rules[9] != 0) {
                layoutParams4.addRule(20);
            }
            if (rules[11] != 0) {
                layoutParams4.addRule(21);
            }
            int i11 = rules[0];
            if (i11 != 0) {
                layoutParams4.addRule(16, i11);
            }
            int i12 = rules[1];
            if (i12 != 0) {
                layoutParams4.addRule(17, i12);
            }
            int i13 = rules[5];
            if (i13 != 0) {
                layoutParams4.addRule(18, i13);
            }
            int i14 = rules[7];
            if (i14 != 0) {
                layoutParams4.addRule(19, i14);
            }
        }
    }

    private static ViewGroup.LayoutParams sP(View view, ViewGroup.LayoutParams layoutParams) {
        ViewParent parent;
        ViewGroup.LayoutParams layoutParams2;
        if (view == null || layoutParams == null || (parent = view.getParent()) == null) {
            return null;
        }
        if (!(parent instanceof LinearLayout)) {
            layoutParams2 = null;
        } else {
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                return null;
            }
            layoutParams2 = new LinearLayout.LayoutParams(layoutParams);
        }
        if (parent instanceof RelativeLayout) {
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                return null;
            }
            layoutParams2 = new RelativeLayout.LayoutParams(layoutParams);
        }
        if (!(parent instanceof FrameLayout)) {
            return layoutParams2;
        }
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            return null;
        }
        return new FrameLayout.LayoutParams(layoutParams);
    }
}
