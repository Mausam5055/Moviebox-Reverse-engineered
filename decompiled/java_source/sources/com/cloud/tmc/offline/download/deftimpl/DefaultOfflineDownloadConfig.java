package com.cloud.tmc.offline.download.deftimpl;

import com.cloud.tmc.offline.download.intf.IOfflineDownloadConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lcom/cloud/tmc/offline/download/deftimpl/DefaultOfflineDownloadConfig;", "Lcom/cloud/tmc/offline/download/intf/IOfflineDownloadConfig;", "()V", "enableNetworkListener", "", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultOfflineDownloadConfig implements IOfflineDownloadConfig {
    @Override // com.cloud.tmc.offline.download.intf.IOfflineDownloadConfig
    public boolean enableNetworkListener() {
        return true;
    }
}
