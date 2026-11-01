package com.cloud.tmc.miniutils.util;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes3.dex */
public final class SizeUtils {

    public interface OnGetSizeListener {
        void onGetSize(View view);
    }

    private SizeUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static float applyDimension(float f11, int i11) {
        float f12;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        if (i11 == 0) {
            return f11;
        }
        if (i11 == 1) {
            f12 = displayMetrics.density;
        } else if (i11 == 2) {
            f12 = displayMetrics.scaledDensity;
        } else if (i11 == 3) {
            f11 *= displayMetrics.xdpi;
            f12 = 0.013888889f;
        } else if (i11 == 4) {
            f12 = displayMetrics.xdpi;
        } else {
            if (i11 != 5) {
                return 0.0f;
            }
            f11 *= displayMetrics.xdpi;
            f12 = 0.03937008f;
        }
        return f11 * f12;
    }

    public static int dp2px(float f11) {
        return (int) ((f11 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static void forceGetViewSize(final View view, final OnGetSizeListener onGetSizeListener) {
        view.post(new Runnable() { // from class: com.cloud.tmc.miniutils.util.SizeUtils.1
            @Override // java.lang.Runnable
            public void run() {
                OnGetSizeListener onGetSizeListener2 = onGetSizeListener;
                if (onGetSizeListener2 != null) {
                    onGetSizeListener2.onGetSize(view);
                }
            }
        });
    }

    public static int getMeasuredHeight(View view) {
        return measureView(view)[1];
    }

    public static int getMeasuredWidth(View view) {
        return measureView(view)[0];
    }

    public static int[] measureView(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i11 = layoutParams.height;
        view.measure(childMeasureSpec, i11 > 0 ? View.MeasureSpec.makeMeasureSpec(i11, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
        return new int[]{view.getMeasuredWidth(), view.getMeasuredHeight()};
    }

    public static int px2dp(float f11) {
        return (int) ((f11 / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2sp(float f11) {
        return (int) ((f11 / Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int sp2px(float f11) {
        return (int) ((f11 * Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
