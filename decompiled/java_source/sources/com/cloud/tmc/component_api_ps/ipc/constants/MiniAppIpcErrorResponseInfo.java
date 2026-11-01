package com.cloud.tmc.component_api_ps.ipc.constants;

import com.cloud.tmc.component_api_ps.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/component_api_ps/ipc/constants/MiniAppIpcErrorResponseInfo;", "", "()V", "ERROR_CODE_HAPPENED_EXCEPTION", "", "ERROR_CODE_INVOKE_FAILED", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppIpcErrorResponseInfo {
    public static final int ERROR_CODE_HAPPENED_EXCEPTION = -199;
    public static final int ERROR_CODE_INVOKE_FAILED = -196;
    public static final MiniAppIpcErrorResponseInfo INSTANCE = new MiniAppIpcErrorResponseInfo();

    private MiniAppIpcErrorResponseInfo() {
    }
}
