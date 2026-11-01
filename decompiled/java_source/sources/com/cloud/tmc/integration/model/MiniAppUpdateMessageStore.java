package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\bJ\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u0015\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u0015\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003JK\u0010\u0010\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0004HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\n¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "onCheckForUpdate", "Ljava/util/WeakHashMap;", "", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "onUpdateFailed", "onUpdateReady", "(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)V", "getOnCheckForUpdate", "()Ljava/util/WeakHashMap;", "getOnUpdateFailed", "getOnUpdateReady", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAppUpdateMessageStore extends BaseBean {
    private final WeakHashMap<String, BridgeCallback> onCheckForUpdate;
    private final WeakHashMap<String, BridgeCallback> onUpdateFailed;
    private final WeakHashMap<String, BridgeCallback> onUpdateReady;

    public MiniAppUpdateMessageStore() {
        this(null, null, null, 7, null);
    }

    public MiniAppUpdateMessageStore(WeakHashMap<String, BridgeCallback> onCheckForUpdate, WeakHashMap<String, BridgeCallback> onUpdateFailed, WeakHashMap<String, BridgeCallback> onUpdateReady) {
        Intrinsics.h(onCheckForUpdate, "onCheckForUpdate");
        Intrinsics.h(onUpdateFailed, "onUpdateFailed");
        Intrinsics.h(onUpdateReady, "onUpdateReady");
        this.onCheckForUpdate = onCheckForUpdate;
        this.onUpdateFailed = onUpdateFailed;
        this.onUpdateReady = onUpdateReady;
    }

    public /* synthetic */ MiniAppUpdateMessageStore(WeakHashMap weakHashMap, WeakHashMap weakHashMap2, WeakHashMap weakHashMap3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new WeakHashMap() : weakHashMap, (i11 & 2) != 0 ? new WeakHashMap() : weakHashMap2, (i11 & 4) != 0 ? new WeakHashMap() : weakHashMap3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MiniAppUpdateMessageStore copy$default(MiniAppUpdateMessageStore miniAppUpdateMessageStore, WeakHashMap weakHashMap, WeakHashMap weakHashMap2, WeakHashMap weakHashMap3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            weakHashMap = miniAppUpdateMessageStore.onCheckForUpdate;
        }
        if ((i11 & 2) != 0) {
            weakHashMap2 = miniAppUpdateMessageStore.onUpdateFailed;
        }
        if ((i11 & 4) != 0) {
            weakHashMap3 = miniAppUpdateMessageStore.onUpdateReady;
        }
        return miniAppUpdateMessageStore.copy(weakHashMap, weakHashMap2, weakHashMap3);
    }

    public final WeakHashMap<String, BridgeCallback> component1() {
        return this.onCheckForUpdate;
    }

    public final WeakHashMap<String, BridgeCallback> component2() {
        return this.onUpdateFailed;
    }

    public final WeakHashMap<String, BridgeCallback> component3() {
        return this.onUpdateReady;
    }

    public final MiniAppUpdateMessageStore copy(WeakHashMap<String, BridgeCallback> onCheckForUpdate, WeakHashMap<String, BridgeCallback> onUpdateFailed, WeakHashMap<String, BridgeCallback> onUpdateReady) {
        Intrinsics.h(onCheckForUpdate, "onCheckForUpdate");
        Intrinsics.h(onUpdateFailed, "onUpdateFailed");
        Intrinsics.h(onUpdateReady, "onUpdateReady");
        return new MiniAppUpdateMessageStore(onCheckForUpdate, onUpdateFailed, onUpdateReady);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAppUpdateMessageStore)) {
            return false;
        }
        MiniAppUpdateMessageStore miniAppUpdateMessageStore = (MiniAppUpdateMessageStore) other;
        return Intrinsics.c(this.onCheckForUpdate, miniAppUpdateMessageStore.onCheckForUpdate) && Intrinsics.c(this.onUpdateFailed, miniAppUpdateMessageStore.onUpdateFailed) && Intrinsics.c(this.onUpdateReady, miniAppUpdateMessageStore.onUpdateReady);
    }

    public final WeakHashMap<String, BridgeCallback> getOnCheckForUpdate() {
        return this.onCheckForUpdate;
    }

    public final WeakHashMap<String, BridgeCallback> getOnUpdateFailed() {
        return this.onUpdateFailed;
    }

    public final WeakHashMap<String, BridgeCallback> getOnUpdateReady() {
        return this.onUpdateReady;
    }

    public int hashCode() {
        return (((this.onCheckForUpdate.hashCode() * 31) + this.onUpdateFailed.hashCode()) * 31) + this.onUpdateReady.hashCode();
    }

    public String toString() {
        return "MiniAppUpdateMessageStore(onCheckForUpdate=" + this.onCheckForUpdate + ", onUpdateFailed=" + this.onUpdateFailed + ", onUpdateReady=" + this.onUpdateReady + ")";
    }
}
