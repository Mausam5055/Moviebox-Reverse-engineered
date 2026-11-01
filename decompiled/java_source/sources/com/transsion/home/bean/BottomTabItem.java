package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.home.p004enum.BottomTabType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bD\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u009b\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010E\u001a\u00020\nJ\b\u0010F\u001a\u0004\u0018\u00010\u0003J\b\u0010G\u001a\u0004\u0018\u00010\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010L\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007HÆ\u0003J\t\u0010M\u001a\u00020\nHÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0003HÆ\u0003J°\u0001\u0010V\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010WJ\u0006\u0010X\u001a\u00020\u0010J\u0013\u0010Y\u001a\u00020\n2\b\u0010Z\u001a\u0004\u0018\u00010[HÖ\u0003J\t\u0010\\\u001a\u00020\u0010HÖ\u0001J\t\u0010]\u001a\u00020\u0003HÖ\u0001J\u0016\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001b\"\u0004\b\u001f\u0010\u001dR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR$\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u0010\n\u0002\u00106\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u001b\"\u0004\b8\u0010\u001dR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u001b\"\u0004\b>\u0010\u001dR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u001b\"\u0004\bD\u0010\u001dR\u0011\u0010H\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\bH\u0010'¨\u0006c"}, d2 = {"Lcom/transsion/home/bean/BottomTabItem;", "Landroid/os/Parcelable;", "btTabType", "", "name", "btTabCode", "subTabs", "", "Lcom/transsion/home/bean/HomeTabItem;", "statusWhite", "", RewardPlus.ICON, "Lcom/transsion/home/bean/Icon;", MimeTypes.BASE_TYPE_TEXT, "Lcom/transsion/home/bean/Text;", "operateTabId", "", "url", "badge", "Lcom/transsion/home/bean/Badge;", "displayType", "gradeFilter", "Lcom/transsion/home/bean/GradeBean;", "defaultSubTabCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/transsion/home/bean/Icon;Lcom/transsion/home/bean/Text;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/home/bean/Badge;Ljava/lang/String;Lcom/transsion/home/bean/GradeBean;Ljava/lang/String;)V", "getBtTabType", "()Ljava/lang/String;", "setBtTabType", "(Ljava/lang/String;)V", "getName", "setName", "getBtTabCode", "setBtTabCode", "getSubTabs", "()Ljava/util/List;", "setSubTabs", "(Ljava/util/List;)V", "getStatusWhite", "()Z", "setStatusWhite", "(Z)V", "getIcon", "()Lcom/transsion/home/bean/Icon;", "setIcon", "(Lcom/transsion/home/bean/Icon;)V", "getText", "()Lcom/transsion/home/bean/Text;", "setText", "(Lcom/transsion/home/bean/Text;)V", "getOperateTabId", "()Ljava/lang/Integer;", "setOperateTabId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getUrl", "setUrl", "getBadge", "()Lcom/transsion/home/bean/Badge;", "setBadge", "(Lcom/transsion/home/bean/Badge;)V", "getDisplayType", "setDisplayType", "getGradeFilter", "()Lcom/transsion/home/bean/GradeBean;", "setGradeFilter", "(Lcom/transsion/home/bean/GradeBean;)V", "getDefaultSubTabCode", "setDefaultSubTabCode", "isLargeUiType", "getDefaultIcon", "getSelectIcon", "isOpenLandPage", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/transsion/home/bean/Icon;Lcom/transsion/home/bean/Text;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/home/bean/Badge;Ljava/lang/String;Lcom/transsion/home/bean/GradeBean;Ljava/lang/String;)Lcom/transsion/home/bean/BottomTabItem;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BottomTabItem implements Parcelable {
    private Badge badge;
    private String btTabCode;
    private String btTabType;
    private String defaultSubTabCode;
    private String displayType;
    private GradeBean gradeFilter;
    private Icon icon;
    private String name;
    private Integer operateTabId;
    private boolean statusWhite;
    private List<HomeTabItem> subTabs;
    private Text text;
    private String url;
    public static final Parcelable.Creator<BottomTabItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BottomTabItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(parcel.readInt() == 0 ? null : HomeTabItem.CREATOR.createFromParcel(parcel));
                }
            }
            return new BottomTabItem(string, string2, string3, arrayList, parcel.readInt() != 0, parcel.readInt() == 0 ? null : Icon.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : Text.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() == 0 ? null : Badge.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt() != 0 ? GradeBean.CREATOR.createFromParcel(parcel) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final BottomTabItem[] newArray(int i11) {
            return new BottomTabItem[i11];
        }
    }

    public BottomTabItem(String str, String str2, String str3, List<HomeTabItem> list, boolean z10, Icon icon, Text text, Integer num, String str4, Badge badge, String str5, GradeBean gradeBean, String str6) {
        this.btTabType = str;
        this.name = str2;
        this.btTabCode = str3;
        this.subTabs = list;
        this.statusWhite = z10;
        this.icon = icon;
        this.text = text;
        this.operateTabId = num;
        this.url = str4;
        this.badge = badge;
        this.displayType = str5;
        this.gradeFilter = gradeBean;
        this.defaultSubTabCode = str6;
    }

    public /* synthetic */ BottomTabItem(String str, String str2, String str3, List list, boolean z10, Icon icon, Text text, Integer num, String str4, Badge badge, String str5, GradeBean gradeBean, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, list, (i11 & 16) != 0 ? false : z10, icon, (i11 & 64) != 0 ? null : text, num, str4, (i11 & 512) != 0 ? null : badge, (i11 & 1024) != 0 ? BottomTabType.TAB_OPEN_TYPE_TAB : str5, (i11 & 2048) != 0 ? null : gradeBean, (i11 & 4096) != 0 ? null : str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBtTabType() {
        return this.btTabType;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Badge getBadge() {
        return this.badge;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getDisplayType() {
        return this.displayType;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final GradeBean getGradeFilter() {
        return this.gradeFilter;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getDefaultSubTabCode() {
        return this.defaultSubTabCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBtTabCode() {
        return this.btTabCode;
    }

    public final List<HomeTabItem> component4() {
        return this.subTabs;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getStatusWhite() {
        return this.statusWhite;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Icon getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Text getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getOperateTabId() {
        return this.operateTabId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    public final BottomTabItem copy(String btTabType, String name, String btTabCode, List<HomeTabItem> subTabs, boolean statusWhite, Icon icon, Text text, Integer operateTabId, String url, Badge badge, String displayType, GradeBean gradeFilter, String defaultSubTabCode) {
        return new BottomTabItem(btTabType, name, btTabCode, subTabs, statusWhite, icon, text, operateTabId, url, badge, displayType, gradeFilter, defaultSubTabCode);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BottomTabItem)) {
            return false;
        }
        BottomTabItem bottomTabItem = (BottomTabItem) other;
        return Intrinsics.c(this.btTabType, bottomTabItem.btTabType) && Intrinsics.c(this.name, bottomTabItem.name) && Intrinsics.c(this.btTabCode, bottomTabItem.btTabCode) && Intrinsics.c(this.subTabs, bottomTabItem.subTabs) && this.statusWhite == bottomTabItem.statusWhite && Intrinsics.c(this.icon, bottomTabItem.icon) && Intrinsics.c(this.text, bottomTabItem.text) && Intrinsics.c(this.operateTabId, bottomTabItem.operateTabId) && Intrinsics.c(this.url, bottomTabItem.url) && Intrinsics.c(this.badge, bottomTabItem.badge) && Intrinsics.c(this.displayType, bottomTabItem.displayType) && Intrinsics.c(this.gradeFilter, bottomTabItem.gradeFilter) && Intrinsics.c(this.defaultSubTabCode, bottomTabItem.defaultSubTabCode);
    }

    public final Badge getBadge() {
        return this.badge;
    }

    public final String getBtTabCode() {
        return this.btTabCode;
    }

    public final String getBtTabType() {
        return this.btTabType;
    }

    public final String getDefaultIcon() {
        if (isLargeUiType()) {
            Icon icon = this.icon;
            if (icon != null) {
                return icon.getDefaultBigIcon();
            }
            return null;
        }
        Icon icon2 = this.icon;
        if (icon2 != null) {
            return icon2.getDefaultIcon();
        }
        return null;
    }

    public final String getDefaultSubTabCode() {
        return this.defaultSubTabCode;
    }

    public final String getDisplayType() {
        return this.displayType;
    }

    public final GradeBean getGradeFilter() {
        return this.gradeFilter;
    }

    public final Icon getIcon() {
        return this.icon;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getOperateTabId() {
        return this.operateTabId;
    }

    public final String getSelectIcon() {
        if (isLargeUiType()) {
            Icon icon = this.icon;
            if (icon != null) {
                return icon.getSelectBigIcon();
            }
            return null;
        }
        Icon icon2 = this.icon;
        if (icon2 != null) {
            return icon2.getSelectIcon();
        }
        return null;
    }

    public final boolean getStatusWhite() {
        return this.statusWhite;
    }

    public final List<HomeTabItem> getSubTabs() {
        return this.subTabs;
    }

    public final Text getText() {
        return this.text;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.btTabType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.btTabCode;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<HomeTabItem> list = this.subTabs;
        int iHashCode4 = (((iHashCode3 + (list == null ? 0 : list.hashCode())) * 31) + e.a(this.statusWhite)) * 31;
        Icon icon = this.icon;
        int iHashCode5 = (iHashCode4 + (icon == null ? 0 : icon.hashCode())) * 31;
        Text text = this.text;
        int iHashCode6 = (iHashCode5 + (text == null ? 0 : text.hashCode())) * 31;
        Integer num = this.operateTabId;
        int iHashCode7 = (iHashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.url;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Badge badge = this.badge;
        int iHashCode9 = (iHashCode8 + (badge == null ? 0 : badge.hashCode())) * 31;
        String str5 = this.displayType;
        int iHashCode10 = (iHashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        GradeBean gradeBean = this.gradeFilter;
        int iHashCode11 = (iHashCode10 + (gradeBean == null ? 0 : gradeBean.hashCode())) * 31;
        String str6 = this.defaultSubTabCode;
        return iHashCode11 + (str6 != null ? str6.hashCode() : 0);
    }

    public final boolean isLargeUiType() {
        Icon icon = this.icon;
        String defaultBigIcon = icon != null ? icon.getDefaultBigIcon() : null;
        return !(defaultBigIcon == null || defaultBigIcon.length() == 0);
    }

    public final boolean isOpenLandPage() {
        String str;
        return (!Intrinsics.c(this.displayType, BottomTabType.TAB_OPEN_TYPE_LAND_PAGE) || (str = this.url) == null || str.length() == 0) ? false : true;
    }

    public final void setBadge(Badge badge) {
        this.badge = badge;
    }

    public final void setBtTabCode(String str) {
        this.btTabCode = str;
    }

    public final void setBtTabType(String str) {
        this.btTabType = str;
    }

    public final void setDefaultSubTabCode(String str) {
        this.defaultSubTabCode = str;
    }

    public final void setDisplayType(String str) {
        this.displayType = str;
    }

    public final void setGradeFilter(GradeBean gradeBean) {
        this.gradeFilter = gradeBean;
    }

    public final void setIcon(Icon icon) {
        this.icon = icon;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOperateTabId(Integer num) {
        this.operateTabId = num;
    }

    public final void setStatusWhite(boolean z10) {
        this.statusWhite = z10;
    }

    public final void setSubTabs(List<HomeTabItem> list) {
        this.subTabs = list;
    }

    public final void setText(Text text) {
        this.text = text;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "BottomTabItem(btTabType=" + this.btTabType + ", name=" + this.name + ", btTabCode=" + this.btTabCode + ", subTabs=" + this.subTabs + ", statusWhite=" + this.statusWhite + ", icon=" + this.icon + ", text=" + this.text + ", operateTabId=" + this.operateTabId + ", url=" + this.url + ", badge=" + this.badge + ", displayType=" + this.displayType + ", gradeFilter=" + this.gradeFilter + ", defaultSubTabCode=" + this.defaultSubTabCode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.btTabType);
        dest.writeString(this.name);
        dest.writeString(this.btTabCode);
        List<HomeTabItem> list = this.subTabs;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            for (HomeTabItem homeTabItem : list) {
                if (homeTabItem == null) {
                    dest.writeInt(0);
                } else {
                    dest.writeInt(1);
                    homeTabItem.writeToParcel(dest, flags);
                }
            }
        }
        dest.writeInt(this.statusWhite ? 1 : 0);
        Icon icon = this.icon;
        if (icon == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            icon.writeToParcel(dest, flags);
        }
        Text text = this.text;
        if (text == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            text.writeToParcel(dest, flags);
        }
        Integer num = this.operateTabId;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.url);
        Badge badge = this.badge;
        if (badge == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            badge.writeToParcel(dest, flags);
        }
        dest.writeString(this.displayType);
        GradeBean gradeBean = this.gradeFilter;
        if (gradeBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            gradeBean.writeToParcel(dest, flags);
        }
        dest.writeString(this.defaultSubTabCode);
    }
}
