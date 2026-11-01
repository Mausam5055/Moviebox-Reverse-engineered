package com.tmc.network;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0007J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0007J\u0010\u0010\u001a\u001a\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u0004J\u0014\u0010\u001f\u001a\u00020\u00182\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0!R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Lcom/tmc/network/NetworkConfig;", "", "()V", "isNetworkImproveEnable", "", "isNetworkMonitorEnable", "monitorId", "", "monitorRandomNum", "packageName", "", "getPackageName", "()Ljava/lang/String;", "setPackageName", "(Ljava/lang/String;)V", "preConnectList", "Ljava/util/concurrent/CopyOnWriteArraySet;", "getPreConnectList", "()Ljava/util/concurrent/CopyOnWriteArraySet;", "setPreConnectList", "(Ljava/util/concurrent/CopyOnWriteArraySet;)V", "getAppMonitorId", "getAppMonitorRandom", "setAppMonitorId", "", "id", "setAppMonitorRandom", "num", "setNetworkImproveEnable", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "setNetworkMonitorEnable", "setPreHostList", "urlList", "", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkConfig {
    private static boolean isNetworkImproveEnable;
    private static boolean isNetworkMonitorEnable;
    public static final NetworkConfig INSTANCE = new NetworkConfig();
    private static CopyOnWriteArraySet<String> preConnectList = new CopyOnWriteArraySet<>();
    private static String packageName = "";
    private static int monitorId = -1;
    private static int monitorRandomNum = 1000;

    private NetworkConfig() {
    }

    public static /* synthetic */ void setAppMonitorRandom$default(NetworkConfig networkConfig, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 1000;
        }
        networkConfig.setAppMonitorRandom(i11);
    }

    public final int getAppMonitorId() {
        return monitorId;
    }

    public final int getAppMonitorRandom() {
        return monitorRandomNum;
    }

    public final String getPackageName() {
        return packageName;
    }

    public final CopyOnWriteArraySet<String> getPreConnectList() {
        return preConnectList;
    }

    public final boolean isNetworkImproveEnable() {
        return isNetworkImproveEnable;
    }

    public final boolean isNetworkMonitorEnable() {
        return isNetworkMonitorEnable;
    }

    public final void setAppMonitorId(int id2) {
        monitorId = id2;
    }

    public final void setAppMonitorRandom(int num) {
        monitorRandomNum = num;
    }

    public final void setNetworkImproveEnable(boolean enable) {
        isNetworkImproveEnable = enable;
    }

    public final void setNetworkMonitorEnable(boolean enable) {
        isNetworkMonitorEnable = enable;
    }

    public final void setPackageName(String str) {
        packageName = str;
    }

    public final void setPreConnectList(CopyOnWriteArraySet<String> copyOnWriteArraySet) {
        Intrinsics.h(copyOnWriteArraySet, "<set-?>");
        preConnectList = copyOnWriteArraySet;
    }

    public final void setPreHostList(List<String> urlList) {
        Intrinsics.h(urlList, "urlList");
        preConnectList.addAll(urlList);
    }
}
