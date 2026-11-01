package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.search_pugc.constant.SearchType;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003JQ\u0010,\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010-\u001a\u00020.J\u0013\u0010/\u001a\u00020\u001b2\b\u00100\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020.HÖ\u0001J\t\u00103\u001a\u00020\u0003HÖ\u0001J\u0016\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020.R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u0011\u0010\u001a\u001a\u00020\u001b8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010%¨\u00069"}, d2 = {"Lcom/transsion/search_pugc/bean/SearchResultItem;", "Landroid/os/Parcelable;", "topicType", "", "video", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "collection", "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "verticalRank", "Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "hashTag", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "showType", "<init>", "(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/lang/String;)V", "getTopicType", "()Ljava/lang/String;", "getVideo", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "getCollection", "()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "getVerticalRank", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "getHashTag", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "getShowType", "showTypeExpand", "", "getShowTypeExpand", "()Z", "searchType", "Lcom/transsion/search_pugc/constant/SearchType;", "getSearchType", "()Lcom/transsion/search_pugc/constant/SearchType;", "ops", "getOps", "setOps", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SearchResultItem implements Parcelable {
    public static final Parcelable.Creator<SearchResultItem> CREATOR = new a();

    @SerializedName("collection")
    private final UGCCollection collection;

    @SerializedName("hashTag")
    private final UGCVideoHashTag hashTag;
    private String ops;

    @SerializedName("showType")
    private final String showType;

    @SerializedName("topicType")
    private final String topicType;

    @SerializedName("verticalRank")
    private final UGCVerticalRank verticalRank;

    @SerializedName("video")
    private final UGCVideo video;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchResultItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SearchResultItem(parcel.readString(), (UGCVideo) parcel.readSerializable(), (UGCCollection) parcel.readParcelable(SearchResultItem.class.getClassLoader()), (UGCVerticalRank) parcel.readParcelable(SearchResultItem.class.getClassLoader()), (UGCVideoHashTag) parcel.readParcelable(SearchResultItem.class.getClassLoader()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SearchResultItem[] newArray(int i11) {
            return new SearchResultItem[i11];
        }
    }

    public SearchResultItem() {
        this(null, null, null, null, null, null, 63, null);
    }

    public SearchResultItem(String str, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, UGCVideoHashTag uGCVideoHashTag, String str2) {
        this.topicType = str;
        this.video = uGCVideo;
        this.collection = uGCCollection;
        this.verticalRank = uGCVerticalRank;
        this.hashTag = uGCVideoHashTag;
        this.showType = str2;
        this.ops = "";
    }

    public /* synthetic */ SearchResultItem(String str, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, UGCVideoHashTag uGCVideoHashTag, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : uGCVideo, (i11 & 4) != 0 ? null : uGCCollection, (i11 & 8) != 0 ? null : uGCVerticalRank, (i11 & 16) != 0 ? null : uGCVideoHashTag, (i11 & 32) != 0 ? null : str2);
    }

    public static /* synthetic */ SearchResultItem copy$default(SearchResultItem searchResultItem, String str, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, UGCVideoHashTag uGCVideoHashTag, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = searchResultItem.topicType;
        }
        if ((i11 & 2) != 0) {
            uGCVideo = searchResultItem.video;
        }
        UGCVideo uGCVideo2 = uGCVideo;
        if ((i11 & 4) != 0) {
            uGCCollection = searchResultItem.collection;
        }
        UGCCollection uGCCollection2 = uGCCollection;
        if ((i11 & 8) != 0) {
            uGCVerticalRank = searchResultItem.verticalRank;
        }
        UGCVerticalRank uGCVerticalRank2 = uGCVerticalRank;
        if ((i11 & 16) != 0) {
            uGCVideoHashTag = searchResultItem.hashTag;
        }
        UGCVideoHashTag uGCVideoHashTag2 = uGCVideoHashTag;
        if ((i11 & 32) != 0) {
            str2 = searchResultItem.showType;
        }
        return searchResultItem.copy(str, uGCVideo2, uGCCollection2, uGCVerticalRank2, uGCVideoHashTag2, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTopicType() {
        return this.topicType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final UGCVideo getVideo() {
        return this.video;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final UGCCollection getCollection() {
        return this.collection;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final UGCVideoHashTag getHashTag() {
        return this.hashTag;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getShowType() {
        return this.showType;
    }

    public final SearchResultItem copy(String topicType, UGCVideo video, UGCCollection collection, UGCVerticalRank verticalRank, UGCVideoHashTag hashTag, String showType) {
        return new SearchResultItem(topicType, video, collection, verticalRank, hashTag, showType);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchResultItem)) {
            return false;
        }
        SearchResultItem searchResultItem = (SearchResultItem) other;
        return Intrinsics.c(this.topicType, searchResultItem.topicType) && Intrinsics.c(this.video, searchResultItem.video) && Intrinsics.c(this.collection, searchResultItem.collection) && Intrinsics.c(this.verticalRank, searchResultItem.verticalRank) && Intrinsics.c(this.hashTag, searchResultItem.hashTag) && Intrinsics.c(this.showType, searchResultItem.showType);
    }

    public final UGCCollection getCollection() {
        return this.collection;
    }

    public final UGCVideoHashTag getHashTag() {
        return this.hashTag;
    }

    public final String getOps() {
        return this.ops;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final SearchType getSearchType() {
        String str = this.topicType;
        if (str != null) {
            switch (str.hashCode()) {
                case -1989652851:
                    if (str.equals("UGC_VIDEO")) {
                        return SearchType.UGC_VIDEO;
                    }
                    break;
                case 511113132:
                    if (str.equals("UGC_COLLECTION")) {
                        return getShowTypeExpand() ? SearchType.UGC_COLLECTION : SearchType.UGC_VIDEO;
                    }
                    break;
                case 932115657:
                    if (str.equals("HASH_TAG")) {
                        return SearchType.HASH_TAG;
                    }
                    break;
                case 2033770325:
                    if (str.equals("VERTICAL_RANK")) {
                        return getShowTypeExpand() ? SearchType.VERTICAL_RANK : SearchType.VERTICAL_RANK_TYPE2;
                    }
                    break;
            }
        }
        return SearchType.UNKNOW;
    }

    public final String getShowType() {
        return this.showType;
    }

    public final boolean getShowTypeExpand() {
        String str = this.showType;
        if (Intrinsics.c(str, "ShowTypeOne")) {
            return true;
        }
        Intrinsics.c(str, "ShowTypeTwo");
        return false;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public final UGCVideo getVideo() {
        return this.video;
    }

    public int hashCode() {
        String str = this.topicType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        UGCVideo uGCVideo = this.video;
        int iHashCode2 = (iHashCode + (uGCVideo == null ? 0 : uGCVideo.hashCode())) * 31;
        UGCCollection uGCCollection = this.collection;
        int iHashCode3 = (iHashCode2 + (uGCCollection == null ? 0 : uGCCollection.hashCode())) * 31;
        UGCVerticalRank uGCVerticalRank = this.verticalRank;
        int iHashCode4 = (iHashCode3 + (uGCVerticalRank == null ? 0 : uGCVerticalRank.hashCode())) * 31;
        UGCVideoHashTag uGCVideoHashTag = this.hashTag;
        int iHashCode5 = (iHashCode4 + (uGCVideoHashTag == null ? 0 : uGCVideoHashTag.hashCode())) * 31;
        String str2 = this.showType;
        return iHashCode5 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setOps(String str) {
        Intrinsics.h(str, "<set-?>");
        this.ops = str;
    }

    public String toString() {
        return "SearchResultItem(topicType=" + this.topicType + ", video=" + this.video + ", collection=" + this.collection + ", verticalRank=" + this.verticalRank + ", hashTag=" + this.hashTag + ", showType=" + this.showType + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.topicType);
        dest.writeSerializable(this.video);
        dest.writeParcelable(this.collection, flags);
        dest.writeParcelable(this.verticalRank, flags);
        dest.writeParcelable(this.hashTag, flags);
        dest.writeString(this.showType);
    }
}
