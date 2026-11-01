package com.cloud.tmc.integration.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/utils/DisplayUtils;", "", "()V", "TAG", "", "getNavigationBarHeight", "", "context", "Landroid/content/Context;", "getStatusBarHeight", "getTitleAndStatusBarHeight", "activity", "Landroid/app/Activity;", "isExistNavigationBar", "", "isExistStatusBar", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DisplayUtils {
    public static final DisplayUtils INSTANCE = new DisplayUtils();
    private static final String TAG = "DisplayUtils";

    private DisplayUtils() {
    }

    @JvmStatic
    public static final int getNavigationBarHeight(Context context) {
        Intrinsics.h(context, "context");
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @JvmStatic
    public static final int getStatusBarHeight(Context context) {
        Intrinsics.h(context, "context");
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @JvmStatic
    public static final int getTitleAndStatusBarHeight(Activity activity) {
        Intrinsics.h(activity, "activity");
        try {
            Rect rect = new Rect();
            activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            return DimensionUtil.dip2px(activity, 48.0f) + rect.top;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getTitleAndStatusBarHeight...e=" + th2);
            return DimensionUtil.dip2px(activity, 1.0f) * 73;
        }
    }

    @JvmStatic
    public static final boolean isExistNavigationBar(Context context) {
        Intrinsics.h(context, "context");
        return getNavigationBarHeight(context) != 0 && (com.cloud.tmc.miniutils.util.ScreenUtils.getScreenHeight() - com.cloud.tmc.miniutils.util.ScreenUtils.getAppScreenHeight()) - getStatusBarHeight(context) >= getNavigationBarHeight(context);
    }

    @JvmStatic
    public static final boolean isExistStatusBar(Context context) {
        Intrinsics.h(context, "context");
        if (getStatusBarHeight(context) == 0) {
            return false;
        }
        if (isExistNavigationBar(context)) {
            return (com.cloud.tmc.miniutils.util.ScreenUtils.getScreenHeight() - com.cloud.tmc.miniutils.util.ScreenUtils.getAppScreenHeight()) - getNavigationBarHeight(context) >= getStatusBarHeight(context);
        }
        return com.cloud.tmc.miniutils.util.ScreenUtils.getScreenHeight() - com.cloud.tmc.miniutils.util.ScreenUtils.getAppScreenHeight() >= getStatusBarHeight(context);
    }
}
