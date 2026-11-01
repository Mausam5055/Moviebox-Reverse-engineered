package com.transsion.baselib.db.download;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\fJ>\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0006\u0010\u001e\u001a\u00020\u0004J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0004HÖ\u0001J\t\u0010$\u001a\u00020\u0006HÖ\u0001J\u0016\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0004R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0014\u0010\f\"\u0004\b\u0015\u0010\u000eR\u001e\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000e¨\u0006*"}, d2 = {"Lcom/transsion/baselib/db/download/VipInfo;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "requireMemberType", "", "memberIcon", "", "previewSeconds", "freeEpisodeCount", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getRequireMemberType", "()Ljava/lang/Integer;", "setRequireMemberType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMemberIcon", "()Ljava/lang/String;", "setMemberIcon", "(Ljava/lang/String;)V", "getPreviewSeconds", "setPreviewSeconds", "getFreeEpisodeCount", "setFreeEpisodeCount", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/baselib/db/download/VipInfo;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VipInfo implements Parcelable, Serializable {
    public static final Parcelable.Creator<VipInfo> CREATOR = new a();
    private Integer freeEpisodeCount;
    private String memberIcon;
    private Integer previewSeconds;
    private Integer requireMemberType;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VipInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VipInfo(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final VipInfo[] newArray(int i11) {
            return new VipInfo[i11];
        }
    }

    public VipInfo(Integer num, String str, Integer num2, Integer num3) {
        this.requireMemberType = num;
        this.memberIcon = str;
        this.previewSeconds = num2;
        this.freeEpisodeCount = num3;
    }

    public static /* synthetic */ VipInfo copy$default(VipInfo vipInfo, Integer num, String str, Integer num2, Integer num3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = vipInfo.requireMemberType;
        }
        if ((i11 & 2) != 0) {
            str = vipInfo.memberIcon;
        }
        if ((i11 & 4) != 0) {
            num2 = vipInfo.previewSeconds;
        }
        if ((i11 & 8) != 0) {
            num3 = vipInfo.freeEpisodeCount;
        }
        return vipInfo.copy(num, str, num2, num3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getRequireMemberType() {
        return this.requireMemberType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMemberIcon() {
        return this.memberIcon;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getPreviewSeconds() {
        return this.previewSeconds;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getFreeEpisodeCount() {
        return this.freeEpisodeCount;
    }

    public final VipInfo copy(Integer requireMemberType, String memberIcon, Integer previewSeconds, Integer freeEpisodeCount) {
        return new VipInfo(requireMemberType, memberIcon, previewSeconds, freeEpisodeCount);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VipInfo)) {
            return false;
        }
        VipInfo vipInfo = (VipInfo) other;
        return Intrinsics.c(this.requireMemberType, vipInfo.requireMemberType) && Intrinsics.c(this.memberIcon, vipInfo.memberIcon) && Intrinsics.c(this.previewSeconds, vipInfo.previewSeconds) && Intrinsics.c(this.freeEpisodeCount, vipInfo.freeEpisodeCount);
    }

    public final Integer getFreeEpisodeCount() {
        return this.freeEpisodeCount;
    }

    public final String getMemberIcon() {
        return this.memberIcon;
    }

    public final Integer getPreviewSeconds() {
        return this.previewSeconds;
    }

    public final Integer getRequireMemberType() {
        return this.requireMemberType;
    }

    public int hashCode() {
        Integer num = this.requireMemberType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.memberIcon;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.previewSeconds;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.freeEpisodeCount;
        return iHashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    public final void setFreeEpisodeCount(Integer num) {
        this.freeEpisodeCount = num;
    }

    public final void setMemberIcon(String str) {
        this.memberIcon = str;
    }

    public final void setPreviewSeconds(Integer num) {
        this.previewSeconds = num;
    }

    public final void setRequireMemberType(Integer num) {
        this.requireMemberType = num;
    }

    public String toString() {
        return "VipInfo(requireMemberType=" + this.requireMemberType + ", memberIcon=" + this.memberIcon + ", previewSeconds=" + this.previewSeconds + ", freeEpisodeCount=" + this.freeEpisodeCount + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Integer num = this.requireMemberType;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.memberIcon);
        Integer num2 = this.previewSeconds;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.freeEpisodeCount;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
    }
}
