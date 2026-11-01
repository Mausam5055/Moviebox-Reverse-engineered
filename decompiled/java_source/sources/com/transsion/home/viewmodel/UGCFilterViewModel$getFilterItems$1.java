package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.ugc.UGCFilterItem;
import com.transsion.home.bean.ugc.UGCFilterResponse;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.UGCFilterViewModel$getFilterItems$1", f = "UGCFilterViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class UGCFilterViewModel$getFilterItems$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $category;
    int label;
    final /* synthetic */ UGCFilterViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCFilterViewModel$getFilterItems$1(String str, UGCFilterViewModel uGCFilterViewModel, Continuation<? super UGCFilterViewModel$getFilterItems$1> continuation) {
        super(2, continuation);
        this.$category = str;
        this.this$0 = uGCFilterViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCFilterViewModel$getFilterItems$1(this.$category, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCFilterViewModel$getFilterItems$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<UGCFilterItem> items;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                lg.a.f68839a.c("UGCFilterViewModel", "getFilterItems: category=" + this.$category, false);
                ol.c cVar = this.this$0.f45870e;
                String strA = vg.a.f77324a.a();
                String str = this.$category;
                this.label = 1;
                obj = cVar.c(strA, str, this);
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
            this.this$0.k().n(baseDto);
            lg.a.C0828a c0828a = lg.a.f68839a;
            UGCFilterResponse uGCFilterResponse = (UGCFilterResponse) baseDto.getData();
            c0828a.c("UGCFilterViewModel", "getFilterItems success: items size=" + ((uGCFilterResponse == null || (items = uGCFilterResponse.getItems()) == null) ? 0 : items.size()), false);
        } catch (Exception e11) {
            e11.printStackTrace();
            this.this$0.k().n(null);
            lg.a.f68839a.i("UGCFilterViewModel", "getFilterItems error: " + e11.getMessage() + ", category=" + this.$category, true);
        }
        return Unit.f67061a;
    }
}
