package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.home.p004enum.BottomTabType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b-\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010(Jx\u00107\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u00108J\u0006\u00109\u001a\u00020\u0005J\u0013\u0010:\u001a\u00020\u000e2\b\u0010;\u001a\u0004\u0018\u00010<HÖ\u0003J\t\u0010=\u001a\u00020\u0005HÖ\u0001J\t\u0010>\u001a\u00020\u0003HÖ\u0001J\u0016\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0012\"\u0004\b\u001b\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0012\"\u0004\b\u001f\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010!\"\u0004\b%\u0010#R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0012\"\u0004\b'\u0010\u0014R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b\r\u0010(\"\u0004\b)\u0010*R\u0011\u0010,\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u0006D"}, d2 = {"Lcom/transsion/home/bean/HomeTabItem;", "Landroid/os/Parcelable;", "name", "", "tabId", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "url", "tabCode", "nameImage", "Lcom/transsion/home/bean/NameImage;", "selectNameImage", "displayType", "isEducationTab", "", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/NameImage;Lcom/transsion/home/bean/NameImage;Ljava/lang/String;Ljava/lang/Boolean;)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getTabId", "()Ljava/lang/Integer;", "setTabId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getType", "setType", "getUrl", "setUrl", "getTabCode", "setTabCode", "getNameImage", "()Lcom/transsion/home/bean/NameImage;", "setNameImage", "(Lcom/transsion/home/bean/NameImage;)V", "getSelectNameImage", "setSelectNameImage", "getDisplayType", "setDisplayType", "()Ljava/lang/Boolean;", "setEducationTab", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "isOpenLandPage", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/NameImage;Lcom/transsion/home/bean/NameImage;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/transsion/home/bean/HomeTabItem;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomeTabItem implements Parcelable {
    private String displayType;
    private Boolean isEducationTab;
    private String name;
    private NameImage nameImage;
    private NameImage selectNameImage;
    private String tabCode;
    private Integer tabId;
    private String type;
    private String url;
    public static final Parcelable.Creator<HomeTabItem> CREATOR = new a();
    public static final int $stable = 8;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HomeTabItem createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            NameImage nameImageCreateFromParcel = parcel.readInt() == 0 ? null : NameImage.CREATOR.createFromParcel(parcel);
            NameImage nameImageCreateFromParcel2 = parcel.readInt() == 0 ? null : NameImage.CREATOR.createFromParcel(parcel);
            String string5 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new HomeTabItem(string, numValueOf, string2, string3, string4, nameImageCreateFromParcel, nameImageCreateFromParcel2, string5, boolValueOf);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HomeTabItem[] newArray(int i11) {
            return new HomeTabItem[i11];
        }
    }

    public HomeTabItem(String str, Integer num, String str2, String url, String str3, NameImage nameImage, NameImage nameImage2, String str4, Boolean bool) {
        Intrinsics.h(url, "url");
        this.name = str;
        this.tabId = num;
        this.type = str2;
        this.url = url;
        this.tabCode = str3;
        this.nameImage = nameImage;
        this.selectNameImage = nameImage2;
        this.displayType = str4;
        this.isEducationTab = bool;
    }

    public /* synthetic */ HomeTabItem(String str, Integer num, String str2, String str3, String str4, NameImage nameImage, NameImage nameImage2, String str5, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, num, str2, str3, str4, (i11 & 32) != 0 ? null : nameImage, (i11 & 64) != 0 ? null : nameImage2, (i11 & 128) != 0 ? BottomTabType.TAB_OPEN_TYPE_TAB : str5, (i11 & 256) != 0 ? Boolean.FALSE : bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getTabId() {
        return this.tabId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTabCode() {
        return this.tabCode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final NameImage getNameImage() {
        return this.nameImage;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final NameImage getSelectNameImage() {
        return this.selectNameImage;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDisplayType() {
        return this.displayType;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getIsEducationTab() {
        return this.isEducationTab;
    }

    public final HomeTabItem copy(String name, Integer tabId, String type, String url, String tabCode, NameImage nameImage, NameImage selectNameImage, String displayType, Boolean isEducationTab) {
        Intrinsics.h(url, "url");
        return new HomeTabItem(name, tabId, type, url, tabCode, nameImage, selectNameImage, displayType, isEducationTab);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomeTabItem)) {
            return false;
        }
        HomeTabItem homeTabItem = (HomeTabItem) other;
        return Intrinsics.c(this.name, homeTabItem.name) && Intrinsics.c(this.tabId, homeTabItem.tabId) && Intrinsics.c(this.type, homeTabItem.type) && Intrinsics.c(this.url, homeTabItem.url) && Intrinsics.c(this.tabCode, homeTabItem.tabCode) && Intrinsics.c(this.nameImage, homeTabItem.nameImage) && Intrinsics.c(this.selectNameImage, homeTabItem.selectNameImage) && Intrinsics.c(this.displayType, homeTabItem.displayType) && Intrinsics.c(this.isEducationTab, homeTabItem.isEducationTab);
    }

    public final String getDisplayType() {
        return this.displayType;
    }

    public final String getName() {
        return this.name;
    }

    public final NameImage getNameImage() {
        return this.nameImage;
    }

    public final NameImage getSelectNameImage() {
        return this.selectNameImage;
    }

    public final String getTabCode() {
        return this.tabCode;
    }

    public final Integer getTabId() {
        return this.tabId;
    }

    public final String getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.tabId;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.type;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.url.hashCode()) * 31;
        String str3 = this.tabCode;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        NameImage nameImage = this.nameImage;
        int iHashCode5 = (iHashCode4 + (nameImage == null ? 0 : nameImage.hashCode())) * 31;
        NameImage nameImage2 = this.selectNameImage;
        int iHashCode6 = (iHashCode5 + (nameImage2 == null ? 0 : nameImage2.hashCode())) * 31;
        String str4 = this.displayType;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool = this.isEducationTab;
        return iHashCode7 + (bool != null ? bool.hashCode() : 0);
    }

    public final Boolean isEducationTab() {
        return this.isEducationTab;
    }

    public final boolean isOpenLandPage() {
        return Intrinsics.c(this.displayType, BottomTabType.TAB_OPEN_TYPE_LAND_PAGE) && this.url.length() > 0;
    }

    public final void setDisplayType(String str) {
        this.displayType = str;
    }

    public final void setEducationTab(Boolean bool) {
        this.isEducationTab = bool;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNameImage(NameImage nameImage) {
        this.nameImage = nameImage;
    }

    public final void setSelectNameImage(NameImage nameImage) {
        this.selectNameImage = nameImage;
    }

    public final void setTabCode(String str) {
        this.tabCode = str;
    }

    public final void setTabId(Integer num) {
        this.tabId = num;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public String toString() {
        return "HomeTabItem(name=" + this.name + ", tabId=" + this.tabId + ", type=" + this.type + ", url=" + this.url + ", tabCode=" + this.tabCode + ", nameImage=" + this.nameImage + ", selectNameImage=" + this.selectNameImage + ", displayType=" + this.displayType + ", isEducationTab=" + this.isEducationTab + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.name);
        Integer num = this.tabId;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.type);
        dest.writeString(this.url);
        dest.writeString(this.tabCode);
        NameImage nameImage = this.nameImage;
        if (nameImage == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            nameImage.writeToParcel(dest, flags);
        }
        NameImage nameImage2 = this.selectNameImage;
        if (nameImage2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            nameImage2.writeToParcel(dest, flags);
        }
        dest.writeString(this.displayType);
        Boolean bool = this.isEducationTab;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
    }
}
