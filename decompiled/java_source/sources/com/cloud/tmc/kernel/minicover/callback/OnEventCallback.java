package com.cloud.tmc.kernel.minicover.callback;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.utils.JsonObjectUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0014\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;", "", "onFailed", "", "errorCode", "", "errMsg", "onSuccess", "jsonObjectBuilder", "Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface OnEventCallback {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ void onSuccess$default(OnEventCallback onEventCallback, JsonObjectUtils.Builder builder, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onSuccess");
            }
            if ((i11 & 1) != 0) {
                builder = null;
            }
            onEventCallback.onSuccess(builder);
        }
    }

    void onFailed(String errorCode, String errMsg);

    void onSuccess(JsonObjectUtils.Builder jsonObjectBuilder);
}
