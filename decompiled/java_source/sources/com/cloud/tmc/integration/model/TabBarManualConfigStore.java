package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "tabBarConfig", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V", "getTabBarConfig", "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "setTabBarConfig", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TabBarManualConfigStore extends BaseBean {
    private MiniAppConfigModel.TabBarBean tabBarConfig;

    /* JADX WARN: Multi-variable type inference failed */
    public TabBarManualConfigStore() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public TabBarManualConfigStore(MiniAppConfigModel.TabBarBean tabBarBean) {
        this.tabBarConfig = tabBarBean;
    }

    public /* synthetic */ TabBarManualConfigStore(MiniAppConfigModel.TabBarBean tabBarBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : tabBarBean);
    }

    public static /* synthetic */ TabBarManualConfigStore copy$default(TabBarManualConfigStore tabBarManualConfigStore, MiniAppConfigModel.TabBarBean tabBarBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            tabBarBean = tabBarManualConfigStore.tabBarConfig;
        }
        return tabBarManualConfigStore.copy(tabBarBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MiniAppConfigModel.TabBarBean getTabBarConfig() {
        return this.tabBarConfig;
    }

    public final TabBarManualConfigStore copy(MiniAppConfigModel.TabBarBean tabBarConfig) {
        return new TabBarManualConfigStore(tabBarConfig);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TabBarManualConfigStore) && Intrinsics.c(this.tabBarConfig, ((TabBarManualConfigStore) other).tabBarConfig);
    }

    public final MiniAppConfigModel.TabBarBean getTabBarConfig() {
        return this.tabBarConfig;
    }

    public int hashCode() {
        MiniAppConfigModel.TabBarBean tabBarBean = this.tabBarConfig;
        if (tabBarBean == null) {
            return 0;
        }
        return tabBarBean.hashCode();
    }

    public final void setTabBarConfig(MiniAppConfigModel.TabBarBean tabBarBean) {
        this.tabBarConfig = tabBarBean;
    }

    public String toString() {
        return "TabBarManualConfigStore(tabBarConfig=" + this.tabBarConfig + ")";
    }
}
