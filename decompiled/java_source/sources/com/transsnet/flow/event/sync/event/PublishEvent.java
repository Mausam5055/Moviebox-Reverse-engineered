package com.transsnet.flow.event.sync.event;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/transsnet/flow/event/sync/event/PublishEvent;", "Ljava/io/Serializable;", "postId", "", "groupId", "sourceType", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getPostId", "()Ljava/lang/String;", "setPostId", "(Ljava/lang/String;)V", "getGroupId", "getSourceType", "()I", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PublishEvent implements Serializable {
    private final String groupId;
    private String postId;
    private final int sourceType;

    public PublishEvent(String postId, String str, int i11) {
        Intrinsics.h(postId, "postId");
        this.postId = postId;
        this.groupId = str;
        this.sourceType = i11;
    }

    public static /* synthetic */ PublishEvent copy$default(PublishEvent publishEvent, String str, String str2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = publishEvent.postId;
        }
        if ((i12 & 2) != 0) {
            str2 = publishEvent.groupId;
        }
        if ((i12 & 4) != 0) {
            i11 = publishEvent.sourceType;
        }
        return publishEvent.copy(str, str2, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getSourceType() {
        return this.sourceType;
    }

    public final PublishEvent copy(String postId, String groupId, int sourceType) {
        Intrinsics.h(postId, "postId");
        return new PublishEvent(postId, groupId, sourceType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PublishEvent)) {
            return false;
        }
        PublishEvent publishEvent = (PublishEvent) other;
        return Intrinsics.c(this.postId, publishEvent.postId) && Intrinsics.c(this.groupId, publishEvent.groupId) && this.sourceType == publishEvent.sourceType;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final int getSourceType() {
        return this.sourceType;
    }

    public int hashCode() {
        int iHashCode = this.postId.hashCode() * 31;
        String str = this.groupId;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.sourceType;
    }

    public final void setPostId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.postId = str;
    }

    public String toString() {
        return "PublishEvent(postId=" + this.postId + ", groupId=" + this.groupId + ", sourceType=" + this.sourceType + ")";
    }
}
