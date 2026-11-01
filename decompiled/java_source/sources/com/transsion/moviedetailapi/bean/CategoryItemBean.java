package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u0003J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0003R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006("}, d2 = {"Lcom/transsion/moviedetailapi/bean/CategoryItemBean;", "Landroid/os/Parcelable;", "number", "", "itemType", "", "subject", "Lcom/transsion/moviedetailapi/bean/Subject;", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)V", "getNumber", "()Ljava/lang/Integer;", "setNumber", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getItemType", "()Ljava/lang/String;", "setItemType", "(Ljava/lang/String;)V", "getSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/CategoryItemBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CategoryItemBean implements Parcelable {
    public static final Parcelable.Creator<CategoryItemBean> CREATOR = new a();

    @SerializedName("stationSource")
    private String itemType;

    @SerializedName("number")
    private Integer number;

    @SerializedName("info")
    private Subject subject;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CategoryItemBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CategoryItemBean(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), (Subject) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CategoryItemBean[] newArray(int i11) {
            return new CategoryItemBean[i11];
        }
    }

    public CategoryItemBean() {
        this(null, null, null, 7, null);
    }

    public CategoryItemBean(Integer num, String str, Subject subject) {
        this.number = num;
        this.itemType = str;
        this.subject = subject;
    }

    public /* synthetic */ CategoryItemBean(Integer num, String str, Subject subject, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : num, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : subject);
    }

    public static /* synthetic */ CategoryItemBean copy$default(CategoryItemBean categoryItemBean, Integer num, String str, Subject subject, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = categoryItemBean.number;
        }
        if ((i11 & 2) != 0) {
            str = categoryItemBean.itemType;
        }
        if ((i11 & 4) != 0) {
            subject = categoryItemBean.subject;
        }
        return categoryItemBean.copy(num, str, subject);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getNumber() {
        return this.number;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getItemType() {
        return this.itemType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    public final CategoryItemBean copy(Integer number, String itemType, Subject subject) {
        return new CategoryItemBean(number, itemType, subject);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CategoryItemBean)) {
            return false;
        }
        CategoryItemBean categoryItemBean = (CategoryItemBean) other;
        return Intrinsics.c(this.number, categoryItemBean.number) && Intrinsics.c(this.itemType, categoryItemBean.itemType) && Intrinsics.c(this.subject, categoryItemBean.subject);
    }

    public final String getItemType() {
        return this.itemType;
    }

    public final Integer getNumber() {
        return this.number;
    }

    public final Subject getSubject() {
        return this.subject;
    }

    public int hashCode() {
        Integer num = this.number;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.itemType;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Subject subject = this.subject;
        return iHashCode2 + (subject != null ? subject.hashCode() : 0);
    }

    public final void setItemType(String str) {
        this.itemType = str;
    }

    public final void setNumber(Integer num) {
        this.number = num;
    }

    public final void setSubject(Subject subject) {
        this.subject = subject;
    }

    public String toString() {
        return "CategoryItemBean(number=" + this.number + ", itemType=" + this.itemType + ", subject=" + this.subject + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        Integer num = this.number;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        dest.writeString(this.itemType);
        dest.writeSerializable(this.subject);
    }
}
