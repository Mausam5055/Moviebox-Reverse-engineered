package com.transsion.payment.lib.strategy;

import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.SkuBean;
import com.transsion.payment.lib.bean.SkuData;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.strategy.PaynicornStrategy$fetchSkuList$1", f = "PaynicornStrategy.kt", l = {63}, m = "invokeSuspend")
final class PaynicornStrategy$fetchSkuList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ PaynicornStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaynicornStrategy$fetchSkuList$1(PaynicornStrategy paynicornStrategy, Continuation<? super PaynicornStrategy$fetchSkuList$1> continuation) {
        super(2, continuation);
        this.this$0 = paynicornStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaynicornStrategy$fetchSkuList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaynicornStrategy$fetchSkuList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentService paymentServiceI = this.this$0.i();
            this.label = 1;
            obj = paymentServiceI.d(this);
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
        if (baseDto == null || !Intrinsics.c(baseDto.getCode(), "0")) {
            this.this$0.f47815a.n((ArrayList) o.e(com.transsion.baselib.report.launch.b.f43370a.b().getString(com.transsion.payment.lib.c.f47776a.a(), "[\n{\n\"coin\": \"10\",\n\"formatPrice\": \"US$0.49\",\n\"priceCurrencyCode\": \"USD\",\n\"skuId\": \"reelshort_coin_20240313\"\n},\n{\n\"coin\": \"30\",\n\"formatPrice\": \"US$0.99\",\n\"priceCurrencyCode\": \"USD\",\n\"skuId\": \"reelshort_coin_20240222\"\n},\n{\n\"coin\": \"54\",\n\"formatPrice\": \"US$1.49\",\n\"priceCurrencyCode\": \"USD\",\n\"skuId\": \"reelshort_coin_54_20240303\"\n},\n{\n\"coin\": \"118\",\n\"formatPrice\": \"US$4.99\",\n\"priceCurrencyCode\": \"USD\",\n\"skuId\": \"reelshort_coin_118_20240303\"\n}\n]"), new TypeToken<ArrayList<SkuBean>>() { // from class: com.transsion.payment.lib.strategy.PaynicornStrategy$fetchSkuList$1$type$1
            }.getType()));
        } else {
            b0 b0Var = this.this$0.f47815a;
            SkuData skuData = (SkuData) baseDto.getData();
            b0Var.n(skuData != null ? skuData.getSkuList() : null);
        }
        return Unit.f67061a;
    }
}
