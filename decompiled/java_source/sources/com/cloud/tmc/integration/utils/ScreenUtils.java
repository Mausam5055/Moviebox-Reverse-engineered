package com.cloud.tmc.integration.utils;

import android.content.Context;
import android.os.PowerManager;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.ext.SystemServiceExtKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0018\u00010\bR\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/utils/ScreenUtils;", "", "()V", "KEEP_SCREEN_ON_TIMEOUT", "", "TAG", "", "wakeLock", "Landroid/os/PowerManager$WakeLock;", "Landroid/os/PowerManager;", "acquire", "", "context", "Landroid/content/Context;", "release", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ScreenUtils {
    public static final ScreenUtils INSTANCE = new ScreenUtils();
    private static final long KEEP_SCREEN_ON_TIMEOUT = 600000;
    private static final String TAG = "ScreenUtils";
    private static PowerManager.WakeLock wakeLock;

    private ScreenUtils() {
    }

    public final void acquire(Context context) {
        PowerManager.WakeLock wakeLockNewWakeLock;
        Intrinsics.h(context, "context");
        PowerManager powerManager = SystemServiceExtKt.getPowerManager(context);
        if (powerManager != null) {
            wakeLockNewWakeLock = powerManager.newWakeLock(268435466, context.getPackageName() + ":ScreenUtils");
        } else {
            wakeLockNewWakeLock = null;
        }
        wakeLock = wakeLockNewWakeLock;
        if (wakeLockNewWakeLock != null) {
            wakeLockNewWakeLock.acquire(600000L);
        }
    }

    public final void release() {
        PowerManager.WakeLock wakeLock2 = wakeLock;
        if (wakeLock2 != null && wakeLock2.isHeld()) {
            wakeLock2.release();
        }
        wakeLock = null;
    }
}
