package com.transsion.member.promotion;

import androidx.fragment.app.FragmentActivity;
import com.transsion.memberapi.SkuPromotionItem;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class s implements Function2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function1 f46709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function0 f46710b;

    public /* synthetic */ s(Function1 function1, Function0 function0) {
        this.f46709a = function1;
        this.f46710b = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return PromotionManager.B(this.f46709a, this.f46710b, (FragmentActivity) obj, (SkuPromotionItem) obj2);
    }
}
