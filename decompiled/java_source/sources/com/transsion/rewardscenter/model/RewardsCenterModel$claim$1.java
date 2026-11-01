package com.transsion.rewardscenter.model;

import androidx.p009lifecycle.b0;
import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenterapi.ClaimResultData;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "com.transsion.rewardscenter.model.RewardsCenterModel$claim$1", f = "RewardsCenterModel.kt", l = {Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE}, m = "invokeSuspend")
final class RewardsCenterModel$claim$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $drawResultId;
    int label;
    final /* synthetic */ RewardsCenterModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardsCenterModel$claim$1(String str, RewardsCenterModel rewardsCenterModel, Continuation<? super RewardsCenterModel$claim$1> continuation) {
        super(2, continuation);
        this.$drawResultId = str;
        this.this$0 = rewardsCenterModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(RewardsCenterModel rewardsCenterModel, String str, String str2, String str3) {
        b0 b0VarO = rewardsCenterModel.o();
        Boolean bool = Boolean.FALSE;
        b0VarO.n(bool);
        rewardsCenterModel.A(null);
        rewardsCenterModel.n().n(new Pair(str, bool));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(RewardsCenterModel rewardsCenterModel, String str, ClaimResultData claimResultData) {
        rewardsCenterModel.o().n(Boolean.FALSE);
        rewardsCenterModel.A(null);
        rewardsCenterModel.n().n(new Pair(str, Boolean.TRUE));
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RewardsCenterModel$claim$1(this.$drawResultId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RewardsCenterModel$claim$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f51292a;
            final String str = this.$drawResultId;
            final RewardsCenterModel rewardsCenterModel = this.this$0;
            Function2 function2 = new Function2() { // from class: com.transsion.rewardscenter.model.f
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return RewardsCenterModel$claim$1.g(rewardsCenterModel, str, (String) obj2, (String) obj3);
                }
            };
            final RewardsCenterModel rewardsCenterModel2 = this.this$0;
            final String str2 = this.$drawResultId;
            Function1 function1 = new Function1() { // from class: com.transsion.rewardscenter.model.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return RewardsCenterModel$claim$1.h(rewardsCenterModel2, str2, (ClaimResultData) obj2);
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
