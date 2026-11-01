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
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b6\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B£\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\r\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010@\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rHÆ\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010/J\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rHÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jª\u0001\u0010E\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\r2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010FJ\u0006\u0010G\u001a\u00020\u000fJ\u0013\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010KHÖ\u0003J\t\u0010L\u001a\u00020\u000fHÖ\u0001J\t\u0010M\u001a\u00020\u0003HÖ\u0001J\u0016\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u000fR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0017\"\u0004\b)\u0010\u0019R&\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R \u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0017\"\u0004\b4\u0010\u0019R&\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010+\"\u0004\b6\u0010-R \u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0017\"\u0004\b8\u0010\u0019¨\u0006S"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "Landroid/os/Parcelable;", "collectionId", "", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "coverVerticel", "creator", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;", "category", "genres", "", "videoNum", "", "watchNum", "videos", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ops", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getCollectionId", "()Ljava/lang/String;", "setCollectionId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getCoverVerticel", "setCoverVerticel", "getCreator", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;", "setCreator", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;)V", "getCategory", "setCategory", "getGenres", "()Ljava/util/List;", "setGenres", "(Ljava/util/List;)V", "getVideoNum", "()Ljava/lang/Integer;", "setVideoNum", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getWatchNum", "setWatchNum", "getVideos", "setVideos", "getOps", "setOps", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCCollection implements Parcelable {
    public static final Parcelable.Creator<UGCCollection> CREATOR = new a();

    @SerializedName("category")
    private String category;

    @SerializedName("collectionId")
    private String collectionId;

    @SerializedName("cover")
    private Cover cover;

    @SerializedName("coverVerticel")
    private Cover coverVerticel;

    @SerializedName("creator")
    private UGCVideoCreator creator;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String description;

    @SerializedName("genres")
    private List<String> genres;

    @SerializedName("ops")
    private String ops;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName("videoNum")
    private Integer videoNum;

    @SerializedName("videos")
    private List<? extends UGCVideo> videos;

    @SerializedName("watchNum")
    private String watchNum;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCCollection createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Cover cover = (Cover) parcel.readSerializable();
            Cover cover2 = (Cover) parcel.readSerializable();
            UGCVideoCreator uGCVideoCreator = (UGCVideoCreator) parcel.readSerializable();
            String string4 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            ArrayList arrayList = null;
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string5 = parcel.readString();
            if (parcel.readInt() != 0) {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(parcel.readSerializable());
                }
            }
            return new UGCCollection(string, string2, string3, cover, cover2, uGCVideoCreator, string4, arrayListCreateStringArrayList, numValueOf, string5, arrayList, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCCollection[] newArray(int i11) {
            return new UGCCollection[i11];
        }
    }

    public UGCCollection() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, UnixStat.PERM_MASK, null);
    }

    public UGCCollection(String str, String str2, String str3, Cover cover, Cover cover2, UGCVideoCreator uGCVideoCreator, String str4, List<String> list, Integer num, String str5, List<? extends UGCVideo> list2, String str6) {
        this.collectionId = str;
        this.title = str2;
        this.description = str3;
        this.cover = cover;
        this.coverVerticel = cover2;
        this.creator = uGCVideoCreator;
        this.category = str4;
        this.genres = list;
        this.videoNum = num;
        this.watchNum = str5;
        this.videos = list2;
        this.ops = str6;
    }

    public /* synthetic */ UGCCollection(String str, String str2, String str3, Cover cover, Cover cover2, UGCVideoCreator uGCVideoCreator, String str4, List list, Integer num, String str5, List list2, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : cover, (i11 & 16) != 0 ? null : cover2, (i11 & 32) != 0 ? null : uGCVideoCreator, (i11 & 64) != 0 ? null : str4, (i11 & 128) != 0 ? null : list, (i11 & 256) != 0 ? null : num, (i11 & 512) != 0 ? null : str5, (i11 & 1024) != 0 ? null : list2, (i11 & 2048) == 0 ? str6 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getWatchNum() {
        return this.watchNum;
    }

    public final List<UGCVideo> component11() {
        return this.videos;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
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
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Cover getCoverVerticel() {
        return this.coverVerticel;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final UGCVideoCreator getCreator() {
        return this.creator;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    public final List<String> component8() {
        return this.genres;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getVideoNum() {
        return this.videoNum;
    }

    public final UGCCollection copy(String collectionId, String title, String description, Cover cover, Cover coverVerticel, UGCVideoCreator creator, String category, List<String> genres, Integer videoNum, String watchNum, List<? extends UGCVideo> videos, String ops) {
        return new UGCCollection(collectionId, title, description, cover, coverVerticel, creator, category, genres, videoNum, watchNum, videos, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCCollection)) {
            return false;
        }
        UGCCollection uGCCollection = (UGCCollection) other;
        return Intrinsics.c(this.collectionId, uGCCollection.collectionId) && Intrinsics.c(this.title, uGCCollection.title) && Intrinsics.c(this.description, uGCCollection.description) && Intrinsics.c(this.cover, uGCCollection.cover) && Intrinsics.c(this.coverVerticel, uGCCollection.coverVerticel) && Intrinsics.c(this.creator, uGCCollection.creator) && Intrinsics.c(this.category, uGCCollection.category) && Intrinsics.c(this.genres, uGCCollection.genres) && Intrinsics.c(this.videoNum, uGCCollection.videoNum) && Intrinsics.c(this.watchNum, uGCCollection.watchNum) && Intrinsics.c(this.videos, uGCCollection.videos) && Intrinsics.c(this.ops, uGCCollection.ops);
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final Cover getCoverVerticel() {
        return this.coverVerticel;
    }

    public final UGCVideoCreator getCreator() {
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

    public final Integer getVideoNum() {
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
        Cover cover = this.cover;
        int iHashCode4 = (iHashCode3 + (cover == null ? 0 : cover.hashCode())) * 31;
        Cover cover2 = this.coverVerticel;
        int iHashCode5 = (iHashCode4 + (cover2 == null ? 0 : cover2.hashCode())) * 31;
        UGCVideoCreator uGCVideoCreator = this.creator;
        int iHashCode6 = (iHashCode5 + (uGCVideoCreator == null ? 0 : uGCVideoCreator.hashCode())) * 31;
        String str4 = this.category;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<String> list = this.genres;
        int iHashCode8 = (iHashCode7 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.videoNum;
        int iHashCode9 = (iHashCode8 + (num == null ? 0 : num.hashCode())) * 31;
        String str5 = this.watchNum;
        int iHashCode10 = (iHashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<? extends UGCVideo> list2 = this.videos;
        int iHashCode11 = (iHashCode10 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str6 = this.ops;
        return iHashCode11 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCollectionId(String str) {
        this.collectionId = str;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setCoverVerticel(Cover cover) {
        this.coverVerticel = cover;
    }

    public final void setCreator(UGCVideoCreator uGCVideoCreator) {
        this.creator = uGCVideoCreator;
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

    public final void setVideoNum(Integer num) {
        this.videoNum = num;
    }

    public final void setVideos(List<? extends UGCVideo> list) {
        this.videos = list;
    }

    public final void setWatchNum(String str) {
        this.watchNum = str;
    }

    public String toString() {
        return "UGCCollection(collectionId=" + this.collectionId + ", title=" + this.title + ", description=" + this.description + ", cover=" + this.cover + ", coverVerticel=" + this.coverVerticel + ", creator=" + this.creator + ", category=" + this.category + ", genres=" + this.genres + ", videoNum=" + this.videoNum + ", watchNum=" + this.watchNum + ", videos=" + this.videos + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.collectionId);
        dest.writeString(this.title);
        dest.writeString(this.description);
        dest.writeSerializable(this.cover);
        dest.writeSerializable(this.coverVerticel);
        dest.writeSerializable(this.creator);
        dest.writeString(this.category);
        dest.writeStringList(this.genres);
        Integer num = this.videoNum;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.watchNum);
        List<? extends UGCVideo> list = this.videos;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<? extends UGCVideo> it = list.iterator();
            while (it.hasNext()) {
                dest.writeSerializable(it.next());
            }
        }
        dest.writeString(this.ops);
    }
}
