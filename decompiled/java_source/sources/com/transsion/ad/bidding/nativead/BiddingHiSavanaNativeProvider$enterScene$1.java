package com.transsion.ad.bidding.nativead;

import com.hisavana.mediation.ad.TNativeAd;
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
@DebugMetadata(c = "com.transsion.ad.bidding.nativead.BiddingHiSavanaNativeProvider$enterScene$1", f = "BiddingHiSavanaNativeProvider.kt", l = {}, m = "invokeSuspend")
final class BiddingHiSavanaNativeProvider$enterScene$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $sceneId;
    int label;
    final /* synthetic */ BiddingHiSavanaNativeProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingHiSavanaNativeProvider$enterScene$1(BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider, String str, Continuation<? super BiddingHiSavanaNativeProvider$enterScene$1> continuation) {
        super(2, continuation);
        this.this$0 = biddingHiSavanaNativeProvider;
        this.$sceneId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingHiSavanaNativeProvider$enterScene$1(this.this$0, this.$sceneId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BiddingHiSavanaNativeProvider$enterScene$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        TNativeAd tNativeAd = this.this$0.f41989h;
        if (tNativeAd != null) {
            tNativeAd.enterScene(this.$sceneId, 1);
        }
        return Unit.f67061a;
    }
}
