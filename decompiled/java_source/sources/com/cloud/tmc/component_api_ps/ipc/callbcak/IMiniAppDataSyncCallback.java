package com.cloud.tmc.component_api_ps.ipc.callbcak;

import android.os.Bundle;
import com.cloud.tmc.component_api_ps.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;", "", "onSyncData", "", EventConstants.KEY_EVENT_NAME, "", "bundle", "Landroid/os/Bundle;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IMiniAppDataSyncCallback {
    void onSyncData(String eventName, Bundle bundle);
}
