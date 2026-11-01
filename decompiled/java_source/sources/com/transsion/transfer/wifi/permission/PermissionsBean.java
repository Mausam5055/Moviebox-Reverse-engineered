package com.transsion.transfer.wifi.permission;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.transsion.transfer.wifi.bean.PermissionState;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0087\b\u0018\u0000 <2\u00020\u0001:\u0001=BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0015J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u0019J\u0010\u0010\u001e\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0019JZ\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b!\u0010\u0019J\u0010\u0010\"\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\"\u0010\u0015J\u001a\u0010&\u001a\u00020%2\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b&\u0010'R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010(\u001a\u0004\b)\u0010\u0015\"\u0004\b*\u0010+R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010(\u001a\u0004\b,\u0010\u0015\"\u0004\b-\u0010+R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010.\u001a\u0004\b/\u0010\u0019\"\u0004\b0\u00101R$\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010.\u001a\u0004\b2\u0010\u0019\"\u0004\b3\u00101R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00104\u001a\u0004\b5\u0010\u001c\"\u0004\b6\u00107R\"\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010.\u001a\u0004\b8\u0010\u0019\"\u0004\b9\u00101R\"\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010.\u001a\u0004\b:\u0010\u0019\"\u0004\b;\u00101¨\u0006>"}, d2 = {"Lcom/transsion/transfer/wifi/permission/PermissionsBean;", "Landroid/os/Parcelable;", "", "itemType", RewardPlus.ICON, "", CampaignEx.JSON_KEY_TITLE, "content", "Lcom/transsion/transfer/wifi/bean/PermissionState;", "state", TmcConstants.MENU_KEY_PERMISSION, "btnName", "<init>", "(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "component2", "component3", "()Ljava/lang/String;", "component4", "component5", "()Lcom/transsion/transfer/wifi/bean/PermissionState;", "component6", "component7", "copy", "(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "I", "getItemType", "setItemType", "(I)V", "getIcon", "setIcon", "Ljava/lang/String;", "getTitle", "setTitle", "(Ljava/lang/String;)V", "getContent", "setContent", "Lcom/transsion/transfer/wifi/bean/PermissionState;", "getState", "setState", "(Lcom/transsion/transfer/wifi/bean/PermissionState;)V", "getPermission", "setPermission", "getBtnName", "setBtnName", "Companion", "a", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PermissionsBean implements Parcelable {
    public static final int ITEM_TYPE_PERMISSION = 0;
    private String btnName;
    private String content;
    private int icon;
    private int itemType;
    private String permission;
    private PermissionState state;
    private String title;
    public static final Parcelable.Creator<PermissionsBean> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PermissionsBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PermissionsBean(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), PermissionState.valueOf(parcel.readString()), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PermissionsBean[] newArray(int i11) {
            return new PermissionsBean[i11];
        }
    }

    public PermissionsBean(int i11, int i12, String str, String str2, PermissionState state, String permission, String btnName) {
        Intrinsics.h(state, "state");
        Intrinsics.h(permission, "permission");
        Intrinsics.h(btnName, "btnName");
        this.itemType = i11;
        this.icon = i12;
        this.title = str;
        this.content = str2;
        this.state = state;
        this.permission = permission;
        this.btnName = btnName;
    }

    public /* synthetic */ PermissionsBean(int i11, int i12, String str, String str2, PermissionState permissionState, String str3, String str4, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 0 : i12, (i13 & 4) != 0 ? null : str, (i13 & 8) != 0 ? null : str2, permissionState, str3, str4);
    }

    public static /* synthetic */ PermissionsBean copy$default(PermissionsBean permissionsBean, int i11, int i12, String str, String str2, PermissionState permissionState, String str3, String str4, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = permissionsBean.itemType;
        }
        if ((i13 & 2) != 0) {
            i12 = permissionsBean.icon;
        }
        int i14 = i12;
        if ((i13 & 4) != 0) {
            str = permissionsBean.title;
        }
        String str5 = str;
        if ((i13 & 8) != 0) {
            str2 = permissionsBean.content;
        }
        String str6 = str2;
        if ((i13 & 16) != 0) {
            permissionState = permissionsBean.state;
        }
        PermissionState permissionState2 = permissionState;
        if ((i13 & 32) != 0) {
            str3 = permissionsBean.permission;
        }
        String str7 = str3;
        if ((i13 & 64) != 0) {
            str4 = permissionsBean.btnName;
        }
        return permissionsBean.copy(i11, i14, str5, str6, permissionState2, str7, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getItemType() {
        return this.itemType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final PermissionState getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPermission() {
        return this.permission;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getBtnName() {
        return this.btnName;
    }

    public final PermissionsBean copy(int itemType, int icon, String title, String content, PermissionState state, String permission, String btnName) {
        Intrinsics.h(state, "state");
        Intrinsics.h(permission, "permission");
        Intrinsics.h(btnName, "btnName");
        return new PermissionsBean(itemType, icon, title, content, state, permission, btnName);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermissionsBean)) {
            return false;
        }
        PermissionsBean permissionsBean = (PermissionsBean) other;
        return this.itemType == permissionsBean.itemType && this.icon == permissionsBean.icon && Intrinsics.c(this.title, permissionsBean.title) && Intrinsics.c(this.content, permissionsBean.content) && this.state == permissionsBean.state && Intrinsics.c(this.permission, permissionsBean.permission) && Intrinsics.c(this.btnName, permissionsBean.btnName);
    }

    public final String getBtnName() {
        return this.btnName;
    }

    public final String getContent() {
        return this.content;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getItemType() {
        return this.itemType;
    }

    public final String getPermission() {
        return this.permission;
    }

    public final PermissionState getState() {
        return this.state;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int i11 = ((this.itemType * 31) + this.icon) * 31;
        String str = this.title;
        int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.content;
        return ((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.state.hashCode()) * 31) + this.permission.hashCode()) * 31) + this.btnName.hashCode();
    }

    public final void setBtnName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.btnName = str;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setIcon(int i11) {
        this.icon = i11;
    }

    public final void setItemType(int i11) {
        this.itemType = i11;
    }

    public final void setPermission(String str) {
        Intrinsics.h(str, "<set-?>");
        this.permission = str;
    }

    public final void setState(PermissionState permissionState) {
        Intrinsics.h(permissionState, "<set-?>");
        this.state = permissionState;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PermissionsBean(itemType=" + this.itemType + ", icon=" + this.icon + ", title=" + this.title + ", content=" + this.content + ", state=" + this.state + ", permission=" + this.permission + ", btnName=" + this.btnName + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.itemType);
        dest.writeInt(this.icon);
        dest.writeString(this.title);
        dest.writeString(this.content);
        dest.writeString(this.state.name());
        dest.writeString(this.permission);
        dest.writeString(this.btnName);
    }
}
