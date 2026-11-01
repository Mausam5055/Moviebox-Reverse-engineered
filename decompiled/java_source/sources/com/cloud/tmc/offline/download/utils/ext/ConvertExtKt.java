package com.cloud.tmc.offline.download.utils.ext;

import com.cloud.tmc.offline.download.utils.ConvertUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"formatMemorySize", "", "", "com.cloud.tmc.offline_download"}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ConvertExtKt {
    public static final String formatMemorySize(long j11) {
        return ConvertUtils.getFormatMemorySize$default(ConvertUtils.INSTANCE, j11, 0, 2, null);
    }
}
