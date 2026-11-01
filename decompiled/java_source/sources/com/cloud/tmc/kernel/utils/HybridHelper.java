package com.cloud.tmc.kernel.utils;

import android.content.Context;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/kernel/utils/HybridHelper;", "", "()V", "Dark_THEME_ENABLE_STATUS_PARAM_KEY", "", "getDarkThemeEnableStatusParamValue", "", "context", "Landroid/content/Context;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HybridHelper {
    public static final String Dark_THEME_ENABLE_STATUS_PARAM_KEY = "_transsion_dlt_miniapp_dark_theme_is_enabled";
    public static final HybridHelper INSTANCE = new HybridHelper();

    private HybridHelper() {
    }

    @JvmStatic
    public static final int getDarkThemeEnableStatusParamValue(Context context) {
        Intrinsics.h(context, "context");
        return SystemUtils.darkThemeIsEnabled(context) ? 1 : 0;
    }
}
