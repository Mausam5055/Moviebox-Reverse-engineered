package com.transsnet.flow.event.sync.event;

import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J5\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;", "Ljava/io/Serializable;", "subjectId", "", "resourceId", "add", "", "isSeries", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", "getSubjectId", "()Ljava/lang/String;", "getResourceId", "getAdd", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AddToDownloadEvent implements Serializable {
    private final boolean add;
    private final boolean isSeries;
    private final String resourceId;
    private final String subjectId;

    public AddToDownloadEvent(String str, String str2, boolean z10, boolean z11) {
        this.subjectId = str;
        this.resourceId = str2;
        this.add = z10;
        this.isSeries = z11;
    }

    public /* synthetic */ AddToDownloadEvent(String str, String str2, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? false : z11);
    }

    public static /* synthetic */ AddToDownloadEvent copy$default(AddToDownloadEvent addToDownloadEvent, String str, String str2, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = addToDownloadEvent.subjectId;
        }
        if ((i11 & 2) != 0) {
            str2 = addToDownloadEvent.resourceId;
        }
        if ((i11 & 4) != 0) {
            z10 = addToDownloadEvent.add;
        }
        if ((i11 & 8) != 0) {
            z11 = addToDownloadEvent.isSeries;
        }
        return addToDownloadEvent.copy(str, str2, z10, z11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getAdd() {
        return this.add;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsSeries() {
        return this.isSeries;
    }

    public final AddToDownloadEvent copy(String subjectId, String resourceId, boolean add, boolean isSeries) {
        return new AddToDownloadEvent(subjectId, resourceId, add, isSeries);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AddToDownloadEvent)) {
            return false;
        }
        AddToDownloadEvent addToDownloadEvent = (AddToDownloadEvent) other;
        return Intrinsics.c(this.subjectId, addToDownloadEvent.subjectId) && Intrinsics.c(this.resourceId, addToDownloadEvent.resourceId) && this.add == addToDownloadEvent.add && this.isSeries == addToDownloadEvent.isSeries;
    }

    public final boolean getAdd() {
        return this.add;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.resourceId;
        return ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + e.a(this.add)) * 31) + e.a(this.isSeries);
    }

    public final boolean isSeries() {
        return this.isSeries;
    }

    public String toString() {
        return "AddToDownloadEvent(subjectId=" + this.subjectId + ", resourceId=" + this.resourceId + ", add=" + this.add + ", isSeries=" + this.isSeries + ")";
    }
}
