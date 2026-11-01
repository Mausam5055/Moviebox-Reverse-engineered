package com.transsion.room.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J=\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001dHÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u001dR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\r¨\u0006)"}, d2 = {"Lcom/transsion/room/bean/CreateRoomRequestEntity;", "Landroid/os/Parcelable;", "groupId", "", "name", "avatar", TrackingKey.DESCRIPTION, "tempBucket", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getGroupId", "()Ljava/lang/String;", "setGroupId", "(Ljava/lang/String;)V", "getName", "setName", "getAvatar", "setAvatar", "getDescription", "setDescription", "getTempBucket", "setTempBucket", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CreateRoomRequestEntity implements Parcelable {
    public static final Parcelable.Creator<CreateRoomRequestEntity> CREATOR = new a();
    private String avatar;
    private String description;
    private String groupId;
    private String name;
    private String tempBucket;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateRoomRequestEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CreateRoomRequestEntity(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CreateRoomRequestEntity[] newArray(int i11) {
            return new CreateRoomRequestEntity[i11];
        }
    }

    public CreateRoomRequestEntity(String groupId, String name, String avatar, String description, String str) {
        Intrinsics.h(groupId, "groupId");
        Intrinsics.h(name, "name");
        Intrinsics.h(avatar, "avatar");
        Intrinsics.h(description, "description");
        this.groupId = groupId;
        this.name = name;
        this.avatar = avatar;
        this.description = description;
        this.tempBucket = str;
    }

    public /* synthetic */ CreateRoomRequestEntity(String str, String str2, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i11 & 16) != 0 ? null : str5);
    }

    public static /* synthetic */ CreateRoomRequestEntity copy$default(CreateRoomRequestEntity createRoomRequestEntity, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = createRoomRequestEntity.groupId;
        }
        if ((i11 & 2) != 0) {
            str2 = createRoomRequestEntity.name;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = createRoomRequestEntity.avatar;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = createRoomRequestEntity.description;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = createRoomRequestEntity.tempBucket;
        }
        return createRoomRequestEntity.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTempBucket() {
        return this.tempBucket;
    }

    public final CreateRoomRequestEntity copy(String groupId, String name, String avatar, String description, String tempBucket) {
        Intrinsics.h(groupId, "groupId");
        Intrinsics.h(name, "name");
        Intrinsics.h(avatar, "avatar");
        Intrinsics.h(description, "description");
        return new CreateRoomRequestEntity(groupId, name, avatar, description, tempBucket);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateRoomRequestEntity)) {
            return false;
        }
        CreateRoomRequestEntity createRoomRequestEntity = (CreateRoomRequestEntity) other;
        return Intrinsics.c(this.groupId, createRoomRequestEntity.groupId) && Intrinsics.c(this.name, createRoomRequestEntity.name) && Intrinsics.c(this.avatar, createRoomRequestEntity.avatar) && Intrinsics.c(this.description, createRoomRequestEntity.description) && Intrinsics.c(this.tempBucket, createRoomRequestEntity.tempBucket);
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getTempBucket() {
        return this.tempBucket;
    }

    public int hashCode() {
        int iHashCode = ((((((this.groupId.hashCode() * 31) + this.name.hashCode()) * 31) + this.avatar.hashCode()) * 31) + this.description.hashCode()) * 31;
        String str = this.tempBucket;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setAvatar(String str) {
        Intrinsics.h(str, "<set-?>");
        this.avatar = str;
    }

    public final void setDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.description = str;
    }

    public final void setGroupId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.groupId = str;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public final void setTempBucket(String str) {
        this.tempBucket = str;
    }

    public String toString() {
        return "CreateRoomRequestEntity(groupId=" + this.groupId + ", name=" + this.name + ", avatar=" + this.avatar + ", description=" + this.description + ", tempBucket=" + this.tempBucket + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.groupId);
        dest.writeString(this.name);
        dest.writeString(this.avatar);
        dest.writeString(this.description);
        dest.writeString(this.tempBucket);
    }
}
