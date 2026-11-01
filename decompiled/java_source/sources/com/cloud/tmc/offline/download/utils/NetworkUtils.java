package com.cloud.tmc.offline.download.utils;

import android.net.NetworkInfo;
import com.cloud.tmc.offline.download.OfflineManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u0007\u001a\u00020\u0006H\u0007J\b\u0010\b\u001a\u00020\u0006H\u0007J\b\u0010\t\u001a\u00020\u0006H\u0007¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/NetworkUtils;", "", "()V", "getNetworkInfo", "Landroid/net/NetworkInfo;", "isConnected", "", "isMobileConn", "isOnline", "isWifiConn", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkUtils {
    public static final NetworkUtils INSTANCE = new NetworkUtils();

    private NetworkUtils() {
    }

    @JvmStatic
    public static final NetworkInfo getNetworkInfo() {
        if (OfflineManager.isInit) {
            return new NetworkHelper(OfflineManager.getContext$com_cloud_tmc_offline_download()).getNetworkInfo();
        }
        return null;
    }

    @JvmStatic
    public static final boolean isConnected() {
        if (OfflineManager.isInit) {
            return new NetworkHelper(OfflineManager.getContext$com_cloud_tmc_offline_download()).isConnected();
        }
        return false;
    }

    @JvmStatic
    public static final boolean isMobileConn() {
        if (OfflineManager.isInit) {
            return new NetworkHelper(OfflineManager.getContext$com_cloud_tmc_offline_download()).isMobileConn();
        }
        return false;
    }

    @JvmStatic
    public static final boolean isOnline() {
        if (OfflineManager.isInit) {
            return new NetworkHelper(OfflineManager.getContext$com_cloud_tmc_offline_download()).isOnline();
        }
        return false;
    }

    @JvmStatic
    public static final boolean isWifiConn() {
        if (OfflineManager.isInit) {
            return new NetworkHelper(OfflineManager.getContext$com_cloud_tmc_offline_download()).isWifiConn();
        }
        return false;
    }
}
