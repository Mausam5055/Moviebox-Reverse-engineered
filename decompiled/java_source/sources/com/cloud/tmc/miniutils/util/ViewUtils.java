package com.cloud.tmc.miniutils.util;

import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes3.dex */
public class ViewUtils {
    public static void fixScrollViewTopping(View view) {
        view.setFocusable(false);
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            childAt.setFocusable(false);
            if (childAt instanceof ViewGroup) {
                fixScrollViewTopping(childAt);
            }
        }
    }

    public static boolean isLayoutRtl() {
        return TextUtils.getLayoutDirectionFromLocale(Build.VERSION.SDK_INT >= 24 ? Utils.getApp().getResources().getConfiguration().getLocales().get(0) : Utils.getApp().getResources().getConfiguration().locale) == 1;
    }

    public static View layoutId2View(int i11) {
        return ((LayoutInflater) Utils.getApp().getSystemService("layout_inflater")).inflate(i11, (ViewGroup) null);
    }

    public static void runOnUiThread(Runnable runnable) {
        UtilsBridge.runOnUiThread(runnable);
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j11) {
        UtilsBridge.runOnUiThreadDelayed(runnable, j11);
    }

    public static void setViewEnabled(View view, boolean z10) {
        setViewEnabled(view, z10, null);
    }

    public static void setViewEnabled(View view, boolean z10, View... viewArr) {
        if (view == null) {
            return;
        }
        if (viewArr != null) {
            for (View view2 : viewArr) {
                if (view == view2) {
                    return;
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                setViewEnabled(viewGroup.getChildAt(i11), z10, viewArr);
            }
        }
        view.setEnabled(z10);
    }
}
