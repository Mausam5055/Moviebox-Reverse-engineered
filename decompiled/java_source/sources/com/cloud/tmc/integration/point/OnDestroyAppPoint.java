package com.cloud.tmc.integration.point;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.OnDestroyAppPointImpl")
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;", "Lcom/cloud/tmc/kernel/extension/Extension;", "onDestroy", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "extensionManager", "Lcom/cloud/tmc/kernel/extension/ExtensionManager;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface OnDestroyAppPoint extends Extension {
    void onDestroy(App app, ExtensionManager extensionManager);
}
