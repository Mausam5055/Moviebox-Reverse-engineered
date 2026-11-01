package com.transsion.mpush.core.net;

import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.PushConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0012\b\u0002\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0013\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0012\b\u0002\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/transsion/mpush/core/net/SdkPullMsgResp;", "", "items", "", "Lcom/transsion/mpush/api/LocalPushMessage;", XLogUtil.TAG, "Lcom/transsion/mpush/core/config/PushConfig;", "seekingItems", "<init>", "(Ljava/util/List;Lcom/transsion/mpush/core/config/PushConfig;Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "getConfig", "()Lcom/transsion/mpush/core/config/PushConfig;", "setConfig", "(Lcom/transsion/mpush/core/config/PushConfig;)V", "getSeekingItems", "setSeekingItems", "(Ljava/util/List;)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SdkPullMsgResp {
    private PushConfig config;
    private final List<LocalPushMessage> items;
    private List<LocalPushMessage> seekingItems;

    public SdkPullMsgResp(List<LocalPushMessage> list, PushConfig pushConfig, List<LocalPushMessage> list2) {
        this.items = list;
        this.config = pushConfig;
        this.seekingItems = list2;
    }

    public /* synthetic */ SdkPullMsgResp(List list, PushConfig pushConfig, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, pushConfig, (i11 & 4) != 0 ? null : list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SdkPullMsgResp copy$default(SdkPullMsgResp sdkPullMsgResp, List list, PushConfig pushConfig, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = sdkPullMsgResp.items;
        }
        if ((i11 & 2) != 0) {
            pushConfig = sdkPullMsgResp.config;
        }
        if ((i11 & 4) != 0) {
            list2 = sdkPullMsgResp.seekingItems;
        }
        return sdkPullMsgResp.copy(list, pushConfig, list2);
    }

    public final List<LocalPushMessage> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PushConfig getConfig() {
        return this.config;
    }

    public final List<LocalPushMessage> component3() {
        return this.seekingItems;
    }

    public final SdkPullMsgResp copy(List<LocalPushMessage> items, PushConfig config, List<LocalPushMessage> seekingItems) {
        return new SdkPullMsgResp(items, config, seekingItems);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SdkPullMsgResp)) {
            return false;
        }
        SdkPullMsgResp sdkPullMsgResp = (SdkPullMsgResp) other;
        return Intrinsics.c(this.items, sdkPullMsgResp.items) && Intrinsics.c(this.config, sdkPullMsgResp.config) && Intrinsics.c(this.seekingItems, sdkPullMsgResp.seekingItems);
    }

    public final PushConfig getConfig() {
        return this.config;
    }

    public final List<LocalPushMessage> getItems() {
        return this.items;
    }

    public final List<LocalPushMessage> getSeekingItems() {
        return this.seekingItems;
    }

    public int hashCode() {
        List<LocalPushMessage> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        PushConfig pushConfig = this.config;
        int iHashCode2 = (iHashCode + (pushConfig == null ? 0 : pushConfig.hashCode())) * 31;
        List<LocalPushMessage> list2 = this.seekingItems;
        return iHashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setConfig(PushConfig pushConfig) {
        this.config = pushConfig;
    }

    public final void setSeekingItems(List<LocalPushMessage> list) {
        this.seekingItems = list;
    }

    public String toString() {
        return "SdkPullMsgResp(items=" + this.items + ", config=" + this.config + ", seekingItems=" + this.seekingItems + ")";
    }
}
