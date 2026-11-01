package com.transsion.member.promotion;

import com.transsion.memberapi.MemberPriceItem;
import com.transsion.memberapi.SkuPromotionContent;
import com.transsion.memberapi.SkuPromotionItem;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class PromotionSelectionHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PromotionSelectionHelper f46671a = new PromotionSelectionHelper();

    private PromotionSelectionHelper() {
    }

    public final Pair a(List matchedPairs) {
        Object next;
        Intrinsics.h(matchedPairs, "matchedPairs");
        Iterator it = CollectionsKt.I0(matchedPairs, new Comparator() { // from class: com.transsion.member.promotion.PromotionSelectionHelper$findBestNonExpiredPair$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                Double discountPrice = ((MemberPriceItem) ((Pair) t11).getFirst()).getDiscountPrice();
                Double dValueOf = Double.valueOf(discountPrice != null ? discountPrice.doubleValue() : Double.MAX_VALUE);
                Double discountPrice2 = ((MemberPriceItem) ((Pair) t12).getFirst()).getDiscountPrice();
                return ComparisonsKt.d(dValueOf, Double.valueOf(discountPrice2 != null ? discountPrice2.doubleValue() : Double.MAX_VALUE));
            }
        }).iterator();
        while (it.hasNext()) {
            next = it.next();
            if (!f46671a.b((SkuPromotionItem) ((Pair) next).getSecond())) {
                return (Pair) next;
            }
        }
        next = null;
        return (Pair) next;
    }

    public final boolean b(SkuPromotionItem promotionItem) {
        Integer countdownHours;
        Intrinsics.h(promotionItem, "promotionItem");
        long jA = m.f46701a.a();
        if (jA <= 0) {
            return false;
        }
        SkuPromotionContent promotionContent = promotionItem.getPromotionContent();
        return RangesKt.g((jA + (((long) ((promotionContent == null || (countdownHours = promotionContent.getCountdownHours()) == null) ? 12 : RangesKt.f(countdownHours.intValue(), 0))) * 3600000)) - System.currentTimeMillis(), 0L) == 0;
    }
}
