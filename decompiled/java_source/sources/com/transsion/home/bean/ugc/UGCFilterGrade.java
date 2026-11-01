package com.transsion.home.bean.ugc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/transsion/home/bean/ugc/UGCFilterGrade;", "Landroid/os/Parcelable;", "grade", "", "descName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getGrade", "()Ljava/lang/String;", "setGrade", "(Ljava/lang/String;)V", "getDescName", "setDescName", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCFilterGrade implements Parcelable {

    @SerializedName("descName")
    private String descName;

    @SerializedName("grade")
    private String grade;
    public static final Parcelable.Creator<UGCFilterGrade> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCFilterGrade createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new UGCFilterGrade(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCFilterGrade[] newArray(int i11) {
            return new UGCFilterGrade[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UGCFilterGrade() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public UGCFilterGrade(String str, String str2) {
        this.grade = str;
        this.descName = str2;
    }

    public /* synthetic */ UGCFilterGrade(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2);
    }

    public static /* synthetic */ UGCFilterGrade copy$default(UGCFilterGrade uGCFilterGrade, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCFilterGrade.grade;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCFilterGrade.descName;
        }
        return uGCFilterGrade.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGrade() {
        return this.grade;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescName() {
        return this.descName;
    }

    public final UGCFilterGrade copy(String grade, String descName) {
        return new UGCFilterGrade(grade, descName);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCFilterGrade)) {
            return false;
        }
        UGCFilterGrade uGCFilterGrade = (UGCFilterGrade) other;
        return Intrinsics.c(this.grade, uGCFilterGrade.grade) && Intrinsics.c(this.descName, uGCFilterGrade.descName);
    }

    public final String getDescName() {
        return this.descName;
    }

    public final String getGrade() {
        return this.grade;
    }

    public int hashCode() {
        String str = this.grade;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.descName;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setDescName(String str) {
        this.descName = str;
    }

    public final void setGrade(String str) {
        this.grade = str;
    }

    public String toString() {
        return "UGCFilterGrade(grade=" + this.grade + ", descName=" + this.descName + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.grade);
        dest.writeString(this.descName);
    }
}
