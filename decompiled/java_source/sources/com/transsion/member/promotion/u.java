package com.transsion.member.promotion;

import com.transsion.memberapi.SkuPromotionItem;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class u implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function1 f46712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkuPromotionItem f46713b;

    public /* synthetic */ u(Function1 function1, SkuPromotionItem skuPromotionItem) {
        this.f46712a = function1;
        this.f46713b = skuPromotionItem;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return PromotionManager.C(this.f46712a, this.f46713b);
    }
}
