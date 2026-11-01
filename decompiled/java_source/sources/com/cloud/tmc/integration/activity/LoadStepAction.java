package com.cloud.tmc.integration.activity;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/integration/activity/LoadStepAction;", "", "(Ljava/lang/String;I)V", "STEP_START_LOADING", "STEP_UPDATE_APP_INFO", "STEP_FINISH_DOWNLOAD", "STEP_FINISH_DECOMPRESS", "STEP_FINISH_CREAT_RENDER", "STEP_FINISH_LOAD_RENDER", "STEP_FINISH_MINIAPP_LOAD", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum LoadStepAction {
    STEP_START_LOADING,
    STEP_UPDATE_APP_INFO,
    STEP_FINISH_DOWNLOAD,
    STEP_FINISH_DECOMPRESS,
    STEP_FINISH_CREAT_RENDER,
    STEP_FINISH_LOAD_RENDER,
    STEP_FINISH_MINIAPP_LOAD
}
