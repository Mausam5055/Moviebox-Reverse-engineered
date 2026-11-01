package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fHÆ\u0003J\t\u0010<\u001a\u00020\u000eHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\fHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0097\u0001\u0010@\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010A\u001a\u00020\u000eJ\u0013\u0010B\u001a\u00020C2\b\u0010D\u001a\u0004\u0018\u00010EHÖ\u0003J\t\u0010F\u001a\u00020\u000eHÖ\u0001J\t\u0010G\u001a\u00020\u0003HÖ\u0001J\u0016\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u000eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010\u0018R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0016\"\u0004\b0\u0010\u0018R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010(\"\u0004\b2\u0010*R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0016\"\u0004\b4\u0010\u0018¨\u0006M"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;", "Landroid/os/Parcelable;", "collectionId", "", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "cover", "Lcom/transsion/room/sub/bean/subscription/CoverTrending;", "creator", "Lcom/transsion/room/sub/bean/subscription/CreatorTrending;", "category", "genres", "", "videoNum", "", "watchNum", "videos", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ops", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/CoverTrending;Lcom/transsion/room/sub/bean/subscription/CreatorTrending;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getCollectionId", "()Ljava/lang/String;", "setCollectionId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "getCover", "()Lcom/transsion/room/sub/bean/subscription/CoverTrending;", "setCover", "(Lcom/transsion/room/sub/bean/subscription/CoverTrending;)V", "getCreator", "()Lcom/transsion/room/sub/bean/subscription/CreatorTrending;", "setCreator", "(Lcom/transsion/room/sub/bean/subscription/CreatorTrending;)V", "getCategory", "setCategory", "getGenres", "()Ljava/util/List;", "setGenres", "(Ljava/util/List;)V", "getVideoNum", "()I", "setVideoNum", "(I)V", "getWatchNum", "setWatchNum", "getVideos", "setVideos", "getOps", "setOps", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CollectionItemTrending implements Parcelable {
    public static final Parcelable.Creator<CollectionItemTrending> CREATOR = new a();
    private String category;
    private String collectionId;
    private CoverTrending cover;
    private CreatorTrending creator;
    private String description;
    private List<String> genres;
    private String ops;
    private String title;
    private int videoNum;
    private List<UGCVideo> videos;
    private String watchNum;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CollectionItemTrending createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            ArrayList arrayList = null;
            CoverTrending coverTrendingCreateFromParcel = parcel.readInt() == 0 ? null : CoverTrending.CREATOR.createFromParcel(parcel);
            CreatorTrending creatorTrendingCreateFromParcel = parcel.readInt() == 0 ? null : CreatorTrending.CREATOR.createFromParcel(parcel);
            String string4 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            int i11 = parcel.readInt();
            String string5 = parcel.readString();
            if (parcel.readInt() != 0) {
                int i12 = parcel.readInt();
                arrayList = new ArrayList(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    arrayList.add(parcel.readSerializable());
                }
            }
            return new CollectionItemTrending(string, string2, string3, coverTrendingCreateFromParcel, creatorTrendingCreateFromParcel, string4, arrayListCreateStringArrayList, i11, string5, arrayList, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CollectionItemTrending[] newArray(int i11) {
            return new CollectionItemTrending[i11];
        }
    }

    public CollectionItemTrending(String str, String str2, String str3, CoverTrending coverTrending, CreatorTrending creatorTrending, String str4, List<String> list, int i11, String str5, List<UGCVideo> list2, String str6) {
        this.collectionId = str;
        this.title = str2;
        this.description = str3;
        this.cover = coverTrending;
        this.creator = creatorTrending;
        this.category = str4;
        this.genres = list;
        this.videoNum = i11;
        this.watchNum = str5;
        this.videos = list2;
        this.ops = str6;
    }

    public /* synthetic */ CollectionItemTrending(String str, String str2, String str3, CoverTrending coverTrending, CreatorTrending creatorTrending, String str4, List list, int i11, String str5, List list2, String str6, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : coverTrending, (i12 & 16) != 0 ? null : creatorTrending, (i12 & 32) != 0 ? null : str4, list, (i12 & 128) != 0 ? 0 : i11, (i12 & 256) != 0 ? null : str5, list2, (i12 & 1024) != 0 ? null : str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    public final List<UGCVideo> component10() {
        return this.videos;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getOps() {
        return this.ops;
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
    public final CoverTrending getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final CreatorTrending getCreator() {
        return this.creator;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    public final List<String> component7() {
        return this.genres;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getVideoNum() {
        return this.videoNum;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getWatchNum() {
        return this.watchNum;
    }

    public final CollectionItemTrending copy(String collectionId, String title, String description, CoverTrending cover, CreatorTrending creator, String category, List<String> genres, int videoNum, String watchNum, List<UGCVideo> videos, String ops) {
        return new CollectionItemTrending(collectionId, title, description, cover, creator, category, genres, videoNum, watchNum, videos, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CollectionItemTrending)) {
            return false;
        }
        CollectionItemTrending collectionItemTrending = (CollectionItemTrending) other;
        return Intrinsics.c(this.collectionId, collectionItemTrending.collectionId) && Intrinsics.c(this.title, collectionItemTrending.title) && Intrinsics.c(this.description, collectionItemTrending.description) && Intrinsics.c(this.cover, collectionItemTrending.cover) && Intrinsics.c(this.creator, collectionItemTrending.creator) && Intrinsics.c(this.category, collectionItemTrending.category) && Intrinsics.c(this.genres, collectionItemTrending.genres) && this.videoNum == collectionItemTrending.videoNum && Intrinsics.c(this.watchNum, collectionItemTrending.watchNum) && Intrinsics.c(this.videos, collectionItemTrending.videos) && Intrinsics.c(this.ops, collectionItemTrending.ops);
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final CoverTrending getCover() {
        return this.cover;
    }

    public final CreatorTrending getCreator() {
        return this.creator;
    }

    public final String getDescription() {
        return this.description;
    }

    public final List<String> getGenres() {
        return this.genres;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getVideoNum() {
        return this.videoNum;
    }

    public final List<UGCVideo> getVideos() {
        return this.videos;
    }

    public final String getWatchNum() {
        return this.watchNum;
    }

    public int hashCode() {
        String str = this.collectionId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        CoverTrending coverTrending = this.cover;
        int iHashCode4 = (iHashCode3 + (coverTrending == null ? 0 : coverTrending.hashCode())) * 31;
        CreatorTrending creatorTrending = this.creator;
        int iHashCode5 = (iHashCode4 + (creatorTrending == null ? 0 : creatorTrending.hashCode())) * 31;
        String str4 = this.category;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<String> list = this.genres;
        int iHashCode7 = (((iHashCode6 + (list == null ? 0 : list.hashCode())) * 31) + this.videoNum) * 31;
        String str5 = this.watchNum;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<UGCVideo> list2 = this.videos;
        int iHashCode9 = (iHashCode8 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str6 = this.ops;
        return iHashCode9 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCollectionId(String str) {
        this.collectionId = str;
    }

    public final void setCover(CoverTrending coverTrending) {
        this.cover = coverTrending;
    }

    public final void setCreator(CreatorTrending creatorTrending) {
        this.creator = creatorTrending;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setGenres(List<String> list) {
        this.genres = list;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setVideoNum(int i11) {
        this.videoNum = i11;
    }

    public final void setVideos(List<UGCVideo> list) {
        this.videos = list;
    }

    public final void setWatchNum(String str) {
        this.watchNum = str;
    }

    public String toString() {
        return "CollectionItemTrending(collectionId=" + this.collectionId + ", title=" + this.title + ", description=" + this.description + ", cover=" + this.cover + ", creator=" + this.creator + ", category=" + this.category + ", genres=" + this.genres + ", videoNum=" + this.videoNum + ", watchNum=" + this.watchNum + ", videos=" + this.videos + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.collectionId);
        dest.writeString(this.title);
        dest.writeString(this.description);
        CoverTrending coverTrending = this.cover;
        if (coverTrending == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            coverTrending.writeToParcel(dest, flags);
        }
        CreatorTrending creatorTrending = this.creator;
        if (creatorTrending == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            creatorTrending.writeToParcel(dest, flags);
        }
        dest.writeString(this.category);
        dest.writeStringList(this.genres);
        dest.writeInt(this.videoNum);
        dest.writeString(this.watchNum);
        List<UGCVideo> list = this.videos;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<UGCVideo> it = list.iterator();
            while (it.hasNext()) {
                dest.writeSerializable(it.next());
            }
        }
        dest.writeString(this.ops);
    }
}
