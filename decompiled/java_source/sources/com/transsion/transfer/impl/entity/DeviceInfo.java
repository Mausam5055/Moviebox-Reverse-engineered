package com.transsion.transfer.impl.entity;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/transsion/transfer/impl/entity/DeviceInfo;", "", "deviceAvatar", "Lcom/transsion/transfer/impl/entity/FileData;", "deviceName", "", "<init>", "(Lcom/transsion/transfer/impl/entity/FileData;Ljava/lang/String;)V", "getDeviceAvatar", "()Lcom/transsion/transfer/impl/entity/FileData;", "setDeviceAvatar", "(Lcom/transsion/transfer/impl/entity/FileData;)V", "getDeviceName", "()Ljava/lang/String;", "setDeviceName", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DeviceInfo {
    private FileData deviceAvatar;
    private String deviceName;

    /* JADX WARN: Multi-variable type inference failed */
    public DeviceInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public DeviceInfo(FileData fileData, String str) {
        this.deviceAvatar = fileData;
        this.deviceName = str;
    }

    public /* synthetic */ DeviceInfo(FileData fileData, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : fileData, (i11 & 2) != 0 ? null : str);
    }

    public static /* synthetic */ DeviceInfo copy$default(DeviceInfo deviceInfo, FileData fileData, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            fileData = deviceInfo.deviceAvatar;
        }
        if ((i11 & 2) != 0) {
            str = deviceInfo.deviceName;
        }
        return deviceInfo.copy(fileData, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final FileData getDeviceAvatar() {
        return this.deviceAvatar;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeviceName() {
        return this.deviceName;
    }

    public final DeviceInfo copy(FileData deviceAvatar, String deviceName) {
        return new DeviceInfo(deviceAvatar, deviceName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeviceInfo)) {
            return false;
        }
        DeviceInfo deviceInfo = (DeviceInfo) other;
        return Intrinsics.c(this.deviceAvatar, deviceInfo.deviceAvatar) && Intrinsics.c(this.deviceName, deviceInfo.deviceName);
    }

    public final FileData getDeviceAvatar() {
        return this.deviceAvatar;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public int hashCode() {
        FileData fileData = this.deviceAvatar;
        int iHashCode = (fileData == null ? 0 : fileData.hashCode()) * 31;
        String str = this.deviceName;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final void setDeviceAvatar(FileData fileData) {
        this.deviceAvatar = fileData;
    }

    public final void setDeviceName(String str) {
        this.deviceName = str;
    }

    public String toString() {
        return "DeviceInfo(deviceAvatar=" + this.deviceAvatar + ", deviceName=" + this.deviceName + ")";
    }
}
