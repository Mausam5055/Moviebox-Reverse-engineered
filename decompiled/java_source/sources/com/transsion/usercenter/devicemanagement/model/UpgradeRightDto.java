package com.transsion.usercenter.devicemanagement.model;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010JJ\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;", "", "featureIcon", "", "featureName", "featureLink", "basicCount", "", "proCount", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getFeatureIcon", "()Ljava/lang/String;", "getFeatureName", "getFeatureLink", "getBasicCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getProCount", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UpgradeRightDto {

    @SerializedName("basicCount")
    private final Integer basicCount;

    @SerializedName("featureIcon")
    private final String featureIcon;

    @SerializedName("featureLink")
    private final String featureLink;

    @SerializedName("featureName")
    private final String featureName;

    @SerializedName("proCount")
    private final Integer proCount;

    public UpgradeRightDto() {
        this(null, null, null, null, null, 31, null);
    }

    public UpgradeRightDto(String str, String str2, String str3, Integer num, Integer num2) {
        this.featureIcon = str;
        this.featureName = str2;
        this.featureLink = str3;
        this.basicCount = num;
        this.proCount = num2;
    }

    public /* synthetic */ UpgradeRightDto(String str, String str2, String str3, Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : num2);
    }

    public static /* synthetic */ UpgradeRightDto copy$default(UpgradeRightDto upgradeRightDto, String str, String str2, String str3, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = upgradeRightDto.featureIcon;
        }
        if ((i11 & 2) != 0) {
            str2 = upgradeRightDto.featureName;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            str3 = upgradeRightDto.featureLink;
        }
        String str5 = str3;
        if ((i11 & 8) != 0) {
            num = upgradeRightDto.basicCount;
        }
        Integer num3 = num;
        if ((i11 & 16) != 0) {
            num2 = upgradeRightDto.proCount;
        }
        return upgradeRightDto.copy(str, str4, str5, num3, num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFeatureIcon() {
        return this.featureIcon;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFeatureName() {
        return this.featureName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFeatureLink() {
        return this.featureLink;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getBasicCount() {
        return this.basicCount;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getProCount() {
        return this.proCount;
    }

    public final UpgradeRightDto copy(String featureIcon, String featureName, String featureLink, Integer basicCount, Integer proCount) {
        return new UpgradeRightDto(featureIcon, featureName, featureLink, basicCount, proCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpgradeRightDto)) {
            return false;
        }
        UpgradeRightDto upgradeRightDto = (UpgradeRightDto) other;
        return Intrinsics.c(this.featureIcon, upgradeRightDto.featureIcon) && Intrinsics.c(this.featureName, upgradeRightDto.featureName) && Intrinsics.c(this.featureLink, upgradeRightDto.featureLink) && Intrinsics.c(this.basicCount, upgradeRightDto.basicCount) && Intrinsics.c(this.proCount, upgradeRightDto.proCount);
    }

    public final Integer getBasicCount() {
        return this.basicCount;
    }

    public final String getFeatureIcon() {
        return this.featureIcon;
    }

    public final String getFeatureLink() {
        return this.featureLink;
    }

    public final String getFeatureName() {
        return this.featureName;
    }

    public final Integer getProCount() {
        return this.proCount;
    }

    public int hashCode() {
        String str = this.featureIcon;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.featureName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.featureLink;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.basicCount;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.proCount;
        return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "UpgradeRightDto(featureIcon=" + this.featureIcon + ", featureName=" + this.featureName + ", featureLink=" + this.featureLink + ", basicCount=" + this.basicCount + ", proCount=" + this.proCount + ")";
    }
}
