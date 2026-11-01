package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0016\u001a\u00020\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0017HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0017R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\n\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\u000e¨\u0006#"}, d2 = {"Lcom/transsion/home/bean/Icon;", "Landroid/os/Parcelable;", "selectIcon", "", "defaultIcon", "defaultBigIcon", "selectBigIcon", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSelectIcon", "()Ljava/lang/String;", "getDefaultIcon", "getDefaultBigIcon", "setDefaultBigIcon", "(Ljava/lang/String;)V", "getSelectBigIcon", "setSelectBigIcon", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Icon implements Parcelable {
    private String defaultBigIcon;
    private final String defaultIcon;
    private String selectBigIcon;
    private final String selectIcon;
    public static final Parcelable.Creator<Icon> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Icon createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new Icon(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Icon[] newArray(int i11) {
            return new Icon[i11];
        }
    }

    public Icon(String str, String str2, String str3, String str4) {
        this.selectIcon = str;
        this.defaultIcon = str2;
        this.defaultBigIcon = str3;
        this.selectBigIcon = str4;
    }

    public static /* synthetic */ Icon copy$default(Icon icon, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = icon.selectIcon;
        }
        if ((i11 & 2) != 0) {
            str2 = icon.defaultIcon;
        }
        if ((i11 & 4) != 0) {
            str3 = icon.defaultBigIcon;
        }
        if ((i11 & 8) != 0) {
            str4 = icon.selectBigIcon;
        }
        return icon.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSelectIcon() {
        return this.selectIcon;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDefaultIcon() {
        return this.defaultIcon;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDefaultBigIcon() {
        return this.defaultBigIcon;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSelectBigIcon() {
        return this.selectBigIcon;
    }

    public final Icon copy(String selectIcon, String defaultIcon, String defaultBigIcon, String selectBigIcon) {
        return new Icon(selectIcon, defaultIcon, defaultBigIcon, selectBigIcon);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Icon)) {
            return false;
        }
        Icon icon = (Icon) other;
        return Intrinsics.c(this.selectIcon, icon.selectIcon) && Intrinsics.c(this.defaultIcon, icon.defaultIcon) && Intrinsics.c(this.defaultBigIcon, icon.defaultBigIcon) && Intrinsics.c(this.selectBigIcon, icon.selectBigIcon);
    }

    public final String getDefaultBigIcon() {
        return this.defaultBigIcon;
    }

    public final String getDefaultIcon() {
        return this.defaultIcon;
    }

    public final String getSelectBigIcon() {
        return this.selectBigIcon;
    }

    public final String getSelectIcon() {
        return this.selectIcon;
    }

    public int hashCode() {
        String str = this.selectIcon;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.defaultIcon;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.defaultBigIcon;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.selectBigIcon;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setDefaultBigIcon(String str) {
        this.defaultBigIcon = str;
    }

    public final void setSelectBigIcon(String str) {
        this.selectBigIcon = str;
    }

    public String toString() {
        return "Icon(selectIcon=" + this.selectIcon + ", defaultIcon=" + this.defaultIcon + ", defaultBigIcon=" + this.defaultBigIcon + ", selectBigIcon=" + this.selectBigIcon + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.selectIcon);
        dest.writeString(this.defaultIcon);
        dest.writeString(this.defaultBigIcon);
        dest.writeString(this.selectBigIcon);
    }
}
