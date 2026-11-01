package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    public static int Sj = -1;

    public static int Sj(Context context, int i11) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context != null) {
            try {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null && (configuration = resources.getConfiguration()) != null) {
                    int i12 = configuration.orientation;
                    if (i11 == 0) {
                        i11 = i12;
                    }
                    return i11 == i12 ? Math.round(displayMetrics.heightPixels / displayMetrics.density) : Math.round(displayMetrics.widthPixels / displayMetrics.density);
                }
            } catch (Throwable unused) {
                return Sj;
            }
        }
        return Sj;
    }

    public static int Sj(Context context, int i11, int i12) {
        int iRound;
        int iSj = Sj(context, i12);
        if (iSj == -1) {
            return Sj;
        }
        int iMin = Math.min(90, Math.round(iSj * 0.15f));
        if (i11 > 655) {
            iRound = Math.round((i11 / 728.0f) * 90.0f);
        } else if (i11 > 632) {
            iRound = 81;
        } else if (i11 > 526) {
            iRound = Math.round((i11 / 468.0f) * 60.0f);
        } else {
            iRound = i11 > 432 ? 68 : Math.round((i11 / 320.0f) * 50.0f);
        }
        return Math.max(Math.min(iRound, iMin), 50);
    }
}
