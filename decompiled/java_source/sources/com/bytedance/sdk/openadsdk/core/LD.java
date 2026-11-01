package com.bytedance.sdk.openadsdk.core;

import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class LD {
    private static int EjP(View view, int i11) {
        if (i11 == 3) {
            return FPG.HiB(view.getContext().getApplicationContext()) / 2;
        }
        return 20;
    }

    public static float Sj(View view) {
        if (view != null) {
            try {
                if (view.getVisibility() == 0 && view.getParent() != null) {
                    Rect rect = new Rect();
                    if (!view.getGlobalVisibleRect(rect)) {
                        return -1.0f;
                    }
                    long jHeight = ((long) rect.height()) * ((long) rect.width());
                    long height = ((long) view.getHeight()) * ((long) view.getWidth());
                    if (height <= 0) {
                        return -1.0f;
                    }
                    return jHeight / height;
                }
            } catch (Throwable unused) {
            }
        }
        return -1.0f;
    }

    private static boolean Sj(View view, int i11) {
        float fSj = Sj(view);
        return fSj > 0.0f && fSj >= ((float) i11) / 100.0f;
    }

    public static boolean Sj(View view, int i11, int i12) {
        if (i12 == 1) {
            while (view != null) {
                try {
                    if (view.getVisibility() != 0) {
                        return false;
                    }
                    if ((view instanceof com.bytedance.sdk.openadsdk.core.Dq.RiZ) || (view instanceof com.bytedance.sdk.openadsdk.core.TKC.TKC)) {
                        break;
                    }
                    view = (View) view.getParent();
                } catch (Throwable unused) {
                }
            }
        }
        return sP(view, i11, i12) == 0;
    }

    private static int TKC(View view, int i11) {
        if (i11 == 3) {
            return (int) (((double) FPG.TKC(view.getContext().getApplicationContext())) * 0.7d);
        }
        return 20;
    }

    private static int sP(View view, int i11, int i12) throws Throwable {
        if (view.getWindowVisibility() != 0) {
            return 4;
        }
        if (!sP(view)) {
            return 1;
        }
        if (sP(view, i12)) {
            return !Sj(view, i11) ? 3 : 0;
        }
        return 6;
    }

    private static boolean sP(View view) {
        return view != null && view.isShown();
    }

    private static boolean sP(View view, int i11) {
        return view.getWidth() >= TKC(view, i11) && view.getHeight() >= EjP(view, i11);
    }
}
