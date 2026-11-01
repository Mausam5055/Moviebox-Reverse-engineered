package com.transsnet.flow.event.sync.event;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0014"}, d2 = {"Lcom/transsnet/flow/event/sync/event/PostListRefreshEvent;", "Ljava/io/Serializable;", "tabId", "", "<init>", "(Ljava/lang/Integer;)V", "getTabId", "()Ljava/lang/Integer;", "setTabId", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/transsnet/flow/event/sync/event/PostListRefreshEvent;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PostListRefreshEvent implements Serializable {
    private Integer tabId;

    public PostListRefreshEvent(Integer num) {
        this.tabId = num;
    }

    public static /* synthetic */ PostListRefreshEvent copy$default(PostListRefreshEvent postListRefreshEvent, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = postListRefreshEvent.tabId;
        }
        return postListRefreshEvent.copy(num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getTabId() {
        return this.tabId;
    }

    public final PostListRefreshEvent copy(Integer tabId) {
        return new PostListRefreshEvent(tabId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PostListRefreshEvent) && Intrinsics.c(this.tabId, ((PostListRefreshEvent) other).tabId);
    }

    public final Integer getTabId() {
        return this.tabId;
    }

    public int hashCode() {
        Integer num = this.tabId;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    public final void setTabId(Integer num) {
        this.tabId = num;
    }

    public String toString() {
        return "PostListRefreshEvent(tabId=" + this.tabId + ")";
    }
}
