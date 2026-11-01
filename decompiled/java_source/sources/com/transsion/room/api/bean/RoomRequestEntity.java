package com.transsion.room.api.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003JR\u0010(\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010)J\u0006\u0010*\u001a\u00020\u0005J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0005HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001J\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000e\"\u0004\b!\u0010\u0010¨\u00066"}, d2 = {"Lcom/transsion/room/api/bean/RoomRequestEntity;", "Landroid/os/Parcelable;", "page", "", "perPage", "", "userAvatarNum", BidResponsedEx.KEY_CID, "geo", "Lcom/transsion/room/api/bean/RoomGeo;", "subjectId", "<init>", "(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)V", "getPage", "()Ljava/lang/String;", "setPage", "(Ljava/lang/String;)V", "getPerPage", "()I", "setPerPage", "(I)V", "getUserAvatarNum", "setUserAvatarNum", "getCid", "()Ljava/lang/Integer;", "setCid", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getGeo", "()Lcom/transsion/room/api/bean/RoomGeo;", "setGeo", "(Lcom/transsion/room/api/bean/RoomGeo;)V", "getSubjectId", "setSubjectId", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)Lcom/transsion/room/api/bean/RoomRequestEntity;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "RoomApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomRequestEntity implements Parcelable {
    public static final Parcelable.Creator<RoomRequestEntity> CREATOR = new a();
    private Integer cid;
    private RoomGeo geo;
    private String page;
    private int perPage;
    private String subjectId;
    private int userAvatarNum;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RoomRequestEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RoomRequestEntity(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? RoomGeo.CREATOR.createFromParcel(parcel) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RoomRequestEntity[] newArray(int i11) {
            return new RoomRequestEntity[i11];
        }
    }

    public RoomRequestEntity(String str, int i11, int i12, Integer num, RoomGeo roomGeo, String str2) {
        this.page = str;
        this.perPage = i11;
        this.userAvatarNum = i12;
        this.cid = num;
        this.geo = roomGeo;
        this.subjectId = str2;
    }

    public /* synthetic */ RoomRequestEntity(String str, int i11, int i12, Integer num, RoomGeo roomGeo, String str2, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? null : str, i11, i12, (i13 & 8) != 0 ? null : num, (i13 & 16) != 0 ? null : roomGeo, (i13 & 32) != 0 ? null : str2);
    }

    public static /* synthetic */ RoomRequestEntity copy$default(RoomRequestEntity roomRequestEntity, String str, int i11, int i12, Integer num, RoomGeo roomGeo, String str2, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = roomRequestEntity.page;
        }
        if ((i13 & 2) != 0) {
            i11 = roomRequestEntity.perPage;
        }
        int i14 = i11;
        if ((i13 & 4) != 0) {
            i12 = roomRequestEntity.userAvatarNum;
        }
        int i15 = i12;
        if ((i13 & 8) != 0) {
            num = roomRequestEntity.cid;
        }
        Integer num2 = num;
        if ((i13 & 16) != 0) {
            roomGeo = roomRequestEntity.geo;
        }
        RoomGeo roomGeo2 = roomGeo;
        if ((i13 & 32) != 0) {
            str2 = roomRequestEntity.subjectId;
        }
        return roomRequestEntity.copy(str, i14, i15, num2, roomGeo2, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPerPage() {
        return this.perPage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getUserAvatarNum() {
        return this.userAvatarNum;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getCid() {
        return this.cid;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final RoomGeo getGeo() {
        return this.geo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    public final RoomRequestEntity copy(String page, int perPage, int userAvatarNum, Integer cid, RoomGeo geo, String subjectId) {
        return new RoomRequestEntity(page, perPage, userAvatarNum, cid, geo, subjectId);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomRequestEntity)) {
            return false;
        }
        RoomRequestEntity roomRequestEntity = (RoomRequestEntity) other;
        return Intrinsics.c(this.page, roomRequestEntity.page) && this.perPage == roomRequestEntity.perPage && this.userAvatarNum == roomRequestEntity.userAvatarNum && Intrinsics.c(this.cid, roomRequestEntity.cid) && Intrinsics.c(this.geo, roomRequestEntity.geo) && Intrinsics.c(this.subjectId, roomRequestEntity.subjectId);
    }

    public final Integer getCid() {
        return this.cid;
    }

    public final RoomGeo getGeo() {
        return this.geo;
    }

    public final String getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final int getUserAvatarNum() {
        return this.userAvatarNum;
    }

    public int hashCode() {
        String str = this.page;
        int iHashCode = (((((str == null ? 0 : str.hashCode()) * 31) + this.perPage) * 31) + this.userAvatarNum) * 31;
        Integer num = this.cid;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        RoomGeo roomGeo = this.geo;
        int iHashCode3 = (iHashCode2 + (roomGeo == null ? 0 : roomGeo.hashCode())) * 31;
        String str2 = this.subjectId;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setCid(Integer num) {
        this.cid = num;
    }

    public final void setGeo(RoomGeo roomGeo) {
        this.geo = roomGeo;
    }

    public final void setPage(String str) {
        this.page = str;
    }

    public final void setPerPage(int i11) {
        this.perPage = i11;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setUserAvatarNum(int i11) {
        this.userAvatarNum = i11;
    }

    public String toString() {
        return "RoomRequestEntity(page=" + this.page + ", perPage=" + this.perPage + ", userAvatarNum=" + this.userAvatarNum + ", cid=" + this.cid + ", geo=" + this.geo + ", subjectId=" + this.subjectId + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.page);
        dest.writeInt(this.perPage);
        dest.writeInt(this.userAvatarNum);
        Integer num = this.cid;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        RoomGeo roomGeo = this.geo;
        if (roomGeo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            roomGeo.writeToParcel(dest, flags);
        }
        dest.writeString(this.subjectId);
    }
}
