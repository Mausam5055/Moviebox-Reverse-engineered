package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/InvalidAdStateError;", "Lcom/vungle/ads/VungleError;", "loggableReason", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;", "errorMessage", "", "(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InvalidAdStateError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidAdStateError(Sdk$SDKError.Reason loggableReason, String errorMessage) {
        super(loggableReason, errorMessage, null);
        Intrinsics.h(loggableReason, "loggableReason");
        Intrinsics.h(errorMessage, "errorMessage");
    }

    public /* synthetic */ InvalidAdStateError(Sdk$SDKError.Reason reason, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(reason, (i11 & 2) != 0 ? "Ad state is invalid" : str);
    }
}
