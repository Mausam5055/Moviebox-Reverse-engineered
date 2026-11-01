package com.transsion.upgradesdk.bean;

import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J/\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/transsion/upgradesdk/bean/OldPkgVersion;", "Ljava/io/Serializable;", "oldPkgVersionEnd", "", "oldPkgVersionExclude", "", "oldPkgVersionStart", "(JLjava/util/List;J)V", "getOldPkgVersionEnd", "()J", "getOldPkgVersionExclude", "()Ljava/util/List;", "getOldPkgVersionStart", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "upgradesdk_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OldPkgVersion implements Serializable {
    private final long oldPkgVersionEnd;
    private final List<Long> oldPkgVersionExclude;
    private final long oldPkgVersionStart;

    public OldPkgVersion(long j11, List<Long> list, long j12) {
        this.oldPkgVersionEnd = j11;
        this.oldPkgVersionExclude = list;
        this.oldPkgVersionStart = j12;
    }

    public /* synthetic */ OldPkgVersion(long j11, List list, long j12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, (i11 & 2) != 0 ? null : list, j12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OldPkgVersion copy$default(OldPkgVersion oldPkgVersion, long j11, List list, long j12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = oldPkgVersion.oldPkgVersionEnd;
        }
        long j13 = j11;
        if ((i11 & 2) != 0) {
            list = oldPkgVersion.oldPkgVersionExclude;
        }
        List list2 = list;
        if ((i11 & 4) != 0) {
            j12 = oldPkgVersion.oldPkgVersionStart;
        }
        return oldPkgVersion.copy(j13, list2, j12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getOldPkgVersionEnd() {
        return this.oldPkgVersionEnd;
    }

    public final List<Long> component2() {
        return this.oldPkgVersionExclude;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getOldPkgVersionStart() {
        return this.oldPkgVersionStart;
    }

    public final OldPkgVersion copy(long oldPkgVersionEnd, List<Long> oldPkgVersionExclude, long oldPkgVersionStart) {
        return new OldPkgVersion(oldPkgVersionEnd, oldPkgVersionExclude, oldPkgVersionStart);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OldPkgVersion)) {
            return false;
        }
        OldPkgVersion oldPkgVersion = (OldPkgVersion) other;
        return this.oldPkgVersionEnd == oldPkgVersion.oldPkgVersionEnd && Intrinsics.c(this.oldPkgVersionExclude, oldPkgVersion.oldPkgVersionExclude) && this.oldPkgVersionStart == oldPkgVersion.oldPkgVersionStart;
    }

    public final long getOldPkgVersionEnd() {
        return this.oldPkgVersionEnd;
    }

    public final List<Long> getOldPkgVersionExclude() {
        return this.oldPkgVersionExclude;
    }

    public final long getOldPkgVersionStart() {
        return this.oldPkgVersionStart;
    }

    public int hashCode() {
        int iA = s.a(this.oldPkgVersionEnd) * 31;
        List<Long> list = this.oldPkgVersionExclude;
        return s.a(this.oldPkgVersionStart) + ((iA + (list == null ? 0 : list.hashCode())) * 31);
    }

    public String toString() {
        return "OldPkgVersion(oldPkgVersionEnd=" + this.oldPkgVersionEnd + ", oldPkgVersionExclude=" + this.oldPkgVersionExclude + ", oldPkgVersionStart=" + this.oldPkgVersionStart + ')';
    }
}
