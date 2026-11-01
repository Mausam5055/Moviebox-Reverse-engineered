package com.transsion.search.ad;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
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
@DebugMetadata(c = "com.transsion.search.ad.SearchHotAdHelper$loadBiddingAd$1", f = "SearchHotAdHelper.kt", l = {138}, m = "invokeSuspend")
final class SearchHotAdHelper$loadBiddingAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ SearchHotAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchHotAdHelper$loadBiddingAd$1(SearchHotAdHelper searchHotAdHelper, Continuation<? super SearchHotAdHelper$loadBiddingAd$1> continuation) {
        super(2, continuation);
        this.this$0 = searchHotAdHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SearchHotAdHelper$loadBiddingAd$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SearchHotAdHelper$loadBiddingAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.this$0.f51960e = new BiddingNativeManager();
            BiddingNativeManager biddingNativeManager = this.this$0.f51960e;
            if (biddingNativeManager != null) {
                SearchHotAdHelper searchHotAdHelper = this.this$0;
                biddingNativeManager.O0("SearchHotNativeScene");
                biddingNativeManager.N0(searchHotAdHelper.f51968m);
                this.L$0 = biddingNativeManager;
                this.label = 1;
                if (AbsAdBidding.w0(biddingNativeManager, 0, false, this, 3, null) == objF) {
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
