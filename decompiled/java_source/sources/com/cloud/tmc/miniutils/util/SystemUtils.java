package com.cloud.tmc.miniutils.util;

import android.content.Context;
import com.cloud.tmc.miniutils.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/miniutils/util/SystemUtils;", "", "()V", "darkThemeIsEnabled", "", "context", "Landroid/content/Context;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SystemUtils {
    public static final SystemUtils INSTANCE = new SystemUtils();

    private SystemUtils() {
    }

    @JvmStatic
    public static final boolean darkThemeIsEnabled(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getResources().getConfiguration().uiMode & 48) == 32;
        } catch (Throwable unused) {
            return false;
        }
    }
}
