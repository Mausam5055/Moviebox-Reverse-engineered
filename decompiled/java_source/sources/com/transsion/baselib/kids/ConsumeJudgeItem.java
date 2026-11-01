package com.transsion.baselib.kids;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u0004\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/transsion/baselib/kids/ConsumeJudgeItem;", "", "consumeType", "", "isConsume", "", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "getConsumeType", "()Ljava/lang/String;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/transsion/baselib/kids/ConsumeJudgeItem;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConsumeJudgeItem {

    @SerializedName("consumeType")
    private final String consumeType;

    @SerializedName("isConsume")
    private final Boolean isConsume;

    /* JADX WARN: Multi-variable type inference failed */
    public ConsumeJudgeItem() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public ConsumeJudgeItem(String str, Boolean bool) {
        this.consumeType = str;
        this.isConsume = bool;
    }

    public /* synthetic */ ConsumeJudgeItem(String str, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : bool);
    }

    public static /* synthetic */ ConsumeJudgeItem copy$default(ConsumeJudgeItem consumeJudgeItem, String str, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = consumeJudgeItem.consumeType;
        }
        if ((i11 & 2) != 0) {
            bool = consumeJudgeItem.isConsume;
        }
        return consumeJudgeItem.copy(str, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getConsumeType() {
        return this.consumeType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getIsConsume() {
        return this.isConsume;
    }

    public final ConsumeJudgeItem copy(String consumeType, Boolean isConsume) {
        return new ConsumeJudgeItem(consumeType, isConsume);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConsumeJudgeItem)) {
            return false;
        }
        ConsumeJudgeItem consumeJudgeItem = (ConsumeJudgeItem) other;
        return Intrinsics.c(this.consumeType, consumeJudgeItem.consumeType) && Intrinsics.c(this.isConsume, consumeJudgeItem.isConsume);
    }

    public final String getConsumeType() {
        return this.consumeType;
    }

    public int hashCode() {
        String str = this.consumeType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.isConsume;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final Boolean isConsume() {
        return this.isConsume;
    }

    public String toString() {
        return "ConsumeJudgeItem(consumeType=" + this.consumeType + ", isConsume=" + this.isConsume + ")";
    }
}
