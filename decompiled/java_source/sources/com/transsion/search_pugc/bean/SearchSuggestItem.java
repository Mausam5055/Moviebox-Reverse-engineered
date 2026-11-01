package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001f"}, d2 = {"Lcom/transsion/search_pugc/bean/SearchSuggestItem;", "Landroid/os/Parcelable;", "topicType", "", "word", "verticalRank", "Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V", "getTopicType", "()Ljava/lang/String;", "getWord", "getVerticalRank", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SearchSuggestItem implements Parcelable {
    public static final Parcelable.Creator<SearchSuggestItem> CREATOR = new a();

    @SerializedName("topicType")
    private final String topicType;

    @SerializedName("verticalRank")
    private final UGCVerticalRank verticalRank;

    @SerializedName("word")
    private final String word;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchSuggestItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SearchSuggestItem(parcel.readString(), parcel.readString(), (UGCVerticalRank) parcel.readParcelable(SearchSuggestItem.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SearchSuggestItem[] newArray(int i11) {
            return new SearchSuggestItem[i11];
        }
    }

    public SearchSuggestItem() {
        this(null, null, null, 7, null);
    }

    public SearchSuggestItem(String topicType, String word, UGCVerticalRank uGCVerticalRank) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(word, "word");
        this.topicType = topicType;
        this.word = word;
        this.verticalRank = uGCVerticalRank;
    }

    public /* synthetic */ SearchSuggestItem(String str, String str2, UGCVerticalRank uGCVerticalRank, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? null : uGCVerticalRank);
    }

    public static /* synthetic */ SearchSuggestItem copy$default(SearchSuggestItem searchSuggestItem, String str, String str2, UGCVerticalRank uGCVerticalRank, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = searchSuggestItem.topicType;
        }
        if ((i11 & 2) != 0) {
            str2 = searchSuggestItem.word;
        }
        if ((i11 & 4) != 0) {
            uGCVerticalRank = searchSuggestItem.verticalRank;
        }
        return searchSuggestItem.copy(str, str2, uGCVerticalRank);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTopicType() {
        return this.topicType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public final SearchSuggestItem copy(String topicType, String word, UGCVerticalRank verticalRank) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(word, "word");
        return new SearchSuggestItem(topicType, word, verticalRank);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchSuggestItem)) {
            return false;
        }
        SearchSuggestItem searchSuggestItem = (SearchSuggestItem) other;
        return Intrinsics.c(this.topicType, searchSuggestItem.topicType) && Intrinsics.c(this.word, searchSuggestItem.word) && Intrinsics.c(this.verticalRank, searchSuggestItem.verticalRank);
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public final String getWord() {
        return this.word;
    }

    public int hashCode() {
        int iHashCode = ((this.topicType.hashCode() * 31) + this.word.hashCode()) * 31;
        UGCVerticalRank uGCVerticalRank = this.verticalRank;
        return iHashCode + (uGCVerticalRank == null ? 0 : uGCVerticalRank.hashCode());
    }

    public String toString() {
        return "SearchSuggestItem(topicType=" + this.topicType + ", word=" + this.word + ", verticalRank=" + this.verticalRank + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.topicType);
        dest.writeString(this.word);
        dest.writeParcelable(this.verticalRank, flags);
    }
}
