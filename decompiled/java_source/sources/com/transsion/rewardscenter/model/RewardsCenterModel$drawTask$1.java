package com.transsion.rewardscenter.model;

import com.therouter.TheRouter;
import com.transsion.commercializationapi.ITaskCenterApi;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.model.RewardsCenterModel$drawTask$1", f = "RewardsCenterModel.kt", l = {167}, m = "invokeSuspend")
final class RewardsCenterModel$drawTask$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $orderId;
    final /* synthetic */ boolean $showToast;
    int label;
    final /* synthetic */ RewardsCenterModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardsCenterModel$drawTask$1(RewardsCenterModel rewardsCenterModel, String str, boolean z10, Continuation<? super RewardsCenterModel$drawTask$1> continuation) {
        super(2, continuation);
        this.this$0 = rewardsCenterModel;
        this.$orderId = str;
        this.$showToast = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RewardsCenterModel$drawTask$1(this.this$0, this.$orderId, this.$showToast, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RewardsCenterModel$drawTask$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ITaskCenterApi iTaskCenterApi = (ITaskCenterApi) TheRouter.d(ITaskCenterApi.class, new Object[0]);
            if (iTaskCenterApi != null) {
                String strK = this.this$0.k();
                if (strK == null) {
                    strK = "";
                }
                String str = this.$orderId;
                String str2 = str != null ? str : "";
                boolean z10 = this.$showToast;
                this.label = 1;
                if (iTaskCenterApi.a(strK, str2, z10, this) == objF) {
                    return objF;
                }
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
