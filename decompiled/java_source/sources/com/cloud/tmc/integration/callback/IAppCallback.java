package com.cloud.tmc.integration.callback;

import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH&¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/callback/IAppCallback;", "", "validPushPage", "", "path", "", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", "context", "Landroid/content/Context;", TmcConstants.EXTRA_START_PARAMS, "Landroid/os/Bundle;", TmcConstants.EXTRA_SCENE_PARAMS, "loadCheckCallback", "Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IAppCallback {
    boolean validPushPage(String path, AppModel appModel, Context context, Bundle startParams, Bundle sceneParams, ISubpackageLoadCheckCallback loadCheckCallback);
}
