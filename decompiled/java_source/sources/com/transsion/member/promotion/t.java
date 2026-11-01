package com.transsion.member.promotion;

import androidx.fragment.app.FragmentActivity;
import com.transsion.memberapi.SkuPromotionItem;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class t implements Function2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function1 f46711a;

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return PromotionManager.z(this.f46711a, (FragmentActivity) obj, (SkuPromotionItem) obj2);
    }
}
