package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ>\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0010\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/transsion/memberapi/MemberRemindData;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "remindValue", "", "remindUnit", "maxDaily", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getType", "()Ljava/lang/String;", "getRemindValue", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getRemindUnit", "getMaxDaily", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/memberapi/MemberRemindData;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberRemindData implements Serializable {
    private final Integer maxDaily;
    private final String remindUnit;
    private final Integer remindValue;

    @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
    private final String type;

    public MemberRemindData() {
        this(null, null, null, null, 15, null);
    }

    public MemberRemindData(String str, Integer num, String str2, Integer num2) {
        this.type = str;
        this.remindValue = num;
        this.remindUnit = str2;
        this.maxDaily = num2;
    }

    public /* synthetic */ MemberRemindData(String str, Integer num, String str2, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : num, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : num2);
    }

    public static /* synthetic */ MemberRemindData copy$default(MemberRemindData memberRemindData, String str, Integer num, String str2, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = memberRemindData.type;
        }
        if ((i11 & 2) != 0) {
            num = memberRemindData.remindValue;
        }
        if ((i11 & 4) != 0) {
            str2 = memberRemindData.remindUnit;
        }
        if ((i11 & 8) != 0) {
            num2 = memberRemindData.maxDaily;
        }
        return memberRemindData.copy(str, num, str2, num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getRemindValue() {
        return this.remindValue;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRemindUnit() {
        return this.remindUnit;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getMaxDaily() {
        return this.maxDaily;
    }

    public final MemberRemindData copy(String type, Integer remindValue, String remindUnit, Integer maxDaily) {
        return new MemberRemindData(type, remindValue, remindUnit, maxDaily);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberRemindData)) {
            return false;
        }
        MemberRemindData memberRemindData = (MemberRemindData) other;
        return Intrinsics.c(this.type, memberRemindData.type) && Intrinsics.c(this.remindValue, memberRemindData.remindValue) && Intrinsics.c(this.remindUnit, memberRemindData.remindUnit) && Intrinsics.c(this.maxDaily, memberRemindData.maxDaily);
    }

    public final Integer getMaxDaily() {
        return this.maxDaily;
    }

    public final String getRemindUnit() {
        return this.remindUnit;
    }

    public final Integer getRemindValue() {
        return this.remindValue;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.remindValue;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.remindUnit;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.maxDaily;
        return iHashCode3 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "MemberRemindData(type=" + this.type + ", remindValue=" + this.remindValue + ", remindUnit=" + this.remindUnit + ", maxDaily=" + this.maxDaily + ")";
    }
}
