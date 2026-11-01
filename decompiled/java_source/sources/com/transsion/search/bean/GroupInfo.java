package com.transsion.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0019J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000bHÆ\u0003JT\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010*J\u0006\u0010+\u001a\u00020,J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100HÖ\u0003J\t\u00101\u001a\u00020,HÖ\u0001J\t\u00102\u001a\u00020\u0003HÖ\u0001J\u0016\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020,R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000f\"\u0004\b\u001e\u0010\u0011R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00068"}, d2 = {"Lcom/transsion/search/bean/GroupInfo;", "Landroid/os/Parcelable;", "groupId", "", "name", "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "userCount", "", "ops", "tags", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V", "getGroupId", "()Ljava/lang/String;", "setGroupId", "(Ljava/lang/String;)V", "getName", "setName", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getUserCount", "()Ljava/lang/Long;", "setUserCount", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getOps", "setOps", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)Lcom/transsion/search/bean/GroupInfo;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GroupInfo implements Parcelable {
    public static final Parcelable.Creator<GroupInfo> CREATOR = new a();
    private Cover cover;
    private String groupId;
    private String name;
    private String ops;
    private List<String> tags;
    private Long userCount;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GroupInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new GroupInfo(parcel.readString(), parcel.readString(), (Cover) parcel.readSerializable(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final GroupInfo[] newArray(int i11) {
            return new GroupInfo[i11];
        }
    }

    public GroupInfo(String groupId, String name, Cover cover, Long l11, String ops, List<String> list) {
        Intrinsics.h(groupId, "groupId");
        Intrinsics.h(name, "name");
        Intrinsics.h(cover, "cover");
        Intrinsics.h(ops, "ops");
        this.groupId = groupId;
        this.name = name;
        this.cover = cover;
        this.userCount = l11;
        this.ops = ops;
        this.tags = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GroupInfo copy$default(GroupInfo groupInfo, String str, String str2, Cover cover, Long l11, String str3, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = groupInfo.groupId;
        }
        if ((i11 & 2) != 0) {
            str2 = groupInfo.name;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            cover = groupInfo.cover;
        }
        Cover cover2 = cover;
        if ((i11 & 8) != 0) {
            l11 = groupInfo.userCount;
        }
        Long l12 = l11;
        if ((i11 & 16) != 0) {
            str3 = groupInfo.ops;
        }
        String str5 = str3;
        if ((i11 & 32) != 0) {
            list = groupInfo.tags;
        }
        return groupInfo.copy(str, str4, cover2, l12, str5, list);
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
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getUserCount() {
        return this.userCount;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final List<String> component6() {
        return this.tags;
    }

    public final GroupInfo copy(String groupId, String name, Cover cover, Long userCount, String ops, List<String> tags) {
        Intrinsics.h(groupId, "groupId");
        Intrinsics.h(name, "name");
        Intrinsics.h(cover, "cover");
        Intrinsics.h(ops, "ops");
        return new GroupInfo(groupId, name, cover, userCount, ops, tags);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GroupInfo)) {
            return false;
        }
        GroupInfo groupInfo = (GroupInfo) other;
        return Intrinsics.c(this.groupId, groupInfo.groupId) && Intrinsics.c(this.name, groupInfo.name) && Intrinsics.c(this.cover, groupInfo.cover) && Intrinsics.c(this.userCount, groupInfo.userCount) && Intrinsics.c(this.ops, groupInfo.ops) && Intrinsics.c(this.tags, groupInfo.tags);
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOps() {
        return this.ops;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final Long getUserCount() {
        return this.userCount;
    }

    public int hashCode() {
        int iHashCode = ((((this.groupId.hashCode() * 31) + this.name.hashCode()) * 31) + this.cover.hashCode()) * 31;
        Long l11 = this.userCount;
        int iHashCode2 = (((iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31) + this.ops.hashCode()) * 31;
        List<String> list = this.tags;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final void setCover(Cover cover) {
        Intrinsics.h(cover, "<set-?>");
        this.cover = cover;
    }

    public final void setGroupId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.groupId = str;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public final void setOps(String str) {
        Intrinsics.h(str, "<set-?>");
        this.ops = str;
    }

    public final void setTags(List<String> list) {
        this.tags = list;
    }

    public final void setUserCount(Long l11) {
        this.userCount = l11;
    }

    public String toString() {
        return "GroupInfo(groupId=" + this.groupId + ", name=" + this.name + ", cover=" + this.cover + ", userCount=" + this.userCount + ", ops=" + this.ops + ", tags=" + this.tags + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.groupId);
        dest.writeString(this.name);
        dest.writeSerializable(this.cover);
        Long l11 = this.userCount;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        dest.writeString(this.ops);
        dest.writeStringList(this.tags);
    }
}
