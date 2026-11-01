package com.transsion.usercenter.devicemanagement.model;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J>\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;", "", "deviceName", "", "loginTimestamp", "", RewardPlus.ICON, "deviceId", "<init>", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V", "getDeviceName", "()Ljava/lang/String;", "getLoginTimestamp", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getIcon", "getDeviceId", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LinkedDeviceDto {

    @SerializedName("deviceId")
    private final String deviceId;

    @SerializedName("deviceName")
    private final String deviceName;

    @SerializedName("deviceIcon")
    private final String icon;

    @SerializedName("loginTimestamp")
    private final Long loginTimestamp;

    public LinkedDeviceDto() {
        this(null, null, null, null, 15, null);
    }

    public LinkedDeviceDto(String str, Long l11, String str2, String str3) {
        this.deviceName = str;
        this.loginTimestamp = l11;
        this.icon = str2;
        this.deviceId = str3;
    }

    public /* synthetic */ LinkedDeviceDto(String str, Long l11, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : l11, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3);
    }

    public static /* synthetic */ LinkedDeviceDto copy$default(LinkedDeviceDto linkedDeviceDto, String str, Long l11, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = linkedDeviceDto.deviceName;
        }
        if ((i11 & 2) != 0) {
            l11 = linkedDeviceDto.loginTimestamp;
        }
        if ((i11 & 4) != 0) {
            str2 = linkedDeviceDto.icon;
        }
        if ((i11 & 8) != 0) {
            str3 = linkedDeviceDto.deviceId;
        }
        return linkedDeviceDto.copy(str, l11, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDeviceName() {
        return this.deviceName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getLoginTimestamp() {
        return this.loginTimestamp;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeviceId() {
        return this.deviceId;
    }

    public final LinkedDeviceDto copy(String deviceName, Long loginTimestamp, String icon, String deviceId) {
        return new LinkedDeviceDto(deviceName, loginTimestamp, icon, deviceId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LinkedDeviceDto)) {
            return false;
        }
        LinkedDeviceDto linkedDeviceDto = (LinkedDeviceDto) other;
        return Intrinsics.c(this.deviceName, linkedDeviceDto.deviceName) && Intrinsics.c(this.loginTimestamp, linkedDeviceDto.loginTimestamp) && Intrinsics.c(this.icon, linkedDeviceDto.icon) && Intrinsics.c(this.deviceId, linkedDeviceDto.deviceId);
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final Long getLoginTimestamp() {
        return this.loginTimestamp;
    }

    public int hashCode() {
        String str = this.deviceName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l11 = this.loginTimestamp;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str2 = this.icon;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.deviceId;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "LinkedDeviceDto(deviceName=" + this.deviceName + ", loginTimestamp=" + this.loginTimestamp + ", icon=" + this.icon + ", deviceId=" + this.deviceId + ")";
    }
}
