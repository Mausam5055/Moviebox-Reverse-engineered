package com.transsion.member.promotion;

import androidx.fragment.app.FragmentActivity;
import com.transsion.memberapi.SkuPromotionItem;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.promotion.PromotionManager$requestPromotion$1", f = "PromotionManager.kt", l = {198}, m = "invokeSuspend")
final class PromotionManager$requestPromotion$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ FragmentActivity $activity;
    final /* synthetic */ Function2<Long, Integer, Boolean> $canShow;
    final /* synthetic */ String $displayType;
    final /* synthetic */ Function1<Throwable, Unit> $onLoadFailed;
    final /* synthetic */ Function2<FragmentActivity, SkuPromotionItem, Unit> $onPromotionReady;
    final /* synthetic */ String $placementSceneType;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PromotionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PromotionManager$requestPromotion$1(PromotionManager promotionManager, String str, String str2, Function2<? super Long, ? super Integer, Boolean> function2, Function2<? super FragmentActivity, ? super SkuPromotionItem, Unit> function3, FragmentActivity fragmentActivity, Function1<? super Throwable, Unit> function1, Continuation<? super PromotionManager$requestPromotion$1> continuation) {
        super(2, continuation);
        this.this$0 = promotionManager;
        this.$placementSceneType = str;
        this.$displayType = str2;
        this.$canShow = function2;
        this.$onPromotionReady = function3;
        this.$activity = fragmentActivity;
        this.$onLoadFailed = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PromotionManager$requestPromotion$1 promotionManager$requestPromotion$1 = new PromotionManager$requestPromotion$1(this.this$0, this.$placementSceneType, this.$displayType, this.$canShow, this.$onPromotionReady, this.$activity, this.$onLoadFailed, continuation);
        promotionManager$requestPromotion$1.L$0 = obj;
        return promotionManager$requestPromotion$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PromotionManager$requestPromotion$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objM454constructorimpl2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                PromotionManager promotionManager = this.this$0;
                String str = this.$placementSceneType;
                Result.Companion companion = Result.INSTANCE;
                this.L$0 = n0Var;
                this.label = 1;
                obj = promotionManager.n(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM454constructorimpl = Result.m454constructorimpl((SkuPromotionItem) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        PromotionManager promotionManager2 = this.this$0;
        String str2 = this.$placementSceneType;
        String str3 = this.$displayType;
        Function2<Long, Integer, Boolean> function2 = this.$canShow;
        Function2<FragmentActivity, SkuPromotionItem, Unit> function3 = this.$onPromotionReady;
        FragmentActivity fragmentActivity = this.$activity;
        Function1<Throwable, Unit> function1 = this.$onLoadFailed;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            SkuPromotionItem skuPromotionItem = (SkuPromotionItem) objM454constructorimpl;
            try {
                if (ak.o.f646a.i()) {
                    throw new IllegalStateException(("Promotion " + str3 + " is unavailable in kids mode.").toString());
                }
                promotionManager2.m(skuPromotionItem, str2, str3, function2);
                objM454constructorimpl2 = Result.m454constructorimpl(Unit.f67061a);
                Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl2);
                if (thM457exceptionOrNullimpl == null) {
                    function3.invoke(fragmentActivity, skuPromotionItem);
                } else if (function1 != null) {
                    function1.invoke(thM457exceptionOrNullimpl);
                }
            } catch (Throwable th3) {
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th3));
            }
        }
        Function1<Throwable, Unit> function4 = this.$onLoadFailed;
        Throwable thM457exceptionOrNullimpl2 = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl2 != null && function4 != null) {
            function4.invoke(thM457exceptionOrNullimpl2);
        }
        return Unit.f67061a;
    }
}
