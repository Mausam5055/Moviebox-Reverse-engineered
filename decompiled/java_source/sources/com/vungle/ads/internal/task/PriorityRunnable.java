package com.vungle.ads.internal.task;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0096\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/vungle/ads/internal/task/PriorityRunnable;", "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor$ComparableRunnable;", "()V", TrackingKey.PRIORITY, "", "getPriority", "()I", "compareTo", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class PriorityRunnable implements VungleThreadPoolExecutor.ComparableRunnable {
    @Override // java.lang.Comparable
    public int compareTo(Object other) {
        Intrinsics.h(other, "other");
        if (!(other instanceof PriorityRunnable)) {
            return -1;
        }
        return Intrinsics.j(((PriorityRunnable) other).getPriority(), getPriority());
    }

    public abstract int getPriority();
}
