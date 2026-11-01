package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003J>\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\"J\u0006\u0010#\u001a\u00020\u0003J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u00060"}, d2 = {"Lcom/transsion/home/bean/TrendingRespItem;", "Landroid/os/Parcelable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "subject", "Lcom/transsion/moviedetailapi/bean/Subject;", "displayMeta", "Lcom/transsion/home/bean/DisplayMeta;", "content", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "<init>", "(Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/DisplayMeta;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V", "getType", "()Ljava/lang/Integer;", "setType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getDisplayMeta", "()Lcom/transsion/home/bean/DisplayMeta;", "setDisplayMeta", "(Lcom/transsion/home/bean/DisplayMeta;)V", "getContent", "()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "setContent", "(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)V", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/DisplayMeta;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)Lcom/transsion/home/bean/TrendingRespItem;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TrendingRespItem implements Parcelable {
    private UGCContent content;
    private DisplayMeta displayMeta;
    private Subject subject;
    private Integer type;
    public static final Parcelable.Creator<TrendingRespItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TrendingRespItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new TrendingRespItem(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), (Subject) parcel.readSerializable(), parcel.readInt() != 0 ? DisplayMeta.CREATOR.createFromParcel(parcel) : null, (UGCContent) parcel.readParcelable(TrendingRespItem.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TrendingRespItem[] newArray(int i11) {
            return new TrendingRespItem[i11];
        }
    }

    public TrendingRespItem(Integer num, Subject subject, DisplayMeta displayMeta, UGCContent uGCContent) {
        this.type = num;
        this.subject = subject;
        this.displayMeta = displayMeta;
        this.content = uGCContent;
    }

    public /* synthetic */ TrendingRespItem(Integer num, Subject subject, DisplayMeta displayMeta, UGCContent uGCContent, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, subject, displayMeta, (i11 & 8) != 0 ? null : uGCContent);
    }

    public static /* synthetic */ TrendingRespItem copy$default(TrendingRespItem trendingRespItem, Integer num, Subject subject, DisplayMeta displayMeta, UGCContent uGCContent, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = trendingRespItem.type;
        }
        if ((i11 & 2) != 0) {
            subject = trendingRespItem.subject;
        }
        if ((i11 & 4) != 0) {
            displayMeta = trendingRespItem.displayMeta;
        }
        if ((i11 & 8) != 0) {
            uGCContent = trendingRespItem.content;
        }
        return trendingRespItem.copy(num, subject, displayMeta, uGCContent);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final DisplayMeta getDisplayMeta() {
        return this.displayMeta;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UGCContent getContent() {
        return this.content;
    }

    public final TrendingRespItem copy(Integer type, Subject subject, DisplayMeta displayMeta, UGCContent content) {
        return new TrendingRespItem(type, subject, displayMeta, content);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrendingRespItem)) {
            return false;
        }
        TrendingRespItem trendingRespItem = (TrendingRespItem) other;
        return Intrinsics.c(this.type, trendingRespItem.type) && Intrinsics.c(this.subject, trendingRespItem.subject) && Intrinsics.c(this.displayMeta, trendingRespItem.displayMeta) && Intrinsics.c(this.content, trendingRespItem.content);
    }

    public final UGCContent getContent() {
        return this.content;
    }

    public final DisplayMeta getDisplayMeta() {
        return this.displayMeta;
    }

    public final Subject getSubject() {
        return this.subject;
    }

    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.type;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Subject subject = this.subject;
        int iHashCode2 = (iHashCode + (subject == null ? 0 : subject.hashCode())) * 31;
        DisplayMeta displayMeta = this.displayMeta;
        int iHashCode3 = (iHashCode2 + (displayMeta == null ? 0 : displayMeta.hashCode())) * 31;
        UGCContent uGCContent = this.content;
        return iHashCode3 + (uGCContent != null ? uGCContent.hashCode() : 0);
    }

    public final void setContent(UGCContent uGCContent) {
        this.content = uGCContent;
    }

    public final void setDisplayMeta(DisplayMeta displayMeta) {
        this.displayMeta = displayMeta;
    }

    public final void setSubject(Subject subject) {
        this.subject = subject;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public String toString() {
        return "TrendingRespItem(type=" + this.type + ", subject=" + this.subject + ", displayMeta=" + this.displayMeta + ", content=" + this.content + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Integer num = this.type;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeSerializable(this.subject);
        DisplayMeta displayMeta = this.displayMeta;
        if (displayMeta == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            displayMeta.writeToParcel(dest, flags);
        }
        dest.writeParcelable(this.content, flags);
    }
}
