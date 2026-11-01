package com.transsnet.flow.event.sync.event;

import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsnet/flow/event/sync/event/LikeEvent;", "Ljava/io/Serializable;", "like", "", "subjectId", "", "<init>", "(ZLjava/lang/String;)V", "getLike", "()Z", "getSubjectId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LikeEvent implements Serializable {
    private final boolean like;
    private final String subjectId;

    public LikeEvent(boolean z10, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.like = z10;
        this.subjectId = subjectId;
    }

    public static /* synthetic */ LikeEvent copy$default(LikeEvent likeEvent, boolean z10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = likeEvent.like;
        }
        if ((i11 & 2) != 0) {
            str = likeEvent.subjectId;
        }
        return likeEvent.copy(z10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getLike() {
        return this.like;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    public final LikeEvent copy(boolean like, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        return new LikeEvent(like, subjectId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LikeEvent)) {
            return false;
        }
        LikeEvent likeEvent = (LikeEvent) other;
        return this.like == likeEvent.like && Intrinsics.c(this.subjectId, likeEvent.subjectId);
    }

    public final boolean getLike() {
        return this.like;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        return (e.a(this.like) * 31) + this.subjectId.hashCode();
    }

    public String toString() {
        return "LikeEvent(like=" + this.like + ", subjectId=" + this.subjectId + ")";
    }
}
