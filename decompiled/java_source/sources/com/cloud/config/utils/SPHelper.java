package com.cloud.config.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0011\u0010\n\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/cloud/config/utils/SPHelper;", "", "<init>", "()V", "", "spName", "Ljava/lang/String;", "Lcom/transsion/core/utils/f;", "getInstance", "()Lcom/transsion/core/utils/f;", "instance", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SPHelper {
    public static final SPHelper INSTANCE = new SPHelper();
    private static final String spName = "cloud_config_sdk";

    private SPHelper() {
    }

    public final com.transsion.core.utils.f getInstance() {
        com.transsion.core.utils.f fVarE = com.transsion.core.utils.f.e(spName);
        Intrinsics.g(fVarE, "getInstance(spName)");
        return fVarE;
    }
}
