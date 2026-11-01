package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/transsion/memberapi/SkuPromotionCrossScenePolicy;", "", "offerPopupPushIntervalSeconds", "", "<init>", "(Ljava/lang/String;)V", "getOfferPopupPushIntervalSeconds", "()Ljava/lang/String;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuPromotionCrossScenePolicy {
    private final String offerPopupPushIntervalSeconds;

    /* JADX WARN: Multi-variable type inference failed */
    public SkuPromotionCrossScenePolicy() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public SkuPromotionCrossScenePolicy(String str) {
        this.offerPopupPushIntervalSeconds = str;
    }

    public /* synthetic */ SkuPromotionCrossScenePolicy(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str);
    }

    public static /* synthetic */ SkuPromotionCrossScenePolicy copy$default(SkuPromotionCrossScenePolicy skuPromotionCrossScenePolicy, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = skuPromotionCrossScenePolicy.offerPopupPushIntervalSeconds;
        }
        return skuPromotionCrossScenePolicy.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOfferPopupPushIntervalSeconds() {
        return this.offerPopupPushIntervalSeconds;
    }

    public final SkuPromotionCrossScenePolicy copy(String offerPopupPushIntervalSeconds) {
        return new SkuPromotionCrossScenePolicy(offerPopupPushIntervalSeconds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SkuPromotionCrossScenePolicy) && Intrinsics.c(this.offerPopupPushIntervalSeconds, ((SkuPromotionCrossScenePolicy) other).offerPopupPushIntervalSeconds);
    }

    public final String getOfferPopupPushIntervalSeconds() {
        return this.offerPopupPushIntervalSeconds;
    }

    public int hashCode() {
        String str = this.offerPopupPushIntervalSeconds;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "SkuPromotionCrossScenePolicy(offerPopupPushIntervalSeconds=" + this.offerPopupPushIntervalSeconds + ")";
    }
}
