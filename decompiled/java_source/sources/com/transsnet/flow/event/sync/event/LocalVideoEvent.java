package com.transsnet.flow.event.sync.event;

import androidx.collection.s;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J;\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0011R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;", "Ljava/io/Serializable;", "resourceId", "", "readProgress", "", "duration", "isSeries", "", "refreshItemAll", "<init>", "(Ljava/lang/String;JJZZ)V", "getResourceId", "()Ljava/lang/String;", "getReadProgress", "()J", "getDuration", "()Z", "getRefreshItemAll", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LocalVideoEvent implements Serializable {
    private final long duration;
    private final boolean isSeries;
    private final long readProgress;
    private final boolean refreshItemAll;
    private final String resourceId;

    public LocalVideoEvent(String resourceId, long j11, long j12, boolean z10, boolean z11) {
        Intrinsics.h(resourceId, "resourceId");
        this.resourceId = resourceId;
        this.readProgress = j11;
        this.duration = j12;
        this.isSeries = z10;
        this.refreshItemAll = z11;
    }

    public /* synthetic */ LocalVideoEvent(String str, long j11, long j12, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? -1L : j11, (i11 & 4) == 0 ? j12 : -1L, (i11 & 8) != 0 ? false : z10, (i11 & 16) == 0 ? z11 : false);
    }

    public static /* synthetic */ LocalVideoEvent copy$default(LocalVideoEvent localVideoEvent, String str, long j11, long j12, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = localVideoEvent.resourceId;
        }
        if ((i11 & 2) != 0) {
            j11 = localVideoEvent.readProgress;
        }
        long j13 = j11;
        if ((i11 & 4) != 0) {
            j12 = localVideoEvent.duration;
        }
        long j14 = j12;
        if ((i11 & 8) != 0) {
            z10 = localVideoEvent.isSeries;
        }
        boolean z12 = z10;
        if ((i11 & 16) != 0) {
            z11 = localVideoEvent.refreshItemAll;
        }
        return localVideoEvent.copy(str, j13, j14, z12, z11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getReadProgress() {
        return this.readProgress;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsSeries() {
        return this.isSeries;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getRefreshItemAll() {
        return this.refreshItemAll;
    }

    public final LocalVideoEvent copy(String resourceId, long readProgress, long duration, boolean isSeries, boolean refreshItemAll) {
        Intrinsics.h(resourceId, "resourceId");
        return new LocalVideoEvent(resourceId, readProgress, duration, isSeries, refreshItemAll);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocalVideoEvent)) {
            return false;
        }
        LocalVideoEvent localVideoEvent = (LocalVideoEvent) other;
        return Intrinsics.c(this.resourceId, localVideoEvent.resourceId) && this.readProgress == localVideoEvent.readProgress && this.duration == localVideoEvent.duration && this.isSeries == localVideoEvent.isSeries && this.refreshItemAll == localVideoEvent.refreshItemAll;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final long getReadProgress() {
        return this.readProgress;
    }

    public final boolean getRefreshItemAll() {
        return this.refreshItemAll;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public int hashCode() {
        return (((((((this.resourceId.hashCode() * 31) + s.a(this.readProgress)) * 31) + s.a(this.duration)) * 31) + e.a(this.isSeries)) * 31) + e.a(this.refreshItemAll);
    }

    public final boolean isSeries() {
        return this.isSeries;
    }

    public String toString() {
        return "LocalVideoEvent(resourceId=" + this.resourceId + ", readProgress=" + this.readProgress + ", duration=" + this.duration + ", isSeries=" + this.isSeries + ", refreshItemAll=" + this.refreshItemAll + ")";
    }
}
