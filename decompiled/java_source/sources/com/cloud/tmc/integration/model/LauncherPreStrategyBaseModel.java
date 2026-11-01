package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/integration/model/LauncherPreStrategyBaseModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "configVerion", "", "configList", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;", "Lkotlin/collections/ArrayList;", "(Ljava/lang/String;Ljava/util/ArrayList;)V", "getConfigList", "()Ljava/util/ArrayList;", "setConfigList", "(Ljava/util/ArrayList;)V", "getConfigVerion", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LauncherPreStrategyBaseModel extends BaseBean {
    private ArrayList<LauncherPreStrategyModel> configList;
    private final String configVerion;

    public LauncherPreStrategyBaseModel(String configVerion, ArrayList<LauncherPreStrategyModel> arrayList) {
        Intrinsics.h(configVerion, "configVerion");
        this.configVerion = configVerion;
        this.configList = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LauncherPreStrategyBaseModel copy$default(LauncherPreStrategyBaseModel launcherPreStrategyBaseModel, String str, ArrayList arrayList, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = launcherPreStrategyBaseModel.configVerion;
        }
        if ((i11 & 2) != 0) {
            arrayList = launcherPreStrategyBaseModel.configList;
        }
        return launcherPreStrategyBaseModel.copy(str, arrayList);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getConfigVerion() {
        return this.configVerion;
    }

    public final ArrayList<LauncherPreStrategyModel> component2() {
        return this.configList;
    }

    public final LauncherPreStrategyBaseModel copy(String configVerion, ArrayList<LauncherPreStrategyModel> configList) {
        Intrinsics.h(configVerion, "configVerion");
        return new LauncherPreStrategyBaseModel(configVerion, configList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LauncherPreStrategyBaseModel)) {
            return false;
        }
        LauncherPreStrategyBaseModel launcherPreStrategyBaseModel = (LauncherPreStrategyBaseModel) other;
        return Intrinsics.c(this.configVerion, launcherPreStrategyBaseModel.configVerion) && Intrinsics.c(this.configList, launcherPreStrategyBaseModel.configList);
    }

    public final ArrayList<LauncherPreStrategyModel> getConfigList() {
        return this.configList;
    }

    public final String getConfigVerion() {
        return this.configVerion;
    }

    public int hashCode() {
        int iHashCode = this.configVerion.hashCode() * 31;
        ArrayList<LauncherPreStrategyModel> arrayList = this.configList;
        return iHashCode + (arrayList == null ? 0 : arrayList.hashCode());
    }

    public final void setConfigList(ArrayList<LauncherPreStrategyModel> arrayList) {
        this.configList = arrayList;
    }

    public String toString() {
        return "LauncherPreStrategyBaseModel(configVerion=" + this.configVerion + ", configList=" + this.configList + ")";
    }
}
