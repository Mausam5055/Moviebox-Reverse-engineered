package com.transsion.rewardscenter.model;

import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenterapi.ClaimResultData;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.model.ClaimRewardViewModel$claim$1", f = "ClaimRewardViewModel.kt", l = {45}, m = "invokeSuspend")
final class ClaimRewardViewModel$claim$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $drawResultId;
    int label;
    final /* synthetic */ ClaimRewardViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClaimRewardViewModel$claim$1(String str, ClaimRewardViewModel claimRewardViewModel, Continuation<? super ClaimRewardViewModel$claim$1> continuation) {
        super(2, continuation);
        this.$drawResultId = str;
        this.this$0 = claimRewardViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(ClaimRewardViewModel claimRewardViewModel, String str, String str2) {
        claimRewardViewModel.g().n(Boolean.FALSE);
        claimRewardViewModel.f().n(new Pair(str, str2));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(ClaimRewardViewModel claimRewardViewModel, ClaimResultData claimResultData) {
        claimRewardViewModel.g().n(Boolean.FALSE);
        claimRewardViewModel.e().n(Boolean.TRUE);
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ClaimRewardViewModel$claim$1(this.$drawResultId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ClaimRewardViewModel$claim$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f51292a;
            String str = this.$drawResultId;
            final ClaimRewardViewModel claimRewardViewModel = this.this$0;
            Function2 function2 = new Function2() { // from class: com.transsion.rewardscenter.model.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return ClaimRewardViewModel$claim$1.g(claimRewardViewModel, (String) obj2, (String) obj3);
                }
            };
            final ClaimRewardViewModel claimRewardViewModel2 = this.this$0;
            Function1 function1 = new Function1() { // from class: com.transsion.rewardscenter.model.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return ClaimRewardViewModel$claim$1.h(claimRewardViewModel2, (ClaimResultData) obj2);
                }
            };
            this.label = 1;
            if (rewardsCenterApiHelper.l(str, function2, function1, this) == objF) {
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
