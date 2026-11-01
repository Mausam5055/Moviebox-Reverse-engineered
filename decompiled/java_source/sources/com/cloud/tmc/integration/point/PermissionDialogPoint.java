package com.cloud.tmc.integration.point;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.callback.PrivacyCallback;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.extension.Extension;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.PermissionDialogPointImp")
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/integration/point/PermissionDialogPoint;", "Lcom/cloud/tmc/kernel/extension/Extension;", "privacyDialogDismiss", "", "appId", "", TmcConstants.EXTRA_START_TOKEN, "", "registerCallback", "privacyCallback", "Lcom/cloud/tmc/integration/callback/PrivacyCallback;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface PermissionDialogPoint extends Extension {
    void privacyDialogDismiss(String appId, long startToken);

    void registerCallback(PrivacyCallback privacyCallback);
}
