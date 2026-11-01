package com.cloud.tmc.miniapp.prestrategy;

import android.os.Bundle;
import com.cloud.tmc.kernel.model.BaseBean;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PrefetchData extends BaseBean {
    private String appIds;
    private Map<String, Bundle> bundleMap;
    private String sceneId;

    public PrefetchData() {
        this(null, null, null, 7, null);
    }

    public PrefetchData(String str, String str2, Map<String, Bundle> map) {
        this.sceneId = str;
        this.appIds = str2;
        this.bundleMap = map;
    }

    public /* synthetic */ PrefetchData(String str, String str2, Map map, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PrefetchData copy$default(PrefetchData prefetchData, String str, String str2, Map map, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = prefetchData.sceneId;
        }
        if ((i11 & 2) != 0) {
            str2 = prefetchData.appIds;
        }
        if ((i11 & 4) != 0) {
            map = prefetchData.bundleMap;
        }
        return prefetchData.copy(str, str2, map);
    }

    public final String component1() {
        return this.sceneId;
    }

    public final String component2() {
        return this.appIds;
    }

    public final Map<String, Bundle> component3() {
        return this.bundleMap;
    }

    public final PrefetchData copy(String str, String str2, Map<String, Bundle> map) {
        return new PrefetchData(str, str2, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrefetchData)) {
            return false;
        }
        PrefetchData prefetchData = (PrefetchData) obj;
        return Intrinsics.c(this.sceneId, prefetchData.sceneId) && Intrinsics.c(this.appIds, prefetchData.appIds) && Intrinsics.c(this.bundleMap, prefetchData.bundleMap);
    }

    public final String getAppIds() {
        return this.appIds;
    }

    public final Map<String, Bundle> getBundleMap() {
        return this.bundleMap;
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public int hashCode() {
        String str = this.sceneId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.appIds;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Map<String, Bundle> map = this.bundleMap;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final void setAppIds(String str) {
        this.appIds = str;
    }

    public final void setBundleMap(Map<String, Bundle> map) {
        this.bundleMap = map;
    }

    public final void setSceneId(String str) {
        this.sceneId = str;
    }

    public String toString() {
        return "PrefetchData(sceneId=" + this.sceneId + ", appIds=" + this.appIds + ", bundleMap=" + this.bundleMap + ")";
    }
}
