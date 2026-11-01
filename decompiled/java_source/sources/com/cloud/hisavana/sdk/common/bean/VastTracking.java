package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001cHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0019\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001cHÖ\u0001R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\f¨\u0006("}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "Landroid/os/Parcelable;", "startTrack", "", "quarter", CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT, "thirdQuarter", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getComplete", "()Ljava/lang/String;", "setComplete", "(Ljava/lang/String;)V", "getMidpoint", "setMidpoint", "getQuarter", "setQuarter", "getStartTrack", "setStartTrack", "getThirdQuarter", "setThirdQuarter", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VastTracking implements Parcelable {
    public static final Parcelable.Creator<VastTracking> CREATOR = new Creator();
    private String complete;
    private String midpoint;
    private String quarter;
    private String startTrack;
    private String thirdQuarter;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<VastTracking> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastTracking createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VastTracking(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastTracking[] newArray(int i11) {
            return new VastTracking[i11];
        }
    }

    public VastTracking() {
        this(null, null, null, null, null, 31, null);
    }

    public VastTracking(String str, String str2, String str3, String str4, String str5) {
        this.startTrack = str;
        this.quarter = str2;
        this.midpoint = str3;
        this.thirdQuarter = str4;
        this.complete = str5;
    }

    public /* synthetic */ VastTracking(String str, String str2, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5);
    }

    public static /* synthetic */ VastTracking copy$default(VastTracking vastTracking, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = vastTracking.startTrack;
        }
        if ((i11 & 2) != 0) {
            str2 = vastTracking.quarter;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = vastTracking.midpoint;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = vastTracking.thirdQuarter;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = vastTracking.complete;
        }
        return vastTracking.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getStartTrack() {
        return this.startTrack;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getQuarter() {
        return this.quarter;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMidpoint() {
        return this.midpoint;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getThirdQuarter() {
        return this.thirdQuarter;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getComplete() {
        return this.complete;
    }

    public final VastTracking copy(String startTrack, String quarter, String midpoint, String thirdQuarter, String complete) {
        return new VastTracking(startTrack, quarter, midpoint, thirdQuarter, complete);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastTracking)) {
            return false;
        }
        VastTracking vastTracking = (VastTracking) other;
        return Intrinsics.c(this.startTrack, vastTracking.startTrack) && Intrinsics.c(this.quarter, vastTracking.quarter) && Intrinsics.c(this.midpoint, vastTracking.midpoint) && Intrinsics.c(this.thirdQuarter, vastTracking.thirdQuarter) && Intrinsics.c(this.complete, vastTracking.complete);
    }

    public final String getComplete() {
        return this.complete;
    }

    public final String getMidpoint() {
        return this.midpoint;
    }

    public final String getQuarter() {
        return this.quarter;
    }

    public final String getStartTrack() {
        return this.startTrack;
    }

    public final String getThirdQuarter() {
        return this.thirdQuarter;
    }

    public int hashCode() {
        String str = this.startTrack;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.quarter;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.midpoint;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.thirdQuarter;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.complete;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setComplete(String str) {
        this.complete = str;
    }

    public final void setMidpoint(String str) {
        this.midpoint = str;
    }

    public final void setQuarter(String str) {
        this.quarter = str;
    }

    public final void setStartTrack(String str) {
        this.startTrack = str;
    }

    public final void setThirdQuarter(String str) {
        this.thirdQuarter = str;
    }

    public String toString() {
        return "VastTracking(startTrack=" + this.startTrack + ", quarter=" + this.quarter + ", midpoint=" + this.midpoint + ", thirdQuarter=" + this.thirdQuarter + ", complete=" + this.complete + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.startTrack);
        parcel.writeString(this.quarter);
        parcel.writeString(this.midpoint);
        parcel.writeString(this.thirdQuarter);
        parcel.writeString(this.complete);
    }
}
