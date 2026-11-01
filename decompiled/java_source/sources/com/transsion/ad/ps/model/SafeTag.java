package com.transsion.ad.ps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011JV\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010#J\u0006\u0010$\u001a\u00020\u0005J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\u0005HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0006\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001e\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013¨\u00060"}, d2 = {"Lcom/transsion/ad/ps/model/SafeTag;", "Landroid/os/Parcelable;", RewardPlus.ICON, "", "id", "", "isDeleted", "name", TrackingKey.PRIORITY, NativeComponentConstants.KEY_COMPONENT_TYPE, "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getIcon", "()Ljava/lang/String;", "setIcon", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/Integer;", "setId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "setDeleted", "getName", "setName", "getPriority", "setPriority", "getType", "setType", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/ad/ps/model/SafeTag;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SafeTag implements Parcelable {
    public static final Parcelable.Creator<SafeTag> CREATOR = new a();
    private String icon;
    private Integer id;
    private Integer isDeleted;
    private String name;
    private Integer priority;
    private Integer type;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SafeTag createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SafeTag(parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SafeTag[] newArray(int i11) {
            return new SafeTag[i11];
        }
    }

    public SafeTag(String str, Integer num, Integer num2, String str2, Integer num3, Integer num4) {
        this.icon = str;
        this.id = num;
        this.isDeleted = num2;
        this.name = str2;
        this.priority = num3;
        this.type = num4;
    }

    public static /* synthetic */ SafeTag copy$default(SafeTag safeTag, String str, Integer num, Integer num2, String str2, Integer num3, Integer num4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = safeTag.icon;
        }
        if ((i11 & 2) != 0) {
            num = safeTag.id;
        }
        Integer num5 = num;
        if ((i11 & 4) != 0) {
            num2 = safeTag.isDeleted;
        }
        Integer num6 = num2;
        if ((i11 & 8) != 0) {
            str2 = safeTag.name;
        }
        String str3 = str2;
        if ((i11 & 16) != 0) {
            num3 = safeTag.priority;
        }
        Integer num7 = num3;
        if ((i11 & 32) != 0) {
            num4 = safeTag.type;
        }
        return safeTag.copy(str, num5, num6, str3, num7, num4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getIsDeleted() {
        return this.isDeleted;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getPriority() {
        return this.priority;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    public final SafeTag copy(String icon, Integer id2, Integer isDeleted, String name, Integer priority, Integer type) {
        return new SafeTag(icon, id2, isDeleted, name, priority, type);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SafeTag)) {
            return false;
        }
        SafeTag safeTag = (SafeTag) other;
        return Intrinsics.c(this.icon, safeTag.icon) && Intrinsics.c(this.id, safeTag.id) && Intrinsics.c(this.isDeleted, safeTag.isDeleted) && Intrinsics.c(this.name, safeTag.name) && Intrinsics.c(this.priority, safeTag.priority) && Intrinsics.c(this.type, safeTag.type);
    }

    public final String getIcon() {
        return this.icon;
    }

    public final Integer getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getPriority() {
        return this.priority;
    }

    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.icon;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.id;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.isDeleted;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num3 = this.priority;
        int iHashCode5 = (iHashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.type;
        return iHashCode5 + (num4 != null ? num4.hashCode() : 0);
    }

    public final Integer isDeleted() {
        return this.isDeleted;
    }

    public final void setDeleted(Integer num) {
        this.isDeleted = num;
    }

    public final void setIcon(String str) {
        this.icon = str;
    }

    public final void setId(Integer num) {
        this.id = num;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPriority(Integer num) {
        this.priority = num;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public String toString() {
        return "SafeTag(icon=" + this.icon + ", id=" + this.id + ", isDeleted=" + this.isDeleted + ", name=" + this.name + ", priority=" + this.priority + ", type=" + this.type + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.icon);
        Integer num = this.id;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.isDeleted;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeString(this.name);
        Integer num3 = this.priority;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        Integer num4 = this.type;
        if (num4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num4.intValue());
        }
    }
}
