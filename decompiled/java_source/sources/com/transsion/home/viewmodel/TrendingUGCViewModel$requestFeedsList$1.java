package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.TrendingRequestEntity;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.moviedetailapi.bean.Pager;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.TrendingUGCViewModel$requestFeedsList$1", f = "TrendingUGCViewModel.kt", l = {274}, m = "invokeSuspend")
final class TrendingUGCViewModel$requestFeedsList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ TrendingRequestEntity $requestEntity;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ TrendingUGCViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrendingUGCViewModel$requestFeedsList$1(TrendingRequestEntity trendingRequestEntity, TrendingUGCViewModel trendingUGCViewModel, Continuation<? super TrendingUGCViewModel$requestFeedsList$1> continuation) {
        super(2, continuation);
        this.$requestEntity = trendingRequestEntity;
        this.this$0 = trendingUGCViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TrendingUGCViewModel$requestFeedsList$1 trendingUGCViewModel$requestFeedsList$1 = new TrendingUGCViewModel$requestFeedsList$1(this.$requestEntity, this.this$0, continuation);
        trendingUGCViewModel$requestFeedsList$1.L$0 = obj;
        return trendingUGCViewModel$requestFeedsList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TrendingUGCViewModel$requestFeedsList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        n0 n0Var;
        TrendingUGCViewModel trendingUGCViewModel;
        String nextPage;
        Integer perPage;
        List<TrendingRespItem> items;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                n0Var = (n0) this.L$0;
                bh.b.a aVar = bh.b.f16471a;
                String strJ = com.blankj.utilcode.util.o.j(this.$requestEntity);
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    TrendingUGCViewModel trendingUGCViewModel2 = this.this$0;
                    ol.e eVarC = trendingUGCViewModel2.C();
                    String strA = vg.a.f77324a.a();
                    this.L$0 = n0Var;
                    this.L$1 = trendingUGCViewModel2;
                    this.label = 1;
                    obj = eVarC.i(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    trendingUGCViewModel = trendingUGCViewModel2;
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            trendingUGCViewModel = (TrendingUGCViewModel) this.L$1;
            n0Var = (n0) this.L$0;
            ResultKt.b(obj);
            BaseDto baseDto = (BaseDto) obj;
            TrendingRespData trendingRespData = (TrendingRespData) baseDto.getData();
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                lg.a.C0828a.f(lg.a.f68839a, "TrendingUGCFragment", "success " + ((trendingRespData == null || (items = trendingRespData.getItems()) == null) ? null : Boxing.d(items.size())) + " " + n0Var + "@PostListViewModel", false, 4, null);
                if ((trendingRespData != null ? trendingRespData.getPager() : null) != null) {
                    Pager pager = trendingRespData.getPager();
                    if (pager == null || (nextPage = pager.getNextPage()) == null) {
                        nextPage = "1";
                    }
                    trendingUGCViewModel.f45838b = nextPage;
                    Pager pager2 = trendingRespData.getPager();
                    trendingUGCViewModel.f45839c = (pager2 == null || (perPage = pager2.getPerPage()) == null) ? 14 : perPage.intValue();
                }
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "TrendingUGCFragment", "code " + baseDto.getCode() + " message " + baseDto.getMsg(), false, 4, null);
            }
            if (trendingRespData != null) {
                List<TrendingRespItem> items2 = trendingRespData.getItems();
                if (items2 == null) {
                    items2 = CollectionsKt.l();
                }
                trendingRespData.setTransferData(trendingUGCViewModel.t(items2));
            }
            trendingUGCViewModel.E().n(trendingRespData);
        } catch (Exception e11) {
            lg.a.C0828a.f(lg.a.f68839a, "TrendingUGCFragment", String.valueOf(e11.getMessage()), false, 4, null);
            e11.printStackTrace();
            this.this$0.E().n(null);
        } finally {
            this.this$0.f45840d = false;
        }
        return Unit.f67061a;
    }
}
