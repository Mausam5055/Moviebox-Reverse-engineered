package com.transsion.ad.ps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001cHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u000b\"\u0004\b\u0012\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000b\"\u0004\b\u0014\u0010\r¨\u0006("}, d2 = {"Lcom/transsion/ad/ps/model/Tag;", "Landroid/os/Parcelable;", "tagID", "", "name", "category", "isHot", "categoryID", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTagID", "()Ljava/lang/String;", "setTagID", "(Ljava/lang/String;)V", "getName", "setName", "getCategory", "setCategory", "setHot", "getCategoryID", "setCategoryID", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Tag implements Parcelable {
    public static final Parcelable.Creator<Tag> CREATOR = new a();
    private String category;
    private String categoryID;
    private String isHot;
    private String name;
    private String tagID;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Tag createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new Tag(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Tag[] newArray(int i11) {
            return new Tag[i11];
        }
    }

    public Tag(String str, String str2, String str3, String str4, String str5) {
        this.tagID = str;
        this.name = str2;
        this.category = str3;
        this.isHot = str4;
        this.categoryID = str5;
    }

    public static /* synthetic */ Tag copy$default(Tag tag, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = tag.tagID;
        }
        if ((i11 & 2) != 0) {
            str2 = tag.name;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = tag.category;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = tag.isHot;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = tag.categoryID;
        }
        return tag.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTagID() {
        return this.tagID;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getIsHot() {
        return this.isHot;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCategoryID() {
        return this.categoryID;
    }

    public final Tag copy(String tagID, String name, String category, String isHot, String categoryID) {
        return new Tag(tagID, name, category, isHot, categoryID);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) other;
        return Intrinsics.c(this.tagID, tag.tagID) && Intrinsics.c(this.name, tag.name) && Intrinsics.c(this.category, tag.category) && Intrinsics.c(this.isHot, tag.isHot) && Intrinsics.c(this.categoryID, tag.categoryID);
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getCategoryID() {
        return this.categoryID;
    }

    public final String getName() {
        return this.name;
    }

    public final String getTagID() {
        return this.tagID;
    }

    public int hashCode() {
        String str = this.tagID;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.category;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.isHot;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.categoryID;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String isHot() {
        return this.isHot;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCategoryID(String str) {
        this.categoryID = str;
    }

    public final void setHot(String str) {
        this.isHot = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setTagID(String str) {
        this.tagID = str;
    }

    public String toString() {
        return "Tag(tagID=" + this.tagID + ", name=" + this.name + ", category=" + this.category + ", isHot=" + this.isHot + ", categoryID=" + this.categoryID + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.tagID);
        dest.writeString(this.name);
        dest.writeString(this.category);
        dest.writeString(this.isHot);
        dest.writeString(this.categoryID);
    }
}
