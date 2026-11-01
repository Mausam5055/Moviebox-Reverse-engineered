package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006\u0012$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b`\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ%\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006HÆ\u0003J%\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b`\u0006HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\nHÆ\u0003Ja\u0010\u0016\u001a\u00020\u00002$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u00062$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b`\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R-\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR-\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/integration/model/TabBarMessageStore;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "redDotMessageHashMap", "Ljava/util/HashMap;", "", "Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;", "Lkotlin/collections/HashMap;", "badgeMessageHashMap", "Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;", "tabBarStyle", "Lcom/cloud/tmc/integration/model/TabBarStyle;", "(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/integration/model/TabBarStyle;)V", "getBadgeMessageHashMap", "()Ljava/util/HashMap;", "getRedDotMessageHashMap", "getTabBarStyle", "()Lcom/cloud/tmc/integration/model/TabBarStyle;", "setTabBarStyle", "(Lcom/cloud/tmc/integration/model/TabBarStyle;)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TabBarMessageStore extends BaseBean {
    private final HashMap<Integer, TabBarBadgeMessage> badgeMessageHashMap;
    private final HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap;
    private TabBarStyle tabBarStyle;

    public TabBarMessageStore() {
        this(null, null, null, 7, null);
    }

    public TabBarMessageStore(HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap, HashMap<Integer, TabBarBadgeMessage> badgeMessageHashMap, TabBarStyle tabBarStyle) {
        Intrinsics.h(redDotMessageHashMap, "redDotMessageHashMap");
        Intrinsics.h(badgeMessageHashMap, "badgeMessageHashMap");
        this.redDotMessageHashMap = redDotMessageHashMap;
        this.badgeMessageHashMap = badgeMessageHashMap;
        this.tabBarStyle = tabBarStyle;
    }

    public /* synthetic */ TabBarMessageStore(HashMap map, HashMap map2, TabBarStyle tabBarStyle, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new HashMap() : map, (i11 & 2) != 0 ? new HashMap() : map2, (i11 & 4) != 0 ? null : tabBarStyle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TabBarMessageStore copy$default(TabBarMessageStore tabBarMessageStore, HashMap map, HashMap map2, TabBarStyle tabBarStyle, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            map = tabBarMessageStore.redDotMessageHashMap;
        }
        if ((i11 & 2) != 0) {
            map2 = tabBarMessageStore.badgeMessageHashMap;
        }
        if ((i11 & 4) != 0) {
            tabBarStyle = tabBarMessageStore.tabBarStyle;
        }
        return tabBarMessageStore.copy(map, map2, tabBarStyle);
    }

    public final HashMap<Integer, TabBarRedDotMessage> component1() {
        return this.redDotMessageHashMap;
    }

    public final HashMap<Integer, TabBarBadgeMessage> component2() {
        return this.badgeMessageHashMap;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TabBarStyle getTabBarStyle() {
        return this.tabBarStyle;
    }

    public final TabBarMessageStore copy(HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap, HashMap<Integer, TabBarBadgeMessage> badgeMessageHashMap, TabBarStyle tabBarStyle) {
        Intrinsics.h(redDotMessageHashMap, "redDotMessageHashMap");
        Intrinsics.h(badgeMessageHashMap, "badgeMessageHashMap");
        return new TabBarMessageStore(redDotMessageHashMap, badgeMessageHashMap, tabBarStyle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabBarMessageStore)) {
            return false;
        }
        TabBarMessageStore tabBarMessageStore = (TabBarMessageStore) other;
        return Intrinsics.c(this.redDotMessageHashMap, tabBarMessageStore.redDotMessageHashMap) && Intrinsics.c(this.badgeMessageHashMap, tabBarMessageStore.badgeMessageHashMap) && Intrinsics.c(this.tabBarStyle, tabBarMessageStore.tabBarStyle);
    }

    public final HashMap<Integer, TabBarBadgeMessage> getBadgeMessageHashMap() {
        return this.badgeMessageHashMap;
    }

    public final HashMap<Integer, TabBarRedDotMessage> getRedDotMessageHashMap() {
        return this.redDotMessageHashMap;
    }

    public final TabBarStyle getTabBarStyle() {
        return this.tabBarStyle;
    }

    public int hashCode() {
        int iHashCode = ((this.redDotMessageHashMap.hashCode() * 31) + this.badgeMessageHashMap.hashCode()) * 31;
        TabBarStyle tabBarStyle = this.tabBarStyle;
        return iHashCode + (tabBarStyle == null ? 0 : tabBarStyle.hashCode());
    }

    public final void setTabBarStyle(TabBarStyle tabBarStyle) {
        this.tabBarStyle = tabBarStyle;
    }

    public String toString() {
        return "TabBarMessageStore(redDotMessageHashMap=" + this.redDotMessageHashMap + ", badgeMessageHashMap=" + this.badgeMessageHashMap + ", tabBarStyle=" + this.tabBarStyle + ")";
    }
}
