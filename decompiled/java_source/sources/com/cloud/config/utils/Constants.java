package com.cloud.config.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/cloud/config/utils/Constants;", "", "()V", "Companion", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Constants {
    private static final String CLOUD_CONFIG_TEST_URL = "https://cloud-config-oss-test.shalltry.com/cloudconfig/config/";
    private static final String CLOUD_CONFIG_URL = "https://cloud-config-oss.shalltry.com/cloudconfig/config/";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String SHUNT_OPEN_CONFIG_TEST_URL = "http://cloud-config-api-test.shalltry.com/front/cloudconfig/consumer-not-login/cloudconfig/query/queryCloudConfigInfo";
    private static final String SHUNT_OPEN_CONFIG_URL = "https://cloud-config-api.shalltry.com/front/cloudconfig/consumer-not-login/cloudconfig/query/queryCloudConfigInfo";

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/cloud/config/utils/Constants$Companion;", "", "()V", "CLOUD_CONFIG_TEST_URL", "", "CLOUD_CONFIG_URL", "SHUNT_OPEN_CONFIG_TEST_URL", "SHUNT_OPEN_CONFIG_URL", "getConfigUrl", "debugModel", "", "getShuntOpenUrl", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getConfigUrl(boolean debugModel) {
            return debugModel ? Constants.CLOUD_CONFIG_TEST_URL : Constants.CLOUD_CONFIG_URL;
        }

        public final String getShuntOpenUrl(boolean debugModel) {
            return debugModel ? Constants.SHUNT_OPEN_CONFIG_TEST_URL : Constants.SHUNT_OPEN_CONFIG_URL;
        }
    }
}
