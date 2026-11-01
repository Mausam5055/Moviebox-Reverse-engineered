package com.cloud.config.bean;

import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÆ\u0003J?\u0010\u0016\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001c"}, d2 = {"Lcom/cloud/config/bean/ShuntInfo;", "", CommonUtils.PARAM_CONDITIONPARAMKEYS, "", "", "expireTimestampMill", "shuntStatus", CommonUtils.PARAM_SHUNTTYPE, "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getConditionParamKeys", "()Ljava/util/List;", "getExpireTimestampMill", "()Ljava/lang/String;", "isShuntOpen", "", "()Z", "getShuntStatus", "getShuntType", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShuntInfo {
    private final List<String> conditionParamKeys;
    private final String expireTimestampMill;
    private final String shuntStatus;
    private final String shuntType;

    public ShuntInfo(List<String> list, String str, String str2, String str3) {
        this.conditionParamKeys = list;
        this.expireTimestampMill = str;
        this.shuntStatus = str2;
        this.shuntType = str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShuntInfo copy$default(ShuntInfo shuntInfo, List list, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = shuntInfo.conditionParamKeys;
        }
        if ((i11 & 2) != 0) {
            str = shuntInfo.expireTimestampMill;
        }
        if ((i11 & 4) != 0) {
            str2 = shuntInfo.shuntStatus;
        }
        if ((i11 & 8) != 0) {
            str3 = shuntInfo.shuntType;
        }
        return shuntInfo.copy(list, str, str2, str3);
    }

    public final List<String> component1() {
        return this.conditionParamKeys;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getExpireTimestampMill() {
        return this.expireTimestampMill;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getShuntStatus() {
        return this.shuntStatus;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getShuntType() {
        return this.shuntType;
    }

    public final ShuntInfo copy(List<String> conditionParamKeys, String expireTimestampMill, String shuntStatus, String shuntType) {
        return new ShuntInfo(conditionParamKeys, expireTimestampMill, shuntStatus, shuntType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShuntInfo)) {
            return false;
        }
        ShuntInfo shuntInfo = (ShuntInfo) other;
        return Intrinsics.c(this.conditionParamKeys, shuntInfo.conditionParamKeys) && Intrinsics.c(this.expireTimestampMill, shuntInfo.expireTimestampMill) && Intrinsics.c(this.shuntStatus, shuntInfo.shuntStatus) && Intrinsics.c(this.shuntType, shuntInfo.shuntType);
    }

    public final List<String> getConditionParamKeys() {
        return this.conditionParamKeys;
    }

    public final String getExpireTimestampMill() {
        return this.expireTimestampMill;
    }

    public final String getShuntStatus() {
        return this.shuntStatus;
    }

    public final String getShuntType() {
        return this.shuntType;
    }

    public int hashCode() {
        List<String> list = this.conditionParamKeys;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.expireTimestampMill;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.shuntStatus;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.shuntType;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final boolean isShuntOpen() {
        String str = this.expireTimestampMill;
        return (str == null ? 0L : Long.parseLong(str)) > System.currentTimeMillis() && Intrinsics.c(this.shuntStatus, "1");
    }

    public String toString() {
        return "ShuntInfo(conditionParamKeys=" + this.conditionParamKeys + ", expireTimestampMill=" + ((Object) this.expireTimestampMill) + ", shuntStatus=" + ((Object) this.shuntStatus) + ", shuntType=" + ((Object) this.shuntType) + ')';
    }
}
