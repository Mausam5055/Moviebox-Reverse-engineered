package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0002\u0010\u0007J%\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006HÆ\u0003J/\u0010\u000b\u001a\u00020\u00002$\b\u0002\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0004HÖ\u0001R-\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;", "Lcom/cloud/tmc/kernel/model/BaseBean;", PlaceTypes.STORE, "Ljava/util/HashMap;", "", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;)V", "getStore", "()Ljava/util/HashMap;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AddToHomeScreenStore extends BaseBean {
    private final HashMap<String, BridgeCallback> store;

    /* JADX WARN: Multi-variable type inference failed */
    public AddToHomeScreenStore() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public AddToHomeScreenStore(HashMap<String, BridgeCallback> store) {
        Intrinsics.h(store, "store");
        this.store = store;
    }

    public /* synthetic */ AddToHomeScreenStore(HashMap map, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new HashMap() : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AddToHomeScreenStore copy$default(AddToHomeScreenStore addToHomeScreenStore, HashMap map, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            map = addToHomeScreenStore.store;
        }
        return addToHomeScreenStore.copy(map);
    }

    public final HashMap<String, BridgeCallback> component1() {
        return this.store;
    }

    public final AddToHomeScreenStore copy(HashMap<String, BridgeCallback> store) {
        Intrinsics.h(store, "store");
        return new AddToHomeScreenStore(store);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AddToHomeScreenStore) && Intrinsics.c(this.store, ((AddToHomeScreenStore) other).store);
    }

    public final HashMap<String, BridgeCallback> getStore() {
        return this.store;
    }

    public int hashCode() {
        return this.store.hashCode();
    }

    public String toString() {
        return "AddToHomeScreenStore(store=" + this.store + ")";
    }
}
