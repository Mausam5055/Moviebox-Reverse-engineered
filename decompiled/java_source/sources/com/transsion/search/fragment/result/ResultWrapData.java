package com.transsion.search.fragment.result;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.search.bean.VerticalRank;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003J[\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0006\u0010&\u001a\u00020'J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020'HÖ\u0001J\t\u0010-\u001a\u00020\rHÖ\u0001J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020'R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001c¨\u00063"}, d2 = {"Lcom/transsion/search/fragment/result/ResultWrapData;", "Landroid/os/Parcelable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsion/search/fragment/result/ResultType;", "subject", "Lcom/transsion/moviedetailapi/bean/Subject;", "staff", "Lcom/transsion/moviedetailapi/bean/Staff;", PermissionConfig.GROUPS, "Lcom/transsion/moviedetailapi/bean/Group;", "verticalRank", "Lcom/transsion/search/bean/VerticalRank;", CampaignEx.JSON_KEY_TITLE, "", "moreTabId", "<init>", "(Lcom/transsion/search/fragment/result/ResultType;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Staff;Lcom/transsion/moviedetailapi/bean/Group;Lcom/transsion/search/bean/VerticalRank;Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Lcom/transsion/search/fragment/result/ResultType;", "getSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "getStaff", "()Lcom/transsion/moviedetailapi/bean/Staff;", "getGroups", "()Lcom/transsion/moviedetailapi/bean/Group;", "getVerticalRank", "()Lcom/transsion/search/bean/VerticalRank;", "getTitle", "()Ljava/lang/String;", "getMoreTabId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ResultWrapData implements Parcelable {
    public static final Parcelable.Creator<ResultWrapData> CREATOR = new a();
    private final Group groups;
    private final String moreTabId;
    private final Staff staff;
    private final Subject subject;
    private final String title;
    private final ResultType type;
    private final VerticalRank verticalRank;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResultWrapData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ResultWrapData(ResultType.valueOf(parcel.readString()), (Subject) parcel.readSerializable(), (Staff) parcel.readSerializable(), (Group) parcel.readSerializable(), parcel.readInt() == 0 ? null : VerticalRank.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ResultWrapData[] newArray(int i11) {
            return new ResultWrapData[i11];
        }
    }

    public ResultWrapData(ResultType type, Subject subject, Staff staff, Group group, VerticalRank verticalRank, String str, String str2) {
        Intrinsics.h(type, "type");
        this.type = type;
        this.subject = subject;
        this.staff = staff;
        this.groups = group;
        this.verticalRank = verticalRank;
        this.title = str;
        this.moreTabId = str2;
    }

    public /* synthetic */ ResultWrapData(ResultType resultType, Subject subject, Staff staff, Group group, VerticalRank verticalRank, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(resultType, (i11 & 2) != 0 ? null : subject, (i11 & 4) != 0 ? null : staff, (i11 & 8) != 0 ? null : group, (i11 & 16) != 0 ? null : verticalRank, (i11 & 32) != 0 ? null : str, (i11 & 64) == 0 ? str2 : null);
    }

    public static /* synthetic */ ResultWrapData copy$default(ResultWrapData resultWrapData, ResultType resultType, Subject subject, Staff staff, Group group, VerticalRank verticalRank, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            resultType = resultWrapData.type;
        }
        if ((i11 & 2) != 0) {
            subject = resultWrapData.subject;
        }
        Subject subject2 = subject;
        if ((i11 & 4) != 0) {
            staff = resultWrapData.staff;
        }
        Staff staff2 = staff;
        if ((i11 & 8) != 0) {
            group = resultWrapData.groups;
        }
        Group group2 = group;
        if ((i11 & 16) != 0) {
            verticalRank = resultWrapData.verticalRank;
        }
        VerticalRank verticalRank2 = verticalRank;
        if ((i11 & 32) != 0) {
            str = resultWrapData.title;
        }
        String str3 = str;
        if ((i11 & 64) != 0) {
            str2 = resultWrapData.moreTabId;
        }
        return resultWrapData.copy(resultType, subject2, staff2, group2, verticalRank2, str3, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ResultType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Staff getStaff() {
        return this.staff;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Group getGroups() {
        return this.groups;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getMoreTabId() {
        return this.moreTabId;
    }

    public final ResultWrapData copy(ResultType type, Subject subject, Staff staff, Group groups, VerticalRank verticalRank, String title, String moreTabId) {
        Intrinsics.h(type, "type");
        return new ResultWrapData(type, subject, staff, groups, verticalRank, title, moreTabId);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResultWrapData)) {
            return false;
        }
        ResultWrapData resultWrapData = (ResultWrapData) other;
        return this.type == resultWrapData.type && Intrinsics.c(this.subject, resultWrapData.subject) && Intrinsics.c(this.staff, resultWrapData.staff) && Intrinsics.c(this.groups, resultWrapData.groups) && Intrinsics.c(this.verticalRank, resultWrapData.verticalRank) && Intrinsics.c(this.title, resultWrapData.title) && Intrinsics.c(this.moreTabId, resultWrapData.moreTabId);
    }

    public final Group getGroups() {
        return this.groups;
    }

    public final String getMoreTabId() {
        return this.moreTabId;
    }

    public final Staff getStaff() {
        return this.staff;
    }

    public final Subject getSubject() {
        return this.subject;
    }

    public final String getTitle() {
        return this.title;
    }

    public final ResultType getType() {
        return this.type;
    }

    public final VerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        Subject subject = this.subject;
        int iHashCode2 = (iHashCode + (subject == null ? 0 : subject.hashCode())) * 31;
        Staff staff = this.staff;
        int iHashCode3 = (iHashCode2 + (staff == null ? 0 : staff.hashCode())) * 31;
        Group group = this.groups;
        int iHashCode4 = (iHashCode3 + (group == null ? 0 : group.hashCode())) * 31;
        VerticalRank verticalRank = this.verticalRank;
        int iHashCode5 = (iHashCode4 + (verticalRank == null ? 0 : verticalRank.hashCode())) * 31;
        String str = this.title;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.moreTabId;
        return iHashCode6 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "ResultWrapData(type=" + this.type + ", subject=" + this.subject + ", staff=" + this.staff + ", groups=" + this.groups + ", verticalRank=" + this.verticalRank + ", title=" + this.title + ", moreTabId=" + this.moreTabId + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.type.name());
        dest.writeSerializable(this.subject);
        dest.writeSerializable(this.staff);
        dest.writeSerializable(this.groups);
        VerticalRank verticalRank = this.verticalRank;
        if (verticalRank == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            verticalRank.writeToParcel(dest, flags);
        }
        dest.writeString(this.title);
        dest.writeString(this.moreTabId);
    }
}
