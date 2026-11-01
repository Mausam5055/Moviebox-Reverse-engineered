package com.transsion.upgradesdk.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J.\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/transsion/upgradesdk/bean/UpgradeStatus;", "Ljava/io/Serializable;", "code", "", "data", "message", "", "(ILjava/lang/Integer;Ljava/lang/String;)V", "getCode", "()I", "getData", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMessage", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(ILjava/lang/Integer;Ljava/lang/String;)Lcom/transsion/upgradesdk/bean/UpgradeStatus;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "upgradesdk_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UpgradeStatus implements Serializable {
    private final int code;
    private final Integer data;
    private final String message;

    public UpgradeStatus(int i11, Integer num, String message) {
        Intrinsics.h(message, "message");
        this.code = i11;
        this.data = num;
        this.message = message;
    }

    public /* synthetic */ UpgradeStatus(int i11, Integer num, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i12 & 2) != 0 ? null : num, str);
    }

    public static /* synthetic */ UpgradeStatus copy$default(UpgradeStatus upgradeStatus, int i11, Integer num, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = upgradeStatus.code;
        }
        if ((i12 & 2) != 0) {
            num = upgradeStatus.data;
        }
        if ((i12 & 4) != 0) {
            str = upgradeStatus.message;
        }
        return upgradeStatus.copy(i11, num, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final UpgradeStatus copy(int code, Integer data, String message) {
        Intrinsics.h(message, "message");
        return new UpgradeStatus(code, data, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpgradeStatus)) {
            return false;
        }
        UpgradeStatus upgradeStatus = (UpgradeStatus) other;
        return this.code == upgradeStatus.code && Intrinsics.c(this.data, upgradeStatus.data) && Intrinsics.c(this.message, upgradeStatus.message);
    }

    public final int getCode() {
        return this.code;
    }

    public final Integer getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        int i11 = this.code * 31;
        Integer num = this.data;
        return this.message.hashCode() + ((i11 + (num == null ? 0 : num.hashCode())) * 31);
    }

    public String toString() {
        return "UpgradeStatus(code=" + this.code + ", data=" + this.data + ", message=" + this.message + ')';
    }
}
