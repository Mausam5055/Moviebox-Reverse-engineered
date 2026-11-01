package com.cloud.tmc.integration.utils;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.cloud.tmc.miniutils.util.BarUtils;

/* JADX INFO: loaded from: classes3.dex */
public class MiniBarUtils {
    public static int getStatusHeight() {
        return BarUtils.getStatusBarHeight();
    }

    public static boolean isNightMode(@NonNull Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static void setStatusBarLightMode(@NonNull Activity activity) {
        BarUtils.setStatusBarLightMode(activity, true);
    }

    public static void setStatusBarNightMode(@NonNull Activity activity) {
        BarUtils.setStatusBarLightMode(activity, false);
    }

    public static void transparentStatusBar(@NonNull Activity activity) {
        BarUtils.transparentStatusBar(activity);
    }
}
