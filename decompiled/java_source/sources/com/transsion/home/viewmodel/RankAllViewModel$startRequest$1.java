package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.RankAllData;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.RankAllViewModel$startRequest$1", f = "RankAllViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE}, m = "invokeSuspend")
final class RankAllViewModel$startRequest$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isLoadMore;
    int label;
    final /* synthetic */ RankAllViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RankAllViewModel$startRequest$1(boolean z10, RankAllViewModel rankAllViewModel, Continuation<? super RankAllViewModel$startRequest$1> continuation) {
        super(2, continuation);
        this.$isLoadMore = z10;
        this.this$0 = rankAllViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RankAllViewModel$startRequest$1(this.$isLoadMore, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RankAllViewModel$startRequest$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Pager pager;
        String page;
        Integer numV;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                int i12 = this.$isLoadMore ? this.this$0.f45822c + 1 : this.this$0.f45822c;
                ol.d dVar = this.this$0.f45823d;
                String str = this.this$0.f45824e;
                int i13 = this.this$0.f45825f;
                String str2 = this.this$0.f45826g;
                this.label = 1;
                obj = ol.d.a.a(dVar, null, i13, str, i12, 0, str2, this, 17, null);
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
            this.this$0.m((RankAllData) baseDto.getData());
            if (this.$isLoadMore) {
                this.this$0.i().n((RankAllData) baseDto.getData());
                RankAllViewModel rankAllViewModel = this.this$0;
                RankAllData rankAllData = (RankAllData) baseDto.getData();
                rankAllViewModel.f45822c = (rankAllData == null || (pager = rankAllData.getPager()) == null || (page = pager.getPage()) == null || (numV = StringsKt.v(page)) == null) ? this.this$0.f45822c + 1 : numV.intValue();
            } else {
                this.this$0.j().n(baseDto.getData());
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            lg.a.C0828a c0828a = lg.a.f68839a;
            String simpleName = RankAllViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0828a.i(simpleName, "exceptionHandler " + e11.getMessage(), true);
            if (this.$isLoadMore) {
                this.this$0.i().n(null);
            } else {
                this.this$0.j().n(null);
            }
        }
        return Unit.f67061a;
    }
}
