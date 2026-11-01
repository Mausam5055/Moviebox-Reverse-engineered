package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.p004enum.HomeTabId;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.TrendingUGCViewModel$requestOperateData$1", f = "TrendingUGCViewModel.kt", l = {Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE}, m = "invokeSuspend")
final class TrendingUGCViewModel$requestOperateData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ TrendingUGCViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrendingUGCViewModel$requestOperateData$1(TrendingUGCViewModel trendingUGCViewModel, Continuation<? super TrendingUGCViewModel$requestOperateData$1> continuation) {
        super(2, continuation);
        this.this$0 = trendingUGCViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TrendingUGCViewModel$requestOperateData$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TrendingUGCViewModel$requestOperateData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        List<OperateItem> items;
        String version;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("trending_operating_version", "");
            ol.e eVarC = this.this$0.C();
            int value = HomeTabId.UGC_Trending.getValue();
            this.L$0 = string;
            this.label = 1;
            Object objE = ol.e.a.e(eVarC, null, value, string, this, 1, null);
            if (objE == objF) {
                return objF;
            }
            str = string;
            obj = objE;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) this.L$0;
            ResultKt.b(obj);
        }
        BaseDto baseDto = (BaseDto) obj;
        if (!Intrinsics.c(baseDto.getCode(), "0") || baseDto.getData() == null) {
            this.this$0.z().n(null);
        } else {
            MainOperateData mainOperateData = (MainOperateData) baseDto.getData();
            if (str == null || str.length() == 0 || mainOperateData == null || (items = mainOperateData.getItems()) == null || !items.isEmpty() || (version = mainOperateData.getVersion()) == null || version.length() <= 0) {
                this.this$0.M(mainOperateData);
            } else {
                mainOperateData = (MainOperateData) com.blankj.utilcode.util.o.d(com.transsion.baselib.report.launch.b.f43370a.b().getString("trending_operating_data", ""), MainOperateData.class);
            }
            this.this$0.F(mainOperateData);
            this.this$0.z().n(mainOperateData);
        }
        return Unit.f67061a;
    }
}
