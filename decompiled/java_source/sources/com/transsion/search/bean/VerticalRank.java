package com.transsion.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001aJJ\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010$J\u0006\u0010%\u001a\u00020\nJ\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\nHÖ\u0001J\t\u0010+\u001a\u00020\u0004HÖ\u0001J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u00061"}, d2 = {"Lcom/transsion/search/bean/VerticalRank;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", TrackingKey.DESCRIPTION, "deeplink", "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "count", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/Integer;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getDescription", "setDescription", "getDeeplink", "setDeeplink", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getCount", "()Ljava/lang/Integer;", "setCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/Integer;)Lcom/transsion/search/bean/VerticalRank;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VerticalRank implements Parcelable, Serializable {
    public static final Parcelable.Creator<VerticalRank> CREATOR = new a();
    private Integer count;
    private Cover cover;
    private String deeplink;
    private String description;
    private String title;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VerticalRank createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VerticalRank(parcel.readString(), parcel.readString(), parcel.readString(), (Cover) parcel.readSerializable(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final VerticalRank[] newArray(int i11) {
            return new VerticalRank[i11];
        }
    }

    public VerticalRank(String str, String str2, String str3, Cover cover, Integer num) {
        this.title = str;
        this.description = str2;
        this.deeplink = str3;
        this.cover = cover;
        this.count = num;
    }

    public static /* synthetic */ VerticalRank copy$default(VerticalRank verticalRank, String str, String str2, String str3, Cover cover, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = verticalRank.title;
        }
        if ((i11 & 2) != 0) {
            str2 = verticalRank.description;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            str3 = verticalRank.deeplink;
        }
        String str5 = str3;
        if ((i11 & 8) != 0) {
            cover = verticalRank.cover;
        }
        Cover cover2 = cover;
        if ((i11 & 16) != 0) {
            num = verticalRank.count;
        }
        return verticalRank.copy(str, str4, str5, cover2, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getCount() {
        return this.count;
    }

    public final VerticalRank copy(String title, String description, String deeplink, Cover cover, Integer count) {
        return new VerticalRank(title, description, deeplink, cover, count);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VerticalRank)) {
            return false;
        }
        VerticalRank verticalRank = (VerticalRank) other;
        return Intrinsics.c(this.title, verticalRank.title) && Intrinsics.c(this.description, verticalRank.description) && Intrinsics.c(this.deeplink, verticalRank.deeplink) && Intrinsics.c(this.cover, verticalRank.cover) && Intrinsics.c(this.count, verticalRank.count);
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

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.deeplink;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Cover cover = this.cover;
        int iHashCode4 = (iHashCode3 + (cover == null ? 0 : cover.hashCode())) * 31;
        Integer num = this.count;
        return iHashCode4 + (num != null ? num.hashCode() : 0);
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

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "VerticalRank(title=" + this.title + ", description=" + this.description + ", deeplink=" + this.deeplink + ", cover=" + this.cover + ", count=" + this.count + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        dest.writeString(this.title);
        dest.writeString(this.description);
        dest.writeString(this.deeplink);
        dest.writeSerializable(this.cover);
        Integer num = this.count;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
    }
}
