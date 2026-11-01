package com.cloud.tmc.integration.point;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.extension.Extension;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H&¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;", "Lcom/cloud/tmc/kernel/extension/Extension;", "dispatchMsg", "Lcom/google/gson/JsonObject;", "eventTag", "", "method", NotificationCompat.CATEGORY_MESSAGE, "sendMsg", "", NotificationCompat.CATEGORY_EVENT, BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IIDEDispatcherPoint extends Extension {
    JsonObject dispatchMsg(String eventTag, String method, JsonObject msg);

    void sendMsg(String event, JsonObject msg);
}
