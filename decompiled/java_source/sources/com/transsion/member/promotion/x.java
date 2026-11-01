package com.transsion.member.promotion;

import com.transsion.memberapi.SkuPromotionContent;
import com.transsion.memberapi.SkuPromotionCrossScenePolicy;
import com.transsion.memberapi.SkuPromotionDto;
import com.transsion.memberapi.SkuPromotionHighlight;
import com.transsion.memberapi.SkuPromotionItem;
import com.transsion.memberapi.SkuPromotionPlacementScene;
import com.transsion.memberapi.SkuPromotionSku;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f46716b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f46715a = new x();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f46717c = 8;

    private x() {
    }

    public final SkuPromotionDto a() {
        return new SkuPromotionDto("营销活动ID", "活动开始时间，Unix时间戳，单位秒", "活动结束时间，Unix时间戳，单位秒；-1表示长期有效", CollectionsKt.e(new SkuPromotionItem(null, "营销活动项ID", new SkuPromotionContent("Limited Time Premium Offer", "Get Premium now and enjoy!", CollectionsKt.o(new SkuPromotionHighlight("https://cbiexpress.com/site/cbiexpress.com/image/catalog/home/location.png", "Premium\nContents", ""), new SkuPromotionHighlight("https://cbiexpress.com/site/cbiexpress.com/image/catalog/home/location.png", "High\nQuality", "x2"), new SkuPromotionHighlight("https://cbiexpress.com/site/cbiexpress.com/image/catalog/home/location.png", "No\nAds", "x3")), 12), CollectionsKt.o(new SkuPromotionPlacementScene(SkuPromotionPlacementScene.MARKETING_PLACEMENT_SCENE_TYPE_OFFER_POPUP, "MARKETING_PLACEMENT_FREQUENCY_MODE_UNSPECIFIED", 200, "300"), new SkuPromotionPlacementScene(SkuPromotionPlacementScene.MARKETING_PLACEMENT_SCENE_TYPE_IN_APP_PUSH, "MARKETING_PLACEMENT_FREQUENCY_MODE_UNSPECIFIED", 200, "60"), new SkuPromotionPlacementScene(SkuPromotionPlacementScene.MARKETING_PLACEMENT_SCENE_TYPE_RETENTION_POPUP, "MARKETING_PLACEMENT_FREQUENCY_MODE_UNSPECIFIED", 200, "60")), new SkuPromotionSku("4114127219650447624", "string", "₹", Double.valueOf(2.99d), "string", "string", "string", "string", "$2.99/week", "string", "month", "2", "₹", Double.valueOf(0.0d), "string", "string", "string", Double.valueOf(0.99d), 67, 2), new SkuPromotionCrossScenePolicy("string"), 1, null)));
    }

    public final boolean b() {
        return f46716b;
    }
}
