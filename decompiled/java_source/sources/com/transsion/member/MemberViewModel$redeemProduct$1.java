package com.transsion.member;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.bean.RedeemResult;
import com.transsion.memberapi.SkuItem;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.MemberViewModel$redeemProduct$1", f = "MemberViewModel.kt", l = {389}, m = "invokeSuspend")
final class MemberViewModel$redeemProduct$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ SkuItem $skuItem;
    int label;
    final /* synthetic */ MemberViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberViewModel$redeemProduct$1(MemberViewModel memberViewModel, SkuItem skuItem, Continuation<? super MemberViewModel$redeemProduct$1> continuation) {
        super(2, continuation);
        this.this$0 = memberViewModel;
        this.$skuItem = skuItem;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberViewModel$redeemProduct$1(this.this$0, this.$skuItem, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberViewModel$redeemProduct$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            MemberViewModel memberViewModel = this.this$0;
            SkuItem skuItem = this.$skuItem;
            this.label = 1;
            obj = memberViewModel.S(skuItem, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        BaseDto baseDto = (BaseDto) obj;
        if (!Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0") || baseDto.getData() == null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.l(c0828a, "MemberViewModel", "RedeemProduct fail: " + (baseDto != null ? baseDto.getReason() : null) + " " + (baseDto != null ? baseDto.getCode() : null) + " " + (baseDto != null ? baseDto.getMsg() : null), false, 4, null);
            if (Intrinsics.c(baseDto != null ? baseDto.getReason() : null, "EXCHANGE_FAIL")) {
                this.this$0.f46374p.remove(this.$skuItem.getSkuId());
                lg.a.C0828a.f(c0828a, "MemberViewModel", "Should remove the orderId for " + this.$skuItem.getSkuId(), false, 4, null);
            }
            this.this$0.f46365g.q(null);
        } else {
            Object data = baseDto.getData();
            Intrinsics.e(data);
            RedeemResult redeemResult = (RedeemResult) data;
            if (Intrinsics.c(redeemResult.getOrderId(), this.this$0.f46374p.get(this.$skuItem.getSkuId()))) {
                lg.a.C0828a.f(lg.a.f68839a, "MemberViewModel", "RedeemProductSucceed: " + redeemResult.getOrderId() + "}", false, 4, null);
                this.this$0.f46374p.remove(this.$skuItem.getSkuId());
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "MemberViewModel", "RedeemProductSucceed but orderId not match: " + redeemResult.getOrderId() + "}", false, 4, null);
            }
            this.this$0.f46365g.q(redeemResult);
        }
        return Unit.f67061a;
    }
}
