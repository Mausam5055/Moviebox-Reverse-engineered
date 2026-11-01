package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointConstants;", "", "()V", "POINT_FOREGROUND_COST_TIME", "", "POINT_FOREGROUND_END_TIME", "POINT_FOREGROUND_RANDOM_ID", "POINT_FOREGROUND_START_COUNT", "POINT_FOREGROUND_START_TIME", "POINT_PAGE_PATH", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PointConstants {
    public static final PointConstants INSTANCE = new PointConstants();
    public static final String POINT_FOREGROUND_COST_TIME = "foregroundTime";
    public static final String POINT_FOREGROUND_END_TIME = "foregroundEndTime";
    public static final String POINT_FOREGROUND_RANDOM_ID = "foregroundRandomId";
    public static final String POINT_FOREGROUND_START_COUNT = "foregroundStartCount";
    public static final String POINT_FOREGROUND_START_TIME = "foregroundStartTime";
    public static final String POINT_PAGE_PATH = "page_path";

    private PointConstants() {
    }
}
