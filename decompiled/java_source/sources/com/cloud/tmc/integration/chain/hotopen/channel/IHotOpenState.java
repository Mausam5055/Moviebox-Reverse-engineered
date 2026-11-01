package com.cloud.tmc.integration.chain.hotopen.channel;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/integration/chain/hotopen/channel/IHotOpenState;", "", "keepSituation", "", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "dataBundle", "Landroid/os/Bundle;", "log", NotificationCompat.CATEGORY_MESSAGE, "", "reportNew", "reportOld", "reset", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IHotOpenState {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static void keepSituation(IHotOpenState iHotOpenState, AppChainContext appChainContext, Bundle dataBundle) {
            Intrinsics.h(appChainContext, "appChainContext");
            Intrinsics.h(dataBundle, "dataBundle");
        }

        public static void log(IHotOpenState iHotOpenState, String msg) {
            Intrinsics.h(msg, "msg");
            TmcLogger.d("chainPoint", "热启动执行流程 -> " + iHotOpenState.getClass().getName() + "_" + msg);
        }
    }

    void keepSituation(AppChainContext appChainContext, Bundle dataBundle);

    void log(String msg);

    void reportNew(AppChainContext appChainContext, Bundle dataBundle);

    void reportOld(AppChainContext appChainContext, Bundle dataBundle);

    void reset(AppChainContext appChainContext, Bundle dataBundle);
}
