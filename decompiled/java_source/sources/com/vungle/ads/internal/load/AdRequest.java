package com.vungle.ads.internal.load;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.y;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/vungle/ads/internal/load/AdRequest;", "Ljava/io/Serializable;", "Lcom/vungle/ads/internal/model/g;", "placement", "Lcom/vungle/ads/internal/model/BidPayload;", "adMarkup", "Lcom/vungle/ads/y;", "requestAdSize", "<init>", "(Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/y;)V", "", "toString", "()Ljava/lang/String;", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Lcom/vungle/ads/internal/model/g;", "getPlacement", "()Lcom/vungle/ads/internal/model/g;", "Lcom/vungle/ads/internal/model/BidPayload;", "getAdMarkup", "()Lcom/vungle/ads/internal/model/BidPayload;", "Lcom/vungle/ads/y;", "getRequestAdSize", "()Lcom/vungle/ads/y;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdRequest implements Serializable {
    private final BidPayload adMarkup;
    private final com.vungle.ads.internal.model.g placement;
    private final y requestAdSize;

    public AdRequest(com.vungle.ads.internal.model.g placement, BidPayload bidPayload, y yVar) {
        Intrinsics.h(placement, "placement");
        this.placement = placement;
        this.adMarkup = bidPayload;
        this.requestAdSize = yVar;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.c(AdRequest.class, other.getClass())) {
            return false;
        }
        AdRequest adRequest = (AdRequest) other;
        if (!Intrinsics.c(this.placement.getReferenceId(), adRequest.placement.getReferenceId()) || !Intrinsics.c(this.requestAdSize, adRequest.requestAdSize)) {
            return false;
        }
        BidPayload bidPayload = this.adMarkup;
        BidPayload bidPayload2 = adRequest.adMarkup;
        if (bidPayload != null) {
            return Intrinsics.c(bidPayload, bidPayload2);
        }
        return bidPayload2 == null;
    }

    public final BidPayload getAdMarkup() {
        return this.adMarkup;
    }

    public final com.vungle.ads.internal.model.g getPlacement() {
        return this.placement;
    }

    public final y getRequestAdSize() {
        return this.requestAdSize;
    }

    public int hashCode() {
        int iHashCode = this.placement.getReferenceId().hashCode() * 31;
        y yVar = this.requestAdSize;
        int iHashCode2 = (iHashCode + (yVar != null ? yVar.hashCode() : 0)) * 31;
        BidPayload bidPayload = this.adMarkup;
        return iHashCode2 + (bidPayload != null ? bidPayload.hashCode() : 0);
    }

    public String toString() {
        return "AdRequest{placementId='" + this.placement.getReferenceId() + "', adMarkup=" + this.adMarkup + ", requestAdSize=" + this.requestAdSize + '}';
    }
}
