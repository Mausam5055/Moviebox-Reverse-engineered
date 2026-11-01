package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0001 B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000bJ@\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0019\u001a\u0004\b\u001a\u0010\u000bR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0019\u001a\u0004\b\u001b\u0010\u000bR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001c\u001a\u0004\b\u001d\u0010\u000eR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0019\u001a\u0004\b\u001e\u0010\u000b¨\u0006!"}, d2 = {"Lcom/transsion/memberapi/SkuPromotionPlacementScene;", "", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "frequencyMode", "", "maxCount", "intervalSeconds", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "()Ljava/lang/Integer;", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/memberapi/SkuPromotionPlacementScene;", "toString", "hashCode", "()I", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getType", "getFrequencyMode", "Ljava/lang/Integer;", "getMaxCount", "getIntervalSeconds", "Companion", "a", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SkuPromotionPlacementScene {
    public static final String MARKETING_PLACEMENT_SCENE_TYPE_IN_APP_PUSH = "MARKETING_PLACEMENT_SCENE_TYPE_IN_APP_PUSH";
    public static final String MARKETING_PLACEMENT_SCENE_TYPE_OFFER_POPUP = "MARKETING_PLACEMENT_SCENE_TYPE_OFFER_POPUP";
    public static final String MARKETING_PLACEMENT_SCENE_TYPE_RETENTION_POPUP = "MARKETING_PLACEMENT_SCENE_TYPE_RETENTION_POPUP";
    public static final String MARKETING_PLACEMENT_SCENE_TYPE_UNSPECIFIED = "MARKETING_PLACEMENT_SCENE_TYPE_UNSPECIFIED";
    private final String frequencyMode;
    private final String intervalSeconds;
    private final Integer maxCount;
    private final String type;

    public SkuPromotionPlacementScene() {
        this(null, null, null, null, 15, null);
    }

    public SkuPromotionPlacementScene(String str, String str2, Integer num, String str3) {
        this.type = str;
        this.frequencyMode = str2;
        this.maxCount = num;
        this.intervalSeconds = str3;
    }

    public /* synthetic */ SkuPromotionPlacementScene(String str, String str2, Integer num, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : num, (i11 & 8) != 0 ? null : str3);
    }

    public static /* synthetic */ SkuPromotionPlacementScene copy$default(SkuPromotionPlacementScene skuPromotionPlacementScene, String str, String str2, Integer num, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = skuPromotionPlacementScene.type;
        }
        if ((i11 & 2) != 0) {
            str2 = skuPromotionPlacementScene.frequencyMode;
        }
        if ((i11 & 4) != 0) {
            num = skuPromotionPlacementScene.maxCount;
        }
        if ((i11 & 8) != 0) {
            str3 = skuPromotionPlacementScene.intervalSeconds;
        }
        return skuPromotionPlacementScene.copy(str, str2, num, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFrequencyMode() {
        return this.frequencyMode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getMaxCount() {
        return this.maxCount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getIntervalSeconds() {
        return this.intervalSeconds;
    }

    public final SkuPromotionPlacementScene copy(String type, String frequencyMode, Integer maxCount, String intervalSeconds) {
        return new SkuPromotionPlacementScene(type, frequencyMode, maxCount, intervalSeconds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuPromotionPlacementScene)) {
            return false;
        }
        SkuPromotionPlacementScene skuPromotionPlacementScene = (SkuPromotionPlacementScene) other;
        return Intrinsics.c(this.type, skuPromotionPlacementScene.type) && Intrinsics.c(this.frequencyMode, skuPromotionPlacementScene.frequencyMode) && Intrinsics.c(this.maxCount, skuPromotionPlacementScene.maxCount) && Intrinsics.c(this.intervalSeconds, skuPromotionPlacementScene.intervalSeconds);
    }

    public final String getFrequencyMode() {
        return this.frequencyMode;
    }

    public final String getIntervalSeconds() {
        return this.intervalSeconds;
    }

    public final Integer getMaxCount() {
        return this.maxCount;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.frequencyMode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.maxCount;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.intervalSeconds;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "SkuPromotionPlacementScene(type=" + this.type + ", frequencyMode=" + this.frequencyMode + ", maxCount=" + this.maxCount + ", intervalSeconds=" + this.intervalSeconds + ")";
    }
}
