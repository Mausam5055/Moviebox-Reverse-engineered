package com.transsion.room.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\fHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0018"}, d2 = {"Lcom/transsion/room/bean/CheckInEntity;", "Landroid/os/Parcelable;", "groupId", "", "<init>", "(Ljava/lang/String;)V", "getGroupId", "()Ljava/lang/String;", "setGroupId", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CheckInEntity implements Parcelable {
    public static final Parcelable.Creator<CheckInEntity> CREATOR = new a();
    private String groupId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckInEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CheckInEntity(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CheckInEntity[] newArray(int i11) {
            return new CheckInEntity[i11];
        }
    }

    public CheckInEntity(String groupId) {
        Intrinsics.h(groupId, "groupId");
        this.groupId = groupId;
    }

    public static /* synthetic */ CheckInEntity copy$default(CheckInEntity checkInEntity, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = checkInEntity.groupId;
        }
        return checkInEntity.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    public final CheckInEntity copy(String groupId) {
        Intrinsics.h(groupId, "groupId");
        return new CheckInEntity(groupId);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CheckInEntity) && Intrinsics.c(this.groupId, ((CheckInEntity) other).groupId);
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public int hashCode() {
        return this.groupId.hashCode();
    }

    public final void setGroupId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.groupId = str;
    }

    public String toString() {
        return "CheckInEntity(groupId=" + this.groupId + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.groupId);
    }
}
