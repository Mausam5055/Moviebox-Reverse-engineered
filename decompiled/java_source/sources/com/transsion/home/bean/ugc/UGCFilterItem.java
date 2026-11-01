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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0016JJ\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010 J\u0006\u0010!\u001a\u00020\"J\u0013\u0010#\u001a\u00020\b2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\"HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\"R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\"\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006-"}, d2 = {"Lcom/transsion/home/bean/ugc/UGCFilterItem;", "Landroid/os/Parcelable;", "categoryId", "", "name", "parentId", "nameDesc", "withGrade", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getCategoryId", "()Ljava/lang/String;", "setCategoryId", "(Ljava/lang/String;)V", "getName", "setName", "getParentId", "setParentId", "getNameDesc", "setNameDesc", "getWithGrade", "()Ljava/lang/Boolean;", "setWithGrade", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/transsion/home/bean/ugc/UGCFilterItem;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCFilterItem implements Parcelable {

    @SerializedName("categoryId")
    private String categoryId;

    @SerializedName("name")
    private String name;

    @SerializedName("nameDesc")
    private String nameDesc;

    @SerializedName("parentId")
    private String parentId;

    @SerializedName("withGrade")
    private Boolean withGrade;
    public static final Parcelable.Creator<UGCFilterItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCFilterItem createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new UGCFilterItem(string, string2, string3, string4, boolValueOf);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCFilterItem[] newArray(int i11) {
            return new UGCFilterItem[i11];
        }
    }

    public UGCFilterItem() {
        this(null, null, null, null, null, 31, null);
    }

    public UGCFilterItem(String str, String str2, String str3, String str4, Boolean bool) {
        this.categoryId = str;
        this.name = str2;
        this.parentId = str3;
        this.nameDesc = str4;
        this.withGrade = bool;
    }

    public /* synthetic */ UGCFilterItem(String str, String str2, String str3, String str4, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) == 0 ? str4 : null, (i11 & 16) != 0 ? Boolean.FALSE : bool);
    }

    public static /* synthetic */ UGCFilterItem copy$default(UGCFilterItem uGCFilterItem, String str, String str2, String str3, String str4, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCFilterItem.categoryId;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCFilterItem.name;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = uGCFilterItem.parentId;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            str4 = uGCFilterItem.nameDesc;
        }
        String str7 = str4;
        if ((i11 & 16) != 0) {
            bool = uGCFilterItem.withGrade;
        }
        return uGCFilterItem.copy(str, str5, str6, str7, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCategoryId() {
        return this.categoryId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getParentId() {
        return this.parentId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNameDesc() {
        return this.nameDesc;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getWithGrade() {
        return this.withGrade;
    }

    public final UGCFilterItem copy(String categoryId, String name, String parentId, String nameDesc, Boolean withGrade) {
        return new UGCFilterItem(categoryId, name, parentId, nameDesc, withGrade);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCFilterItem)) {
            return false;
        }
        UGCFilterItem uGCFilterItem = (UGCFilterItem) other;
        return Intrinsics.c(this.categoryId, uGCFilterItem.categoryId) && Intrinsics.c(this.name, uGCFilterItem.name) && Intrinsics.c(this.parentId, uGCFilterItem.parentId) && Intrinsics.c(this.nameDesc, uGCFilterItem.nameDesc) && Intrinsics.c(this.withGrade, uGCFilterItem.withGrade);
    }

    public final String getCategoryId() {
        return this.categoryId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNameDesc() {
        return this.nameDesc;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final Boolean getWithGrade() {
        return this.withGrade;
    }

    public int hashCode() {
        String str = this.categoryId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.parentId;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.nameDesc;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool = this.withGrade;
        return iHashCode4 + (bool != null ? bool.hashCode() : 0);
    }

    public final void setCategoryId(String str) {
        this.categoryId = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNameDesc(String str) {
        this.nameDesc = str;
    }

    public final void setParentId(String str) {
        this.parentId = str;
    }

    public final void setWithGrade(Boolean bool) {
        this.withGrade = bool;
    }

    public String toString() {
        return "UGCFilterItem(categoryId=" + this.categoryId + ", name=" + this.name + ", parentId=" + this.parentId + ", nameDesc=" + this.nameDesc + ", withGrade=" + this.withGrade + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.os.Parcel, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v8, types: [int] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        ?? BooleanValue;
        Intrinsics.h(dest, "dest");
        dest.writeString(this.categoryId);
        dest.writeString(this.name);
        dest.writeString(this.parentId);
        dest.writeString(this.nameDesc);
        Boolean bool = this.withGrade;
        if (bool == null) {
            BooleanValue = 0;
        } else {
            dest.writeInt(1);
            BooleanValue = bool.booleanValue();
        }
        dest.writeInt(BooleanValue);
    }
}
