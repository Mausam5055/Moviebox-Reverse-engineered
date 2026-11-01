package com.transsion.baselib.db.video;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\bHÆ\u0003J\t\u0010!\u001a\u00020\bHÆ\u0003J\t\u0010\"\u001a\u00020\u000bHÆ\u0003JE\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010$\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0005HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006("}, d2 = {"Lcom/transsion/baselib/db/video/PlaybackRecordTable;", "", "subjectId", "", "se", "", "ep", "lastAdStartTimeStamp", "", "lastAdEndTimeStamp", "rewardUnlock", "", "<init>", "(Ljava/lang/String;IIJJZ)V", "getSubjectId", "()Ljava/lang/String;", "getSe", "()I", "getEp", "getLastAdStartTimeStamp", "()J", "setLastAdStartTimeStamp", "(J)V", "getLastAdEndTimeStamp", "setLastAdEndTimeStamp", "getRewardUnlock", "()Z", "setRewardUnlock", "(Z)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlaybackRecordTable {
    private final int ep;
    private long lastAdEndTimeStamp;
    private long lastAdStartTimeStamp;
    private boolean rewardUnlock;
    private final int se;
    private final String subjectId;

    public PlaybackRecordTable(String subjectId, int i11, int i12, long j11, long j12, boolean z10) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
        this.se = i11;
        this.ep = i12;
        this.lastAdStartTimeStamp = j11;
        this.lastAdEndTimeStamp = j12;
        this.rewardUnlock = z10;
    }

    public /* synthetic */ PlaybackRecordTable(String str, int i11, int i12, long j11, long j12, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, i12, (i13 & 8) != 0 ? 0L : j11, (i13 & 16) != 0 ? 0L : j12, (i13 & 32) != 0 ? false : z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getLastAdStartTimeStamp() {
        return this.lastAdStartTimeStamp;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getLastAdEndTimeStamp() {
        return this.lastAdEndTimeStamp;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getRewardUnlock() {
        return this.rewardUnlock;
    }

    public final PlaybackRecordTable copy(String subjectId, int se2, int ep2, long lastAdStartTimeStamp, long lastAdEndTimeStamp, boolean rewardUnlock) {
        Intrinsics.h(subjectId, "subjectId");
        return new PlaybackRecordTable(subjectId, se2, ep2, lastAdStartTimeStamp, lastAdEndTimeStamp, rewardUnlock);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlaybackRecordTable)) {
            return false;
        }
        PlaybackRecordTable playbackRecordTable = (PlaybackRecordTable) other;
        return Intrinsics.c(this.subjectId, playbackRecordTable.subjectId) && this.se == playbackRecordTable.se && this.ep == playbackRecordTable.ep && this.lastAdStartTimeStamp == playbackRecordTable.lastAdStartTimeStamp && this.lastAdEndTimeStamp == playbackRecordTable.lastAdEndTimeStamp && this.rewardUnlock == playbackRecordTable.rewardUnlock;
    }

    public final int getEp() {
        return this.ep;
    }

    public final long getLastAdEndTimeStamp() {
        return this.lastAdEndTimeStamp;
    }

    public final long getLastAdStartTimeStamp() {
        return this.lastAdStartTimeStamp;
    }

    public final boolean getRewardUnlock() {
        return this.rewardUnlock;
    }

    public final int getSe() {
        return this.se;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        return (((((((((this.subjectId.hashCode() * 31) + this.se) * 31) + this.ep) * 31) + androidx.collection.s.a(this.lastAdStartTimeStamp)) * 31) + androidx.collection.s.a(this.lastAdEndTimeStamp)) * 31) + androidx.compose.foundation.e.a(this.rewardUnlock);
    }

    public final void setLastAdEndTimeStamp(long j11) {
        this.lastAdEndTimeStamp = j11;
    }

    public final void setLastAdStartTimeStamp(long j11) {
        this.lastAdStartTimeStamp = j11;
    }

    public final void setRewardUnlock(boolean z10) {
        this.rewardUnlock = z10;
    }

    public String toString() {
        return "PlaybackRecordTable(subjectId=" + this.subjectId + ", se=" + this.se + ", ep=" + this.ep + ", lastAdStartTimeStamp=" + this.lastAdStartTimeStamp + ", lastAdEndTimeStamp=" + this.lastAdEndTimeStamp + ", rewardUnlock=" + this.rewardUnlock + ")";
    }
}
