package com.cloud.tmc.integration.proxy;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.RefreshProxyImpl")
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\t\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\n\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u000b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/proxy/IRefreshProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "enableLoadMore", "", "tmcFragment", "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "enableRefresh", "startPullDownRefresh", "stopPullDownRefresh", "stopPullUpRefresh", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IRefreshProxy extends Proxiable {
    void enableLoadMore(TmcFragment tmcFragment, boolean enable);

    void enableRefresh(TmcFragment tmcFragment, boolean enable);

    boolean startPullDownRefresh(TmcFragment tmcFragment);

    boolean stopPullDownRefresh(TmcFragment tmcFragment);

    boolean stopPullUpRefresh(TmcFragment tmcFragment);
}
