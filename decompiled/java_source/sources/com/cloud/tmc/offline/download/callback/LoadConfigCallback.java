package com.cloud.tmc.offline.download.callback;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0005H&J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005H&¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;", "", "noNetwork", "", "url", "", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "", "errMsg", "onFailure", "onSuccess", "", "responseStr", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface LoadConfigCallback {
    void noNetwork(String url, int errCode, String errMsg);

    void onFailure(String url, int errCode, String errMsg);

    boolean onSuccess(String responseStr);
}
