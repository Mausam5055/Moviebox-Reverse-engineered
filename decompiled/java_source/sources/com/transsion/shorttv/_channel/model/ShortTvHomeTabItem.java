package com.transsion.shorttv._channel.model;

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

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jl\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00102J\u0006\u00103\u001a\u00020\u0005J\u0013\u00104\u001a\u00020'2\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\t\u00107\u001a\u00020\u0005HÖ\u0001J\t\u00108\u001a\u00020\u0003HÖ\u0001J\u0016\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0010\"\u0004\b\u0019\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0010\"\u0004\b\u001d\u0010\u0012R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0010\"\u0004\b%\u0010\u0012R\u0011\u0010&\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b&\u0010(¨\u0006>"}, d2 = {"Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;", "Landroid/os/Parcelable;", "name", "", "tabId", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "url", "tabCode", "nameImage", "Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;", "selectNameImage", "displayType", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getTabId", "()Ljava/lang/Integer;", "setTabId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getType", "setType", "getUrl", "setUrl", "getTabCode", "setTabCode", "getNameImage", "()Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;", "setNameImage", "(Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;)V", "getSelectNameImage", "setSelectNameImage", "getDisplayType", "setDisplayType", "isOpenLandPage", "", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTvHomeTabItem implements Parcelable {
    public static final Parcelable.Creator<ShortTvHomeTabItem> CREATOR = new a();
    private String displayType;
    private String name;
    private ShortTvNameImage nameImage;
    private ShortTvNameImage selectNameImage;
    private String tabCode;
    private Integer tabId;
    private String type;
    private String url;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShortTvHomeTabItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ShortTvHomeTabItem(parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : ShortTvNameImage.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? ShortTvNameImage.CREATOR.createFromParcel(parcel) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ShortTvHomeTabItem[] newArray(int i11) {
            return new ShortTvHomeTabItem[i11];
        }
    }

    public ShortTvHomeTabItem(String str, Integer num, String str2, String url, String str3, ShortTvNameImage shortTvNameImage, ShortTvNameImage shortTvNameImage2, String str4) {
        Intrinsics.h(url, "url");
        this.name = str;
        this.tabId = num;
        this.type = str2;
        this.url = url;
        this.tabCode = str3;
        this.nameImage = shortTvNameImage;
        this.selectNameImage = shortTvNameImage2;
        this.displayType = str4;
    }

    public /* synthetic */ ShortTvHomeTabItem(String str, Integer num, String str2, String str3, String str4, ShortTvNameImage shortTvNameImage, ShortTvNameImage shortTvNameImage2, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, num, str2, str3, str4, (i11 & 32) != 0 ? null : shortTvNameImage, (i11 & 64) != 0 ? null : shortTvNameImage2, (i11 & 128) != 0 ? BottomTabType.TAB_CODE_SHORT_TV : str5);
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
    public final ShortTvNameImage getNameImage() {
        return this.nameImage;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final ShortTvNameImage getSelectNameImage() {
        return this.selectNameImage;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDisplayType() {
        return this.displayType;
    }

    public final ShortTvHomeTabItem copy(String name, Integer tabId, String type, String url, String tabCode, ShortTvNameImage nameImage, ShortTvNameImage selectNameImage, String displayType) {
        Intrinsics.h(url, "url");
        return new ShortTvHomeTabItem(name, tabId, type, url, tabCode, nameImage, selectNameImage, displayType);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTvHomeTabItem)) {
            return false;
        }
        ShortTvHomeTabItem shortTvHomeTabItem = (ShortTvHomeTabItem) other;
        return Intrinsics.c(this.name, shortTvHomeTabItem.name) && Intrinsics.c(this.tabId, shortTvHomeTabItem.tabId) && Intrinsics.c(this.type, shortTvHomeTabItem.type) && Intrinsics.c(this.url, shortTvHomeTabItem.url) && Intrinsics.c(this.tabCode, shortTvHomeTabItem.tabCode) && Intrinsics.c(this.nameImage, shortTvHomeTabItem.nameImage) && Intrinsics.c(this.selectNameImage, shortTvHomeTabItem.selectNameImage) && Intrinsics.c(this.displayType, shortTvHomeTabItem.displayType);
    }

    public final String getDisplayType() {
        return this.displayType;
    }

    public final String getName() {
        return this.name;
    }

    public final ShortTvNameImage getNameImage() {
        return this.nameImage;
    }

    public final ShortTvNameImage getSelectNameImage() {
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
        ShortTvNameImage shortTvNameImage = this.nameImage;
        int iHashCode5 = (iHashCode4 + (shortTvNameImage == null ? 0 : shortTvNameImage.hashCode())) * 31;
        ShortTvNameImage shortTvNameImage2 = this.selectNameImage;
        int iHashCode6 = (iHashCode5 + (shortTvNameImage2 == null ? 0 : shortTvNameImage2.hashCode())) * 31;
        String str4 = this.displayType;
        return iHashCode6 + (str4 != null ? str4.hashCode() : 0);
    }

    public final boolean isOpenLandPage() {
        return false;
    }

    public final void setDisplayType(String str) {
        this.displayType = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNameImage(ShortTvNameImage shortTvNameImage) {
        this.nameImage = shortTvNameImage;
    }

    public final void setSelectNameImage(ShortTvNameImage shortTvNameImage) {
        this.selectNameImage = shortTvNameImage;
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
        return "ShortTvHomeTabItem(name=" + this.name + ", tabId=" + this.tabId + ", type=" + this.type + ", url=" + this.url + ", tabCode=" + this.tabCode + ", nameImage=" + this.nameImage + ", selectNameImage=" + this.selectNameImage + ", displayType=" + this.displayType + ")";
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
        ShortTvNameImage shortTvNameImage = this.nameImage;
        if (shortTvNameImage == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            shortTvNameImage.writeToParcel(dest, flags);
        }
        ShortTvNameImage shortTvNameImage2 = this.selectNameImage;
        if (shortTvNameImage2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            shortTvNameImage2.writeToParcel(dest, flags);
        }
        dest.writeString(this.displayType);
    }
}
