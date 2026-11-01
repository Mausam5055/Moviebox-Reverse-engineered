package com.transsion.home.tv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001f\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018JJ\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010$J\u0006\u0010%\u001a\u00020\bJ\u0013\u0010&\u001a\u00020\u00032\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\bHÖ\u0001J\t\u0010*\u001a\u00020\u0005HÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\bR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001a¨\u00060"}, d2 = {"Lcom/transsion/home/tv/bean/Pager;", "Landroid/os/Parcelable;", "hasMore", "", "nextPage", "", "page", "perPage", "", "totalCount", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getHasMore", "()Ljava/lang/Boolean;", "setHasMore", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getNextPage", "()Ljava/lang/String;", "setNextPage", "(Ljava/lang/String;)V", "getPage", "setPage", "getPerPage", "()Ljava/lang/Integer;", "setPerPage", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTotalCount", "setTotalCount", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/home/tv/bean/Pager;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Pager implements Parcelable {
    private Boolean hasMore;
    private String nextPage;
    private String page;
    private Integer perPage;
    private Integer totalCount;
    public static final Parcelable.Creator<Pager> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pager createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new Pager(boolValueOf, parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Pager[] newArray(int i11) {
            return new Pager[i11];
        }
    }

    public Pager(Boolean bool, String str, String str2, Integer num, Integer num2) {
        this.hasMore = bool;
        this.nextPage = str;
        this.page = str2;
        this.perPage = num;
        this.totalCount = num2;
    }

    public static /* synthetic */ Pager copy$default(Pager pager, Boolean bool, String str, String str2, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = pager.hasMore;
        }
        if ((i11 & 2) != 0) {
            str = pager.nextPage;
        }
        String str3 = str;
        if ((i11 & 4) != 0) {
            str2 = pager.page;
        }
        String str4 = str2;
        if ((i11 & 8) != 0) {
            num = pager.perPage;
        }
        Integer num3 = num;
        if ((i11 & 16) != 0) {
            num2 = pager.totalCount;
        }
        return pager.copy(bool, str3, str4, num3, num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getHasMore() {
        return this.hasMore;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNextPage() {
        return this.nextPage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getPerPage() {
        return this.perPage;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getTotalCount() {
        return this.totalCount;
    }

    public final Pager copy(Boolean hasMore, String nextPage, String page, Integer perPage, Integer totalCount) {
        return new Pager(hasMore, nextPage, page, perPage, totalCount);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Pager)) {
            return false;
        }
        Pager pager = (Pager) other;
        return Intrinsics.c(this.hasMore, pager.hasMore) && Intrinsics.c(this.nextPage, pager.nextPage) && Intrinsics.c(this.page, pager.page) && Intrinsics.c(this.perPage, pager.perPage) && Intrinsics.c(this.totalCount, pager.totalCount);
    }

    public final Boolean getHasMore() {
        return this.hasMore;
    }

    public final String getNextPage() {
        return this.nextPage;
    }

    public final String getPage() {
        return this.page;
    }

    public final Integer getPerPage() {
        return this.perPage;
    }

    public final Integer getTotalCount() {
        return this.totalCount;
    }

    public int hashCode() {
        Boolean bool = this.hasMore;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.nextPage;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.page;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.perPage;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.totalCount;
        return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    public final void setHasMore(Boolean bool) {
        this.hasMore = bool;
    }

    public final void setNextPage(String str) {
        this.nextPage = str;
    }

    public final void setPage(String str) {
        this.page = str;
    }

    public final void setPerPage(Integer num) {
        this.perPage = num;
    }

    public final void setTotalCount(Integer num) {
        this.totalCount = num;
    }

    public String toString() {
        return "Pager(hasMore=" + this.hasMore + ", nextPage=" + this.nextPage + ", page=" + this.page + ", perPage=" + this.perPage + ", totalCount=" + this.totalCount + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Boolean bool = this.hasMore;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.nextPage);
        dest.writeString(this.page);
        Integer num = this.perPage;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.totalCount;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
    }
}
