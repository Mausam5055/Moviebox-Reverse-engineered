package com.cloud.tmc.kernel.minicover.lifecycle;

import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.minicover.callback.OnViewChangeCallback;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001:\u0001\u000eJ\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;", "", "onAddView", "", "customObject", "Lcom/google/gson/JsonObject;", "onViewChangeCallback", "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;", "onDestory", "onPause", "onRemove", "onResume", "onStop", "onUpdateView", "ViewAction", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface BaseComponentLifecycle {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle$ViewAction;", "", "(Ljava/lang/String;I)V", "ON_ADD_VIEW", "ON_UPDATE_VIEW", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ViewAction {
        ON_ADD_VIEW,
        ON_UPDATE_VIEW
    }

    void onAddView(JsonObject customObject, OnViewChangeCallback onViewChangeCallback);

    void onDestory();

    void onPause();

    void onRemove();

    void onResume();

    void onStop();

    void onUpdateView(JsonObject customObject, OnViewChangeCallback onViewChangeCallback);
}
