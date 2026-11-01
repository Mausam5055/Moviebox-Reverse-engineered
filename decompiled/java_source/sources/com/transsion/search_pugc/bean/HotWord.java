package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001f"}, d2 = {"Lcom/transsion/search_pugc/bean/HotWord;", "Landroid/os/Parcelable;", "topicType", "", "word", "hashTag", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V", "getTopicType", "()Ljava/lang/String;", "getWord", "getHashTag", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HotWord implements Parcelable {
    public static final Parcelable.Creator<HotWord> CREATOR = new a();

    @SerializedName("hashTag")
    private final UGCVideoHashTag hashTag;

    @SerializedName("topicType")
    private final String topicType;

    @SerializedName("word")
    private final String word;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HotWord createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HotWord(parcel.readString(), parcel.readString(), (UGCVideoHashTag) parcel.readParcelable(HotWord.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HotWord[] newArray(int i11) {
            return new HotWord[i11];
        }
    }

    public HotWord() {
        this(null, null, null, 7, null);
    }

    public HotWord(String topicType, String word, UGCVideoHashTag uGCVideoHashTag) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(word, "word");
        this.topicType = topicType;
        this.word = word;
        this.hashTag = uGCVideoHashTag;
    }

    public /* synthetic */ HotWord(String str, String str2, UGCVideoHashTag uGCVideoHashTag, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? null : uGCVideoHashTag);
    }

    public static /* synthetic */ HotWord copy$default(HotWord hotWord, String str, String str2, UGCVideoHashTag uGCVideoHashTag, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = hotWord.topicType;
        }
        if ((i11 & 2) != 0) {
            str2 = hotWord.word;
        }
        if ((i11 & 4) != 0) {
            uGCVideoHashTag = hotWord.hashTag;
        }
        return hotWord.copy(str, str2, uGCVideoHashTag);
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
    public final UGCVideoHashTag getHashTag() {
        return this.hashTag;
    }

    public final HotWord copy(String topicType, String word, UGCVideoHashTag hashTag) {
        Intrinsics.h(topicType, "topicType");
        Intrinsics.h(word, "word");
        return new HotWord(topicType, word, hashTag);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HotWord)) {
            return false;
        }
        HotWord hotWord = (HotWord) other;
        return Intrinsics.c(this.topicType, hotWord.topicType) && Intrinsics.c(this.word, hotWord.word) && Intrinsics.c(this.hashTag, hotWord.hashTag);
    }

    public final UGCVideoHashTag getHashTag() {
        return this.hashTag;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final String getWord() {
        return this.word;
    }

    public int hashCode() {
        int iHashCode = ((this.topicType.hashCode() * 31) + this.word.hashCode()) * 31;
        UGCVideoHashTag uGCVideoHashTag = this.hashTag;
        return iHashCode + (uGCVideoHashTag == null ? 0 : uGCVideoHashTag.hashCode());
    }

    public String toString() {
        return "HotWord(topicType=" + this.topicType + ", word=" + this.word + ", hashTag=" + this.hashTag + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.topicType);
        dest.writeString(this.word);
        dest.writeParcelable(this.hashTag, flags);
    }
}
