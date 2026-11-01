package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0012JD\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\tHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/transsion/memberapi/SkuPromotionContent;", "", CampaignEx.JSON_KEY_TITLE, "", "subTitle", "skuHighlights", "", "Lcom/transsion/memberapi/SkuPromotionHighlight;", "countdownHours", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V", "getTitle", "()Ljava/lang/String;", "getSubTitle", "getSkuHighlights", "()Ljava/util/List;", "getCountdownHours", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/transsion/memberapi/SkuPromotionContent;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuPromotionContent {
    private final Integer countdownHours;
    private final List<SkuPromotionHighlight> skuHighlights;
    private final String subTitle;
    private final String title;

    public SkuPromotionContent() {
        this(null, null, null, null, 15, null);
    }

    public SkuPromotionContent(String str, String str2, List<SkuPromotionHighlight> list, Integer num) {
        this.title = str;
        this.subTitle = str2;
        this.skuHighlights = list;
        this.countdownHours = num;
    }

    public /* synthetic */ SkuPromotionContent(String str, String str2, List list, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : list, (i11 & 8) != 0 ? null : num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SkuPromotionContent copy$default(SkuPromotionContent skuPromotionContent, String str, String str2, List list, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = skuPromotionContent.title;
        }
        if ((i11 & 2) != 0) {
            str2 = skuPromotionContent.subTitle;
        }
        if ((i11 & 4) != 0) {
            list = skuPromotionContent.skuHighlights;
        }
        if ((i11 & 8) != 0) {
            num = skuPromotionContent.countdownHours;
        }
        return skuPromotionContent.copy(str, str2, list, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubTitle() {
        return this.subTitle;
    }

    public final List<SkuPromotionHighlight> component3() {
        return this.skuHighlights;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getCountdownHours() {
        return this.countdownHours;
    }

    public final SkuPromotionContent copy(String title, String subTitle, List<SkuPromotionHighlight> skuHighlights, Integer countdownHours) {
        return new SkuPromotionContent(title, subTitle, skuHighlights, countdownHours);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuPromotionContent)) {
            return false;
        }
        SkuPromotionContent skuPromotionContent = (SkuPromotionContent) other;
        return Intrinsics.c(this.title, skuPromotionContent.title) && Intrinsics.c(this.subTitle, skuPromotionContent.subTitle) && Intrinsics.c(this.skuHighlights, skuPromotionContent.skuHighlights) && Intrinsics.c(this.countdownHours, skuPromotionContent.countdownHours);
    }

    public final Integer getCountdownHours() {
        return this.countdownHours;
    }

    public final List<SkuPromotionHighlight> getSkuHighlights() {
        return this.skuHighlights;
    }

    public final String getSubTitle() {
        return this.subTitle;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.subTitle;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<SkuPromotionHighlight> list = this.skuHighlights;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.countdownHours;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "SkuPromotionContent(title=" + this.title + ", subTitle=" + this.subTitle + ", skuHighlights=" + this.skuHighlights + ", countdownHours=" + this.countdownHours + ")";
    }
}
