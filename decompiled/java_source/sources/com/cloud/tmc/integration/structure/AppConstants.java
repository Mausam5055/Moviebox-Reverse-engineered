package com.cloud.tmc.integration.structure;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/integration/structure/AppConstants;", "", "()V", AppConstants.APP_INFO_MODEL, "", AppConstants.APP_LAST_UPDATE_TIME, "APP_TYPE_H5", "APP_TYPE_TINY_INNER", "APP_TYPE_TINY_THIRDPARTY", "TAG", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppConstants {
    public static final String APP_INFO_MODEL = "APP_INFO_MODEL";
    public static final String APP_LAST_UPDATE_TIME = "APP_LAST_UPDATE_TIME";
    public static final String APP_TYPE_H5 = "H5";
    public static final String APP_TYPE_TINY_INNER = "TINY_INNER";
    public static final String APP_TYPE_TINY_THIRDPARTY = "TINY_TP";
    public static final AppConstants INSTANCE = new AppConstants();
    public static final String TAG = "Tmcintegration";

    private AppConstants() {
    }
}
