package com.cloud.tmc.miniapp.widget.pulldownrefresh.util;

import android.content.res.Resources;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ScrollingView;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0O0 implements Interpolator {
    public static float OooO0O0 = Resources.getSystem().getDisplayMetrics().density;
    public static final float OooO0OO;
    public static final float OooO0Oo;
    public final int OooO00o;

    static {
        float fOooO0O0 = 1.0f / OooO0O0(1.0f);
        OooO0OO = fOooO0O0;
        OooO0Oo = 1.0f - (OooO0O0(1.0f) * fOooO0O0);
    }

    public OooO0O0(int i11) {
        this.OooO00o = i11;
    }

    public static int OooO00o(float f11) {
        return (int) ((f11 * OooO0O0) + 0.5f);
    }

    public static boolean OooO00o(View view) {
        return OooO0O0(view) || (view instanceof ViewPager) || (view instanceof NestedScrollingParent);
    }

    public static boolean OooO00o(@NonNull View view, int i11) {
        return view.canScrollVertically(i11);
    }

    public static boolean OooO00o(@NonNull View view, PointF pointF) {
        if (OooO00o(view, -1) && view.getVisibility() == 0) {
            return false;
        }
        if (!(view instanceof ViewGroup) || pointF == null) {
            return true;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        PointF pointF2 = new PointF();
        for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount - 1);
            if (OooO00o(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                if ("fixed".equals(childAt.getTag()) || "fixed-bottom".equals(childAt.getTag())) {
                    return false;
                }
                pointF.offset(pointF2.x, pointF2.y);
                boolean zOooO00o = OooO00o(childAt, pointF);
                pointF.offset(-pointF2.x, -pointF2.y);
                return zOooO00o;
            }
        }
        return true;
    }

    public static boolean OooO00o(@NonNull View view, PointF pointF, boolean z10) {
        if (OooO00o(view, 1) && view.getVisibility() == 0) {
            return false;
        }
        if ((view instanceof ViewGroup) && pointF != null && !OooO0O0(view)) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (OooO00o(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if ("fixed".equals(childAt.getTag()) || "fixed-top".equals(childAt.getTag())) {
                        return false;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    boolean zOooO00o = OooO00o(childAt, pointF, z10);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return zOooO00o;
                }
            }
        }
        return z10 || OooO00o(view, -1);
    }

    public static boolean OooO00o(@NonNull View view, @NonNull View view2, float f11, float f12, PointF pointF) {
        if (view2.getVisibility() != 0) {
            return false;
        }
        float[] fArr = {f11, f12};
        fArr[0] = (view.getScrollX() - view2.getLeft()) + f11;
        float scrollY = fArr[1] + (view.getScrollY() - view2.getTop());
        fArr[1] = scrollY;
        float f13 = fArr[0];
        boolean z10 = f13 >= 0.0f && scrollY >= 0.0f && f13 < ((float) view2.getWidth()) && fArr[1] < ((float) view2.getHeight());
        if (z10) {
            pointF.set(fArr[0] - f11, fArr[1] - f12);
        }
        return z10;
    }

    public static float OooO0O0(float f11) {
        float f12 = f11 * 8.0f;
        return f12 < 1.0f ? f12 - (1.0f - ((float) Math.exp(-f12))) : 0.36787945f + ((1.0f - ((float) Math.exp(1.0f - f12))) * 0.63212055f);
    }

    public static boolean OooO0O0(View view) {
        return (view instanceof AbsListView) || (view instanceof ScrollView) || (view instanceof ScrollingView) || (view instanceof WebView) || (view instanceof NestedScrollingChild);
    }

    public static int OooO0OO(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i11 = layoutParams.height;
        view.measure(childMeasureSpec, i11 > 0 ? View.MeasureSpec.makeMeasureSpec(i11, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
        return view.getMeasuredHeight();
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f11) {
        if (this.OooO00o == 1) {
            float f12 = 1.0f - f11;
            return 1.0f - (f12 * f12);
        }
        float fOooO0O0 = OooO0O0(f11) * OooO0OO;
        return fOooO0O0 > 0.0f ? fOooO0O0 + OooO0Oo : fOooO0O0;
    }
}
