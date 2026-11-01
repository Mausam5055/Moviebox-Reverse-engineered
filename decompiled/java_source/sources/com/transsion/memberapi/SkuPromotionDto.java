package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J?\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/transsion/memberapi/SkuPromotionDto;", "", "marketingActivityId", "", "startTime", "endTime", "items", "", "Lcom/transsion/memberapi/SkuPromotionItem;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getMarketingActivityId", "()Ljava/lang/String;", "getStartTime", "getEndTime", "getItems", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuPromotionDto {
    private final String endTime;
    private final List<SkuPromotionItem> items;
    private final String marketingActivityId;
    private final String startTime;

    public SkuPromotionDto() {
        this(null, null, null, null, 15, null);
    }

    public SkuPromotionDto(String str, String str2, String str3, List<SkuPromotionItem> list) {
        this.marketingActivityId = str;
        this.startTime = str2;
        this.endTime = str3;
        this.items = list;
    }

    public /* synthetic */ SkuPromotionDto(String str, String str2, String str3, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SkuPromotionDto copy$default(SkuPromotionDto skuPromotionDto, String str, String str2, String str3, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = skuPromotionDto.marketingActivityId;
        }
        if ((i11 & 2) != 0) {
            str2 = skuPromotionDto.startTime;
        }
        if ((i11 & 4) != 0) {
            str3 = skuPromotionDto.endTime;
        }
        if ((i11 & 8) != 0) {
            list = skuPromotionDto.items;
        }
        return skuPromotionDto.copy(str, str2, str3, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMarketingActivityId() {
        return this.marketingActivityId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    public final List<SkuPromotionItem> component4() {
        return this.items;
    }

    public final SkuPromotionDto copy(String marketingActivityId, String startTime, String endTime, List<SkuPromotionItem> items) {
        return new SkuPromotionDto(marketingActivityId, startTime, endTime, items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuPromotionDto)) {
            return false;
        }
        SkuPromotionDto skuPromotionDto = (SkuPromotionDto) other;
        return Intrinsics.c(this.marketingActivityId, skuPromotionDto.marketingActivityId) && Intrinsics.c(this.startTime, skuPromotionDto.startTime) && Intrinsics.c(this.endTime, skuPromotionDto.endTime) && Intrinsics.c(this.items, skuPromotionDto.items);
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final List<SkuPromotionItem> getItems() {
        return this.items;
    }

    public final String getMarketingActivityId() {
        return this.marketingActivityId;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public int hashCode() {
        String str = this.marketingActivityId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.startTime;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.endTime;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<SkuPromotionItem> list = this.items;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "SkuPromotionDto(marketingActivityId=" + this.marketingActivityId + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", items=" + this.items + ")";
    }
}
