package com.cloud.tmc.offline.download.utils;

import android.os.Looper;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.lifecycle.MiniAppLifecycleObserver;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/LifecycleUtils;", "", "()V", "TAG", "", "addOfflineLifecycleObserver", "", "appId", RequestParameters.SUBRESOURCE_LIFECYCLE, "Landroidx/lifecycle/Lifecycle;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LifecycleUtils {
    public static final LifecycleUtils INSTANCE = new LifecycleUtils();
    private static final String TAG = "TmcOfflineDownload: LifecycleUtils";

    private LifecycleUtils() {
    }

    public final void addOfflineLifecycleObserver(String appId, Lifecycle lifecycle) {
        if (appId == null || appId.length() == 0 || lifecycle == null) {
            TmcLogger.d(TAG, "appId or lifecycle is null or empty");
        } else if (Intrinsics.c(Looper.getMainLooper(), Looper.myLooper())) {
            lifecycle.a(new MiniAppLifecycleObserver(appId));
        } else {
            TmcLogger.d(TAG, "当前不在主线程中，不允许注册观察者");
        }
    }
}
