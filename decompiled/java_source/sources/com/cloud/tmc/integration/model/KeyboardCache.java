package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\n\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/model/KeyboardCache;", "", "pageCache", "Ljava/util/WeakHashMap;", "", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "(Ljava/util/WeakHashMap;)V", "getPageCache", "()Ljava/util/WeakHashMap;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class KeyboardCache {
    private final WeakHashMap<String, BridgeCallback> pageCache;

    /* JADX WARN: Multi-variable type inference failed */
    public KeyboardCache() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public KeyboardCache(WeakHashMap<String, BridgeCallback> pageCache) {
        Intrinsics.h(pageCache, "pageCache");
        this.pageCache = pageCache;
    }

    public /* synthetic */ KeyboardCache(WeakHashMap weakHashMap, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new WeakHashMap() : weakHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KeyboardCache copy$default(KeyboardCache keyboardCache, WeakHashMap weakHashMap, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            weakHashMap = keyboardCache.pageCache;
        }
        return keyboardCache.copy(weakHashMap);
    }

    public final WeakHashMap<String, BridgeCallback> component1() {
        return this.pageCache;
    }

    public final KeyboardCache copy(WeakHashMap<String, BridgeCallback> pageCache) {
        Intrinsics.h(pageCache, "pageCache");
        return new KeyboardCache(pageCache);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof KeyboardCache) && Intrinsics.c(this.pageCache, ((KeyboardCache) other).pageCache);
    }

    public final WeakHashMap<String, BridgeCallback> getPageCache() {
        return this.pageCache;
    }

    public int hashCode() {
        return this.pageCache.hashCode();
    }

    public String toString() {
        return "KeyboardCache(pageCache=" + this.pageCache + ")";
    }
}
