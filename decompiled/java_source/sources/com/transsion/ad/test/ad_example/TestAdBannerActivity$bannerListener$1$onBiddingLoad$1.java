package com.transsion.ad.test.ad_example;

import android.view.View;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
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
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdBannerActivity$bannerListener$1$onBiddingLoad$1", f = "TestAdBannerActivity.kt", l = {}, m = "invokeSuspend")
final class TestAdBannerActivity$bannerListener$1$onBiddingLoad$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ BiddingIntermediateMaterialBean $maxEcpmObject;
    int label;
    final /* synthetic */ TestAdBannerActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdBannerActivity$bannerListener$1$onBiddingLoad$1(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, TestAdBannerActivity testAdBannerActivity, Continuation<? super TestAdBannerActivity$bannerListener$1$onBiddingLoad$1> continuation) {
        super(2, continuation);
        this.$maxEcpmObject = biddingIntermediateMaterialBean;
        this.this$0 = testAdBannerActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdBannerActivity$bannerListener$1$onBiddingLoad$1(this.$maxEcpmObject, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TestAdBannerActivity$bannerListener$1$onBiddingLoad$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        View bannerView;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = this.$maxEcpmObject;
        if (biddingIntermediateMaterialBean != null && (bannerView = biddingIntermediateMaterialBean.getBannerView()) != null) {
            TestAdBannerActivity testAdBannerActivity = this.this$0;
            com.transsion.ad.bidding.banner.a aVar = testAdBannerActivity.bannerManager;
            if (aVar != null) {
                aVar.S0();
            }
            ji.k kVar = testAdBannerActivity.binding;
            if (kVar == null) {
                Intrinsics.z("binding");
                kVar = null;
            }
            kVar.f66135c.addView(bannerView);
        }
        return Unit.f67061a;
    }
}
