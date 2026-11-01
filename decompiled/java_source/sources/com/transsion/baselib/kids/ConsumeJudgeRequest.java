package com.transsion.baselib.kids;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\n\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/transsion/baselib/kids/ConsumeJudgeRequest;", "", "consumeList", "", "", "<init>", "(Ljava/util/List;)V", "getConsumeList", "()Ljava/util/List;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConsumeJudgeRequest {

    @SerializedName("consumeList")
    private final List<String> consumeList;

    /* JADX WARN: Multi-variable type inference failed */
    public ConsumeJudgeRequest() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ConsumeJudgeRequest(List<String> list) {
        this.consumeList = list;
    }

    public /* synthetic */ ConsumeJudgeRequest(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConsumeJudgeRequest copy$default(ConsumeJudgeRequest consumeJudgeRequest, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = consumeJudgeRequest.consumeList;
        }
        return consumeJudgeRequest.copy(list);
    }

    public final List<String> component1() {
        return this.consumeList;
    }

    public final ConsumeJudgeRequest copy(List<String> consumeList) {
        return new ConsumeJudgeRequest(consumeList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ConsumeJudgeRequest) && Intrinsics.c(this.consumeList, ((ConsumeJudgeRequest) other).consumeList);
    }

    public final List<String> getConsumeList() {
        return this.consumeList;
    }

    public int hashCode() {
        List<String> list = this.consumeList;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public String toString() {
        return "ConsumeJudgeRequest(consumeList=" + this.consumeList + ")";
    }
}
