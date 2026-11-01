package com.transsion.member.promotion;

import com.transsion.member.c0;
import com.transsion.memberapi.SkuPromotionItem;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f46701a = new m();

    private m() {
    }

    public static /* synthetic */ long d(m mVar, SkuPromotionItem skuPromotionItem, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            skuPromotionItem = null;
        }
        if ((i11 & 2) != 0) {
            j11 = System.currentTimeMillis();
        }
        return mVar.c(skuPromotionItem, j11);
    }

    private final void e(SkuPromotionItem skuPromotionItem) {
        if (skuPromotionItem == null) {
            return;
        }
        String marketingActivityItemId = skuPromotionItem.getMarketingActivityItemId();
        c0 c0Var = c0.f46429a;
        if (Intrinsics.c(c0Var.b().getString("kv_promotion_dialog_marketing_activity_item_id", null), marketingActivityItemId)) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "PromotionCountdownManager --> resetCountdownIfActivityItemChanged() --> 活动ID不一致，重置数据", false, 4, null);
        f();
        c0Var.b().putLong("kv_promotion_dialog_first_show_time", 0L);
        c0Var.b().putString("kv_promotion_dialog_marketing_activity_item_id", marketingActivityItemId);
    }

    private final void f() {
        c0 c0Var = c0.f46429a;
        c0Var.b().putLong("kv_promotion_push_show_window_start_time", 0L);
        c0Var.b().putInt("kv_promotion_push_show_count_in_window", 0);
        c0Var.b().putLong("kv_promotion_dialog_show_window_start_time", 0L);
        c0Var.b().putInt("kv_promotion_dialog_show_count_in_window", 0);
    }

    public final long a() {
        return c0.f46429a.b().getLong("kv_promotion_dialog_first_show_time", 0L);
    }

    public final synchronized boolean b(long j11, SkuPromotionItem skuPromotionItem) {
        long jCurrentTimeMillis;
        long jA;
        e(skuPromotionItem);
        jCurrentTimeMillis = System.currentTimeMillis();
        jA = a();
        return jA != 0 && jCurrentTimeMillis >= jA && jCurrentTimeMillis - jA >= j11;
    }

    public final synchronized long c(SkuPromotionItem skuPromotionItem, long j11) {
        e(skuPromotionItem);
        long jA = a();
        if (jA != 0) {
            return jA;
        }
        lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "PromotionCountdownManager --> resetCountdownIfActivityItemChanged() --> 保存首次展示时间", false, 4, null);
        c0 c0Var = c0.f46429a;
        c0Var.b().putLong("kv_promotion_dialog_first_show_time", j11);
        if (skuPromotionItem != null) {
            c0Var.b().putString("kv_promotion_dialog_marketing_activity_item_id", skuPromotionItem.getMarketingActivityItemId());
        }
        return j11;
    }
}
