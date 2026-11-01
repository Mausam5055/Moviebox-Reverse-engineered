package com.transsion.ugcvideodetail.api.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bm\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010!J\u0010\u00103\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010%J\u0011\u00104\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003Jt\u00105\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u00106J\u0006\u00107\u001a\u00020\nJ\u0013\u00108\u001a\u00020\f2\b\u00109\u001a\u0004\u0018\u00010:HÖ\u0003J\t\u0010;\u001a\u00020\nHÖ\u0001J\t\u0010<\u001a\u00020\u0003HÖ\u0001J\u0016\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\nR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR \u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R\"\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010(\u001a\u0004\b\u000b\u0010%\"\u0004\b&\u0010'R&\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u0006B"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "Landroid/os/Parcelable;", "id", "", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "deeplink", "count", "", "isForceInsert", "", "videos", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getDeeplink", "setDeeplink", "getCount", "()Ljava/lang/Integer;", "setCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "()Ljava/lang/Boolean;", "setForceInsert", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getVideos", "()Ljava/util/List;", "setVideos", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVerticalRank implements Parcelable {
    public static final Parcelable.Creator<UGCVerticalRank> CREATOR = new a();

    @SerializedName("count")
    private Integer count;

    @SerializedName("cover")
    private Cover cover;

    @SerializedName("deeplink")
    private String deeplink;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String description;

    @SerializedName("id")
    private String id;

    @SerializedName("isForceInsert")
    private Boolean isForceInsert;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName("videos")
    private List<? extends UGCVideo> videos;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCVerticalRank createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Cover cover = (Cover) parcel.readSerializable();
            String string4 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(parcel.readSerializable());
                }
            }
            return new UGCVerticalRank(string, string2, string3, cover, string4, numValueOf, boolValueOf, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCVerticalRank[] newArray(int i11) {
            return new UGCVerticalRank[i11];
        }
    }

    public UGCVerticalRank() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public UGCVerticalRank(String str, String str2, String str3, Cover cover, String str4, Integer num, Boolean bool, List<? extends UGCVideo> list) {
        this.id = str;
        this.title = str2;
        this.description = str3;
        this.cover = cover;
        this.deeplink = str4;
        this.count = num;
        this.isForceInsert = bool;
        this.videos = list;
    }

    public /* synthetic */ UGCVerticalRank(String str, String str2, String str3, Cover cover, String str4, Integer num, Boolean bool, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : cover, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : num, (i11 & 64) != 0 ? null : bool, (i11 & 128) == 0 ? list : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getIsForceInsert() {
        return this.isForceInsert;
    }

    public final List<UGCVideo> component8() {
        return this.videos;
    }

    public final UGCVerticalRank copy(String id2, String title, String description, Cover cover, String deeplink, Integer count, Boolean isForceInsert, List<? extends UGCVideo> videos) {
        return new UGCVerticalRank(id2, title, description, cover, deeplink, count, isForceInsert, videos);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVerticalRank)) {
            return false;
        }
        UGCVerticalRank uGCVerticalRank = (UGCVerticalRank) other;
        return Intrinsics.c(this.id, uGCVerticalRank.id) && Intrinsics.c(this.title, uGCVerticalRank.title) && Intrinsics.c(this.description, uGCVerticalRank.description) && Intrinsics.c(this.cover, uGCVerticalRank.cover) && Intrinsics.c(this.deeplink, uGCVerticalRank.deeplink) && Intrinsics.c(this.count, uGCVerticalRank.count) && Intrinsics.c(this.isForceInsert, uGCVerticalRank.isForceInsert) && Intrinsics.c(this.videos, uGCVerticalRank.videos);
    }

    public final Integer getCount() {
        return this.count;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getId() {
        return this.id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final List<UGCVideo> getVideos() {
        return this.videos;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Cover cover = this.cover;
        int iHashCode4 = (iHashCode3 + (cover == null ? 0 : cover.hashCode())) * 31;
        String str4 = this.deeplink;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.count;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.isForceInsert;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<? extends UGCVideo> list = this.videos;
        return iHashCode7 + (list != null ? list.hashCode() : 0);
    }

    public final Boolean isForceInsert() {
        return this.isForceInsert;
    }

    public final void setCount(Integer num) {
        this.count = num;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setForceInsert(Boolean bool) {
        this.isForceInsert = bool;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setVideos(List<? extends UGCVideo> list) {
        this.videos = list;
    }

    public String toString() {
        return "UGCVerticalRank(id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", cover=" + this.cover + ", deeplink=" + this.deeplink + ", count=" + this.count + ", isForceInsert=" + this.isForceInsert + ", videos=" + this.videos + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.title);
        dest.writeString(this.description);
        dest.writeSerializable(this.cover);
        dest.writeString(this.deeplink);
        Integer num = this.count;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Boolean bool = this.isForceInsert;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        List<? extends UGCVideo> list = this.videos;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<? extends UGCVideo> it = list.iterator();
        while (it.hasNext()) {
            dest.writeSerializable(it.next());
        }
    }
}
