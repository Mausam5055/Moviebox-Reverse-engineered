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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\rHÆ\u0003JW\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006*"}, d2 = {"Lcom/transsion/memberapi/SkuPromotionItem;", "", "marketingActivityId", "", "marketingActivityItemId", "promotionContent", "Lcom/transsion/memberapi/SkuPromotionContent;", "placementScenes", "", "Lcom/transsion/memberapi/SkuPromotionPlacementScene;", "sku", "Lcom/transsion/memberapi/SkuPromotionSku;", "crossScenePolicy", "Lcom/transsion/memberapi/SkuPromotionCrossScenePolicy;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionContent;Ljava/util/List;Lcom/transsion/memberapi/SkuPromotionSku;Lcom/transsion/memberapi/SkuPromotionCrossScenePolicy;)V", "getMarketingActivityId", "()Ljava/lang/String;", "setMarketingActivityId", "(Ljava/lang/String;)V", "getMarketingActivityItemId", "getPromotionContent", "()Lcom/transsion/memberapi/SkuPromotionContent;", "getPlacementScenes", "()Ljava/util/List;", "getSku", "()Lcom/transsion/memberapi/SkuPromotionSku;", "getCrossScenePolicy", "()Lcom/transsion/memberapi/SkuPromotionCrossScenePolicy;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuPromotionItem {
    private final SkuPromotionCrossScenePolicy crossScenePolicy;
    private String marketingActivityId;
    private final String marketingActivityItemId;
    private final List<SkuPromotionPlacementScene> placementScenes;
    private final SkuPromotionContent promotionContent;
    private final SkuPromotionSku sku;

    public SkuPromotionItem() {
        this(null, null, null, null, null, null, 63, null);
    }

    public SkuPromotionItem(String str, String str2, SkuPromotionContent skuPromotionContent, List<SkuPromotionPlacementScene> list, SkuPromotionSku skuPromotionSku, SkuPromotionCrossScenePolicy skuPromotionCrossScenePolicy) {
        this.marketingActivityId = str;
        this.marketingActivityItemId = str2;
        this.promotionContent = skuPromotionContent;
        this.placementScenes = list;
        this.sku = skuPromotionSku;
        this.crossScenePolicy = skuPromotionCrossScenePolicy;
    }

    public /* synthetic */ SkuPromotionItem(String str, String str2, SkuPromotionContent skuPromotionContent, List list, SkuPromotionSku skuPromotionSku, SkuPromotionCrossScenePolicy skuPromotionCrossScenePolicy, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : skuPromotionContent, (i11 & 8) != 0 ? null : list, (i11 & 16) != 0 ? null : skuPromotionSku, (i11 & 32) != 0 ? null : skuPromotionCrossScenePolicy);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SkuPromotionItem copy$default(SkuPromotionItem skuPromotionItem, String str, String str2, SkuPromotionContent skuPromotionContent, List list, SkuPromotionSku skuPromotionSku, SkuPromotionCrossScenePolicy skuPromotionCrossScenePolicy, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = skuPromotionItem.marketingActivityId;
        }
        if ((i11 & 2) != 0) {
            str2 = skuPromotionItem.marketingActivityItemId;
        }
        String str3 = str2;
        if ((i11 & 4) != 0) {
            skuPromotionContent = skuPromotionItem.promotionContent;
        }
        SkuPromotionContent skuPromotionContent2 = skuPromotionContent;
        if ((i11 & 8) != 0) {
            list = skuPromotionItem.placementScenes;
        }
        List list2 = list;
        if ((i11 & 16) != 0) {
            skuPromotionSku = skuPromotionItem.sku;
        }
        SkuPromotionSku skuPromotionSku2 = skuPromotionSku;
        if ((i11 & 32) != 0) {
            skuPromotionCrossScenePolicy = skuPromotionItem.crossScenePolicy;
        }
        return skuPromotionItem.copy(str, str3, skuPromotionContent2, list2, skuPromotionSku2, skuPromotionCrossScenePolicy);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMarketingActivityId() {
        return this.marketingActivityId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMarketingActivityItemId() {
        return this.marketingActivityItemId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SkuPromotionContent getPromotionContent() {
        return this.promotionContent;
    }

    public final List<SkuPromotionPlacementScene> component4() {
        return this.placementScenes;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final SkuPromotionSku getSku() {
        return this.sku;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final SkuPromotionCrossScenePolicy getCrossScenePolicy() {
        return this.crossScenePolicy;
    }

    public final SkuPromotionItem copy(String marketingActivityId, String marketingActivityItemId, SkuPromotionContent promotionContent, List<SkuPromotionPlacementScene> placementScenes, SkuPromotionSku sku, SkuPromotionCrossScenePolicy crossScenePolicy) {
        return new SkuPromotionItem(marketingActivityId, marketingActivityItemId, promotionContent, placementScenes, sku, crossScenePolicy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuPromotionItem)) {
            return false;
        }
        SkuPromotionItem skuPromotionItem = (SkuPromotionItem) other;
        return Intrinsics.c(this.marketingActivityId, skuPromotionItem.marketingActivityId) && Intrinsics.c(this.marketingActivityItemId, skuPromotionItem.marketingActivityItemId) && Intrinsics.c(this.promotionContent, skuPromotionItem.promotionContent) && Intrinsics.c(this.placementScenes, skuPromotionItem.placementScenes) && Intrinsics.c(this.sku, skuPromotionItem.sku) && Intrinsics.c(this.crossScenePolicy, skuPromotionItem.crossScenePolicy);
    }

    public final SkuPromotionCrossScenePolicy getCrossScenePolicy() {
        return this.crossScenePolicy;
    }

    public final String getMarketingActivityId() {
        return this.marketingActivityId;
    }

    public final String getMarketingActivityItemId() {
        return this.marketingActivityItemId;
    }

    public final List<SkuPromotionPlacementScene> getPlacementScenes() {
        return this.placementScenes;
    }

    public final SkuPromotionContent getPromotionContent() {
        return this.promotionContent;
    }

    public final SkuPromotionSku getSku() {
        return this.sku;
    }

    public int hashCode() {
        String str = this.marketingActivityId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.marketingActivityItemId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        SkuPromotionContent skuPromotionContent = this.promotionContent;
        int iHashCode3 = (iHashCode2 + (skuPromotionContent == null ? 0 : skuPromotionContent.hashCode())) * 31;
        List<SkuPromotionPlacementScene> list = this.placementScenes;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        SkuPromotionSku skuPromotionSku = this.sku;
        int iHashCode5 = (iHashCode4 + (skuPromotionSku == null ? 0 : skuPromotionSku.hashCode())) * 31;
        SkuPromotionCrossScenePolicy skuPromotionCrossScenePolicy = this.crossScenePolicy;
        return iHashCode5 + (skuPromotionCrossScenePolicy != null ? skuPromotionCrossScenePolicy.hashCode() : 0);
    }

    public final void setMarketingActivityId(String str) {
        this.marketingActivityId = str;
    }

    public String toString() {
        return "SkuPromotionItem(marketingActivityId=" + this.marketingActivityId + ", marketingActivityItemId=" + this.marketingActivityItemId + ", promotionContent=" + this.promotionContent + ", placementScenes=" + this.placementScenes + ", sku=" + this.sku + ", crossScenePolicy=" + this.crossScenePolicy + ")";
    }
}
