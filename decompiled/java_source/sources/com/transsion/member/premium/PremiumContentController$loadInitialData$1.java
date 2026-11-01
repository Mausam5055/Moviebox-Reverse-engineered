package com.transsion.member.premium;

import com.transsion.member.promotion.PromotionManager;
import com.transsion.memberapi.MemberPriceData;
import com.transsion.memberapi.SkuPromotionDto;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.premium.PremiumContentController$loadInitialData$1", f = "PremiumContentController.kt", l = {201}, m = "invokeSuspend")
@SourceDebugExtension
final class PremiumContentController$loadInitialData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PremiumContentController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PremiumContentController$loadInitialData$1(PremiumContentController premiumContentController, Continuation<? super PremiumContentController$loadInitialData$1> continuation) {
        super(2, continuation);
        this.this$0 = premiumContentController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PremiumContentController$loadInitialData$1 premiumContentController$loadInitialData$1 = new PremiumContentController$loadInitialData$1(this.this$0, continuation);
        premiumContentController$loadInitialData$1.L$0 = obj;
        return premiumContentController$loadInitialData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PremiumContentController$loadInitialData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        PremiumContentController premiumContentController;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                PremiumContentController premiumContentController2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                PromotionManager promotionManagerW = premiumContentController2.w();
                this.L$0 = premiumContentController2;
                this.label = 1;
                Object objO = promotionManagerW.o(this);
                if (objO == objF) {
                    return objF;
                }
                premiumContentController = premiumContentController2;
                obj = objO;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                premiumContentController = (PremiumContentController) this.L$0;
                ResultKt.b(obj);
            }
            premiumContentController.f46606h = (SkuPromotionDto) obj;
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        this.this$0.f46607i = true;
        lg.a.C0828a.f(lg.a.f68839a, "liyang", "promotion返回！pendingGoodsData ->" + this.this$0.f46605g, false, 4, null);
        MemberPriceData memberPriceData = this.this$0.f46605g;
        if (memberPriceData != null) {
            PremiumContentController premiumContentController3 = this.this$0;
            SkuPromotionDto skuPromotionDto = premiumContentController3.f46606h;
            premiumContentController3.s(memberPriceData, skuPromotionDto != null ? skuPromotionDto.getItems() : null);
        }
        return Unit.f67061a;
    }
}
