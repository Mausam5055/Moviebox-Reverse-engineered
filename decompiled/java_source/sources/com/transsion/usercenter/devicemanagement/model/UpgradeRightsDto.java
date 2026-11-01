package com.transsion.usercenter.devicemanagement.model;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003JD\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\tHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u000f\u0010\rR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;", "", "basicLinkedDevice", "", "proLinkedDevice", "rights", "", "Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;", TrackingKey.DESCRIPTION, "", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)V", "getBasicLinkedDevice", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getProLinkedDevice", "getRights", "()Ljava/util/List;", "getDescription", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UpgradeRightsDto {

    @SerializedName("basicLinkedDevice")
    private final Integer basicLinkedDevice;

    @SerializedName(TrackingKey.DESCRIPTION)
    private final String description;

    @SerializedName("proLinkedDevice")
    private final Integer proLinkedDevice;

    @SerializedName("rights")
    private final List<UpgradeRightDto> rights;

    public UpgradeRightsDto() {
        this(null, null, null, null, 15, null);
    }

    public UpgradeRightsDto(Integer num, Integer num2, List<UpgradeRightDto> list, String str) {
        this.basicLinkedDevice = num;
        this.proLinkedDevice = num2;
        this.rights = list;
        this.description = str;
    }

    public /* synthetic */ UpgradeRightsDto(Integer num, Integer num2, List list, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : num2, (i11 & 4) != 0 ? null : list, (i11 & 8) != 0 ? null : str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UpgradeRightsDto copy$default(UpgradeRightsDto upgradeRightsDto, Integer num, Integer num2, List list, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = upgradeRightsDto.basicLinkedDevice;
        }
        if ((i11 & 2) != 0) {
            num2 = upgradeRightsDto.proLinkedDevice;
        }
        if ((i11 & 4) != 0) {
            list = upgradeRightsDto.rights;
        }
        if ((i11 & 8) != 0) {
            str = upgradeRightsDto.description;
        }
        return upgradeRightsDto.copy(num, num2, list, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getBasicLinkedDevice() {
        return this.basicLinkedDevice;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getProLinkedDevice() {
        return this.proLinkedDevice;
    }

    public final List<UpgradeRightDto> component3() {
        return this.rights;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final UpgradeRightsDto copy(Integer basicLinkedDevice, Integer proLinkedDevice, List<UpgradeRightDto> rights, String description) {
        return new UpgradeRightsDto(basicLinkedDevice, proLinkedDevice, rights, description);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpgradeRightsDto)) {
            return false;
        }
        UpgradeRightsDto upgradeRightsDto = (UpgradeRightsDto) other;
        return Intrinsics.c(this.basicLinkedDevice, upgradeRightsDto.basicLinkedDevice) && Intrinsics.c(this.proLinkedDevice, upgradeRightsDto.proLinkedDevice) && Intrinsics.c(this.rights, upgradeRightsDto.rights) && Intrinsics.c(this.description, upgradeRightsDto.description);
    }

    public final Integer getBasicLinkedDevice() {
        return this.basicLinkedDevice;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Integer getProLinkedDevice() {
        return this.proLinkedDevice;
    }

    public final List<UpgradeRightDto> getRights() {
        return this.rights;
    }

    public int hashCode() {
        Integer num = this.basicLinkedDevice;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.proLinkedDevice;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<UpgradeRightDto> list = this.rights;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.description;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "UpgradeRightsDto(basicLinkedDevice=" + this.basicLinkedDevice + ", proLinkedDevice=" + this.proLinkedDevice + ", rights=" + this.rights + ", description=" + this.description + ")";
    }
}
