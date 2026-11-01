package com.cloud.tmc.integration.performance;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.VersionUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/integration/performance/WarmupExtension;", "", "isValid", "", "lowestSupportVersion", "", "deployVersion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface WarmupExtension {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static boolean isValid(WarmupExtension warmupExtension, String str, String str2) {
            if (str == null) {
                str = "";
            }
            if (str2 == null) {
                str2 = "";
            }
            boolean zIsSupportWarmupFramework = VersionUtils.INSTANCE.isSupportWarmupFramework(str, str2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("框架包是否支持：");
            sb2.append(!zIsSupportWarmupFramework);
            sb2.append("; 目标版本：");
            sb2.append(str);
            sb2.append(", 预热版本：");
            sb2.append(str2);
            TmcLogger.d("InnerWarmup", sb2.toString());
            return !zIsSupportWarmupFramework;
        }
    }

    boolean isValid(String lowestSupportVersion, String deployVersion);
}
