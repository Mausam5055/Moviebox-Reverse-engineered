package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001f"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;", "Landroid/os/Parcelable;", CustomConfigsKt.AB_TEST, "", CustomConfigsKt.CUSTOM_TAB, CustomConfigsKt.COMMON_CONFIG, CustomConfigsKt.DCDN_URL, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAbTest", "()Ljava/lang/String;", "getCommonConfig", "getCustomTab", "getDcdnUrl", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CustomConfigs implements Parcelable {
    public static final Parcelable.Creator<CustomConfigs> CREATOR = new Creator();

    @SerializedName(CustomConfigsKt.AB_TEST)
    private final String abTest;

    @SerializedName(CustomConfigsKt.COMMON_CONFIG)
    private final String commonConfig;

    @SerializedName(CustomConfigsKt.CUSTOM_TAB)
    private final String customTab;

    @SerializedName(CustomConfigsKt.DCDN_URL)
    private final String dcdnUrl;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<CustomConfigs> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CustomConfigs createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CustomConfigs(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CustomConfigs[] newArray(int i11) {
            return new CustomConfigs[i11];
        }
    }

    public CustomConfigs() {
        this(null, null, null, null, 15, null);
    }

    public CustomConfigs(String str, String str2, String str3, String str4) {
        this.abTest = str;
        this.customTab = str2;
        this.commonConfig = str3;
        this.dcdnUrl = str4;
    }

    public /* synthetic */ CustomConfigs(String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4);
    }

    public static /* synthetic */ CustomConfigs copy$default(CustomConfigs customConfigs, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = customConfigs.abTest;
        }
        if ((i11 & 2) != 0) {
            str2 = customConfigs.customTab;
        }
        if ((i11 & 4) != 0) {
            str3 = customConfigs.commonConfig;
        }
        if ((i11 & 8) != 0) {
            str4 = customConfigs.dcdnUrl;
        }
        return customConfigs.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAbTest() {
        return this.abTest;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCustomTab() {
        return this.customTab;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCommonConfig() {
        return this.commonConfig;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDcdnUrl() {
        return this.dcdnUrl;
    }

    public final CustomConfigs copy(String abTest, String customTab, String commonConfig, String dcdnUrl) {
        return new CustomConfigs(abTest, customTab, commonConfig, dcdnUrl);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomConfigs)) {
            return false;
        }
        CustomConfigs customConfigs = (CustomConfigs) other;
        return Intrinsics.c(this.abTest, customConfigs.abTest) && Intrinsics.c(this.customTab, customConfigs.customTab) && Intrinsics.c(this.commonConfig, customConfigs.commonConfig) && Intrinsics.c(this.dcdnUrl, customConfigs.dcdnUrl);
    }

    public final String getAbTest() {
        return this.abTest;
    }

    public final String getCommonConfig() {
        return this.commonConfig;
    }

    public final String getCustomTab() {
        return this.customTab;
    }

    public final String getDcdnUrl() {
        return this.dcdnUrl;
    }

    public int hashCode() {
        String str = this.abTest;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.customTab;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.commonConfig;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.dcdnUrl;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "CustomConfigs(abTest=" + this.abTest + ", customTab=" + this.customTab + ", commonConfig=" + this.commonConfig + ", dcdnUrl=" + this.dcdnUrl + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.abTest);
        parcel.writeString(this.customTab);
        parcel.writeString(this.commonConfig);
        parcel.writeString(this.dcdnUrl);
    }
}
