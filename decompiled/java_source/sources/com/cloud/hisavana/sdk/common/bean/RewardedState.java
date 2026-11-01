package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.s;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007¢\u0006\u0002\u0010\u000eJ\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\u0007HÆ\u0003J\t\u0010%\u001a\u00020\u0007HÆ\u0003J\t\u0010&\u001a\u00020\u0007HÆ\u0003J\t\u0010'\u001a\u00020\u0007HÆ\u0003J\t\u0010(\u001a\u00020\u0007HÆ\u0003Jc\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\r\u001a\u00020\u0007HÆ\u0001J\t\u0010*\u001a\u00020+HÖ\u0001J\u0013\u0010,\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020+HÖ\u0001J\b\u00100\u001a\u000201H\u0016J\u0019\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020+HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0013\"\u0004\b\u0016\u0010\u0015R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\u0013\"\u0004\b\u0019\u0010\u0015R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0013\"\u0004\b\u001a\u0010\u0015R\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u00067"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/RewardedState;", "Landroid/os/Parcelable;", "countdownRemainDuration", "", "videoVolume", "", "isAlreadyMeasure", "", "isRewarded", "isPlayStart", "isPlayComplete", "isShowRetainDialog", "isShowRuDialog", "isPaused", "(JFZZZZZZZ)V", "getCountdownRemainDuration", "()J", "setCountdownRemainDuration", "(J)V", "()Z", "setAlreadyMeasure", "(Z)V", "setPaused", "setPlayComplete", "setPlayStart", "setRewarded", "setShowRetainDialog", "setShowRuDialog", "getVideoVolume", "()F", "setVideoVolume", "(F)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RewardedState implements Parcelable {
    public static final Parcelable.Creator<RewardedState> CREATOR = new Creator();
    private long countdownRemainDuration;
    private boolean isAlreadyMeasure;
    private boolean isPaused;
    private boolean isPlayComplete;
    private boolean isPlayStart;
    private boolean isRewarded;
    private boolean isShowRetainDialog;
    private boolean isShowRuDialog;
    private float videoVolume;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<RewardedState> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final RewardedState createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RewardedState(parcel.readLong(), parcel.readFloat(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final RewardedState[] newArray(int i11) {
            return new RewardedState[i11];
        }
    }

    public RewardedState() {
        this(0L, 0.0f, false, false, false, false, false, false, false, 511, null);
    }

    public RewardedState(long j11, float f11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.countdownRemainDuration = j11;
        this.videoVolume = f11;
        this.isAlreadyMeasure = z10;
        this.isRewarded = z11;
        this.isPlayStart = z12;
        this.isPlayComplete = z13;
        this.isShowRetainDialog = z14;
        this.isShowRuDialog = z15;
        this.isPaused = z16;
    }

    public /* synthetic */ RewardedState(long j11, float f11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0L : j11, (i11 & 2) != 0 ? 1.0f : f11, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? false : z11, (i11 & 16) != 0 ? false : z12, (i11 & 32) != 0 ? false : z13, (i11 & 64) != 0 ? false : z14, (i11 & 128) != 0 ? false : z15, (i11 & 256) == 0 ? z16 : false);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getCountdownRemainDuration() {
        return this.countdownRemainDuration;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getVideoVolume() {
        return this.videoVolume;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsAlreadyMeasure() {
        return this.isAlreadyMeasure;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsRewarded() {
        return this.isRewarded;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsPlayStart() {
        return this.isPlayStart;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getIsPlayComplete() {
        return this.isPlayComplete;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getIsShowRetainDialog() {
        return this.isShowRetainDialog;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsShowRuDialog() {
        return this.isShowRuDialog;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsPaused() {
        return this.isPaused;
    }

    public final RewardedState copy(long countdownRemainDuration, float videoVolume, boolean isAlreadyMeasure, boolean isRewarded, boolean isPlayStart, boolean isPlayComplete, boolean isShowRetainDialog, boolean isShowRuDialog, boolean isPaused) {
        return new RewardedState(countdownRemainDuration, videoVolume, isAlreadyMeasure, isRewarded, isPlayStart, isPlayComplete, isShowRetainDialog, isShowRuDialog, isPaused);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RewardedState)) {
            return false;
        }
        RewardedState rewardedState = (RewardedState) other;
        return this.countdownRemainDuration == rewardedState.countdownRemainDuration && Float.compare(this.videoVolume, rewardedState.videoVolume) == 0 && this.isAlreadyMeasure == rewardedState.isAlreadyMeasure && this.isRewarded == rewardedState.isRewarded && this.isPlayStart == rewardedState.isPlayStart && this.isPlayComplete == rewardedState.isPlayComplete && this.isShowRetainDialog == rewardedState.isShowRetainDialog && this.isShowRuDialog == rewardedState.isShowRuDialog && this.isPaused == rewardedState.isPaused;
    }

    public final long getCountdownRemainDuration() {
        return this.countdownRemainDuration;
    }

    public final float getVideoVolume() {
        return this.videoVolume;
    }

    public int hashCode() {
        return (((((((((((((((s.a(this.countdownRemainDuration) * 31) + Float.floatToIntBits(this.videoVolume)) * 31) + e.a(this.isAlreadyMeasure)) * 31) + e.a(this.isRewarded)) * 31) + e.a(this.isPlayStart)) * 31) + e.a(this.isPlayComplete)) * 31) + e.a(this.isShowRetainDialog)) * 31) + e.a(this.isShowRuDialog)) * 31) + e.a(this.isPaused);
    }

    public final boolean isAlreadyMeasure() {
        return this.isAlreadyMeasure;
    }

    public final boolean isPaused() {
        return this.isPaused;
    }

    public final boolean isPlayComplete() {
        return this.isPlayComplete;
    }

    public final boolean isPlayStart() {
        return this.isPlayStart;
    }

    public final boolean isRewarded() {
        return this.isRewarded;
    }

    public final boolean isShowRetainDialog() {
        return this.isShowRetainDialog;
    }

    public final boolean isShowRuDialog() {
        return this.isShowRuDialog;
    }

    public final void setAlreadyMeasure(boolean z10) {
        this.isAlreadyMeasure = z10;
    }

    public final void setCountdownRemainDuration(long j11) {
        this.countdownRemainDuration = j11;
    }

    public final void setPaused(boolean z10) {
        this.isPaused = z10;
    }

    public final void setPlayComplete(boolean z10) {
        this.isPlayComplete = z10;
    }

    public final void setPlayStart(boolean z10) {
        this.isPlayStart = z10;
    }

    public final void setRewarded(boolean z10) {
        this.isRewarded = z10;
    }

    public final void setShowRetainDialog(boolean z10) {
        this.isShowRetainDialog = z10;
    }

    public final void setShowRuDialog(boolean z10) {
        this.isShowRuDialog = z10;
    }

    public final void setVideoVolume(float f11) {
        this.videoVolume = f11;
    }

    public String toString() {
        return "RewardedState(countdownRemainDuration=" + this.countdownRemainDuration + ", videoVolume=" + this.videoVolume + ", isAlreadyMeasure=" + this.isAlreadyMeasure + ", isRewarded=" + this.isRewarded + ", isPlayStart=" + this.isPlayStart + ", isPlayComplete=" + this.isPlayComplete + ", isShowRetainDialog=" + this.isShowRetainDialog + ", isShowRuDialog=" + this.isShowRuDialog + ", isPaused=" + this.isPaused + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeLong(this.countdownRemainDuration);
        parcel.writeFloat(this.videoVolume);
        parcel.writeInt(this.isAlreadyMeasure ? 1 : 0);
        parcel.writeInt(this.isRewarded ? 1 : 0);
        parcel.writeInt(this.isPlayStart ? 1 : 0);
        parcel.writeInt(this.isPlayComplete ? 1 : 0);
        parcel.writeInt(this.isShowRetainDialog ? 1 : 0);
        parcel.writeInt(this.isShowRuDialog ? 1 : 0);
        parcel.writeInt(this.isPaused ? 1 : 0);
    }
}
