package com.transsion.rewardscenter.redeem;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import com.transsion.rewardscenter.ui.RewardsCenterFragment;
import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenterapi.RedeemProductResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.redeem.SkuItemProvider$redeem$1$1", f = "SkuItemProvider.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW}, m = "invokeSuspend")
final class SkuItemProvider$redeem$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $id;
    int label;
    final /* synthetic */ SkuItemProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SkuItemProvider$redeem$1$1(SkuItemProvider skuItemProvider, String str, Continuation<? super SkuItemProvider$redeem$1$1> continuation) {
        super(2, continuation);
        this.this$0 = skuItemProvider;
        this.$id = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(SkuItemProvider skuItemProvider, String str, String str2) {
        skuItemProvider.f51009e.c().o().n(Boolean.FALSE);
        if (str2 == null || StringsKt.q0(str2)) {
            str2 = skuItemProvider.k().getString(R$string.redeem_failed_tips);
        }
        Intrinsics.e(str2);
        p.a(false, str2);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(SkuItemProvider skuItemProvider, RedeemProductResult redeemProductResult) {
        skuItemProvider.f51009e.c().o().n(Boolean.FALSE);
        String string = skuItemProvider.k().getString(R$string.redeem_success);
        Intrinsics.g(string, "getString(...)");
        p.a(true, string);
        RewardsCenterModel.j(skuItemProvider.f51009e.c(), null, 1, null);
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SkuItemProvider$redeem$1$1(this.this$0, this.$id, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SkuItemProvider$redeem$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            RewardsCenterFragment rewardsCenterFragment = (RewardsCenterFragment) this.this$0.f51009e.a().get();
            if (rewardsCenterFragment != null) {
                rewardsCenterFragment.showLoading();
            }
            RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f51292a;
            String str = this.$id;
            final SkuItemProvider skuItemProvider = this.this$0;
            Function2 function2 = new Function2() { // from class: com.transsion.rewardscenter.redeem.g
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return SkuItemProvider$redeem$1$1.g(skuItemProvider, (String) obj2, (String) obj3);
                }
            };
            final SkuItemProvider skuItemProvider2 = this.this$0;
            Function1 function1 = new Function1() { // from class: com.transsion.rewardscenter.redeem.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return SkuItemProvider$redeem$1$1.h(skuItemProvider2, (RedeemProductResult) obj2);
                }
            };
            this.label = 1;
            if (rewardsCenterApiHelper.s(str, function2, function1, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
