package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0003J]\u0010'\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0006\u0010(\u001a\u00020)J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020)HÖ\u0001J\t\u0010/\u001a\u00020\bHÖ\u0001J\u0016\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020)R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R&\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR \u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R \u0010\f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u0018¨\u00065"}, d2 = {"Lcom/transsion/home/bean/UGCRankAllData;", "Landroid/os/Parcelable;", "categoryList", "", "Lcom/transsion/home/bean/CategoryType;", "items", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "currentCategoryType", "", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", CampaignEx.JSON_KEY_TITLE, "ops", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/lang/String;Ljava/lang/String;)V", "getCategoryList", "()Ljava/util/List;", "setCategoryList", "(Ljava/util/List;)V", "getItems", "setItems", "getCurrentCategoryType", "()Ljava/lang/String;", "setCurrentCategoryType", "(Ljava/lang/String;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getTitle", "setTitle", "getOps", "setOps", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCRankAllData implements Parcelable {

    @SerializedName("categoryList")
    private List<CategoryType> categoryList;

    @SerializedName("currentCategoryType")
    private String currentCategoryType;

    @SerializedName("items")
    private List<UGCContent> items;

    @SerializedName("ops")
    private String ops;

    @SerializedName("pager")
    private Pager pager;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;
    public static final Parcelable.Creator<UGCRankAllData> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCRankAllData createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList3 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList3.add(CategoryType.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList3;
            }
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(parcel.readParcelable(UGCRankAllData.class.getClassLoader()));
                }
            }
            return new UGCRankAllData(arrayList, arrayList2, parcel.readString(), (Pager) parcel.readSerializable(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCRankAllData[] newArray(int i11) {
            return new UGCRankAllData[i11];
        }
    }

    public UGCRankAllData() {
        this(null, null, null, null, null, null, 63, null);
    }

    public UGCRankAllData(List<CategoryType> list, List<UGCContent> list2, String str, Pager pager, String str2, String str3) {
        this.categoryList = list;
        this.items = list2;
        this.currentCategoryType = str;
        this.pager = pager;
        this.title = str2;
        this.ops = str3;
    }

    public /* synthetic */ UGCRankAllData(List list, List list2, String str, Pager pager, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : list2, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? null : pager, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCRankAllData copy$default(UGCRankAllData uGCRankAllData, List list, List list2, String str, Pager pager, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = uGCRankAllData.categoryList;
        }
        if ((i11 & 2) != 0) {
            list2 = uGCRankAllData.items;
        }
        List list3 = list2;
        if ((i11 & 4) != 0) {
            str = uGCRankAllData.currentCategoryType;
        }
        String str4 = str;
        if ((i11 & 8) != 0) {
            pager = uGCRankAllData.pager;
        }
        Pager pager2 = pager;
        if ((i11 & 16) != 0) {
            str2 = uGCRankAllData.title;
        }
        String str5 = str2;
        if ((i11 & 32) != 0) {
            str3 = uGCRankAllData.ops;
        }
        return uGCRankAllData.copy(list, list3, str4, pager2, str5, str3);
    }

    public final List<CategoryType> component1() {
        return this.categoryList;
    }

    public final List<UGCContent> component2() {
        return this.items;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCurrentCategoryType() {
        return this.currentCategoryType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final UGCRankAllData copy(List<CategoryType> categoryList, List<UGCContent> items, String currentCategoryType, Pager pager, String title, String ops) {
        return new UGCRankAllData(categoryList, items, currentCategoryType, pager, title, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCRankAllData)) {
            return false;
        }
        UGCRankAllData uGCRankAllData = (UGCRankAllData) other;
        return Intrinsics.c(this.categoryList, uGCRankAllData.categoryList) && Intrinsics.c(this.items, uGCRankAllData.items) && Intrinsics.c(this.currentCategoryType, uGCRankAllData.currentCategoryType) && Intrinsics.c(this.pager, uGCRankAllData.pager) && Intrinsics.c(this.title, uGCRankAllData.title) && Intrinsics.c(this.ops, uGCRankAllData.ops);
    }

    public final List<CategoryType> getCategoryList() {
        return this.categoryList;
    }

    public final String getCurrentCategoryType() {
        return this.currentCategoryType;
    }

    public final List<UGCContent> getItems() {
        return this.items;
    }

    public final String getOps() {
        return this.ops;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        List<CategoryType> list = this.categoryList;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<UGCContent> list2 = this.items;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.currentCategoryType;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Pager pager = this.pager;
        int iHashCode4 = (iHashCode3 + (pager == null ? 0 : pager.hashCode())) * 31;
        String str2 = this.title;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ops;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setCategoryList(List<CategoryType> list) {
        this.categoryList = list;
    }

    public final void setCurrentCategoryType(String str) {
        this.currentCategoryType = str;
    }

    public final void setItems(List<UGCContent> list) {
        this.items = list;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "UGCRankAllData(categoryList=" + this.categoryList + ", items=" + this.items + ", currentCategoryType=" + this.currentCategoryType + ", pager=" + this.pager + ", title=" + this.title + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<CategoryType> list = this.categoryList;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<CategoryType> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        List<UGCContent> list2 = this.items;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<UGCContent> it2 = list2.iterator();
            while (it2.hasNext()) {
                dest.writeParcelable(it2.next(), flags);
            }
        }
        dest.writeString(this.currentCategoryType);
        dest.writeSerializable(this.pager);
        dest.writeString(this.title);
        dest.writeString(this.ops);
    }
}
