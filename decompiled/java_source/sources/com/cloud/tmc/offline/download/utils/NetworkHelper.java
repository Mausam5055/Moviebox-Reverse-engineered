package com.cloud.tmc.offline.download.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\nH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/NetworkHelper;", "Lcom/cloud/tmc/offline/download/utils/NetworkConnectivity;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "getNetworkInfo", "Landroid/net/NetworkInfo;", "isConnected", "", "isMobileConn", "isOnline", "isWifiConn", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkHelper implements NetworkConnectivity {
    private final Context context;

    public NetworkHelper(Context context) {
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // com.cloud.tmc.offline.download.utils.NetworkConnectivity
    public NetworkInfo getNetworkInfo() {
        Context applicationContext;
        Context context = this.context;
        Object systemService = (context == null || (applicationContext = context.getApplicationContext()) == null) ? null : applicationContext.getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    @Override // com.cloud.tmc.offline.download.utils.NetworkConnectivity
    public boolean isConnected() {
        NetworkInfo networkInfo = getNetworkInfo();
        return networkInfo != null && networkInfo.isConnected();
    }

    @Override // com.cloud.tmc.offline.download.utils.NetworkConnectivity
    public boolean isMobileConn() {
        NetworkInfo networkInfo = getNetworkInfo();
        return networkInfo != null && networkInfo.getType() == 0 && networkInfo.isConnected();
    }

    @Override // com.cloud.tmc.offline.download.utils.NetworkConnectivity
    public boolean isOnline() {
        NetworkInfo networkInfo = getNetworkInfo();
        if (networkInfo != null) {
            return networkInfo.isAvailable();
        }
        return false;
    }

    @Override // com.cloud.tmc.offline.download.utils.NetworkConnectivity
    public boolean isWifiConn() {
        NetworkInfo networkInfo = getNetworkInfo();
        return networkInfo != null && networkInfo.getType() == 1 && networkInfo.isConnected();
    }
}
