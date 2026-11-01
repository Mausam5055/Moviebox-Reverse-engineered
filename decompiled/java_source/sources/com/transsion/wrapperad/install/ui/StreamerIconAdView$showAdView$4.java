package com.transsion.wrapperad.install.ui;

import com.transsion.ad.bidding.icon.BiddingIconAdManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.wrapperad.install.ui.StreamerIconAdView$showAdView$4", f = "StreamerIconAdView.kt", l = {284}, m = "invokeSuspend")
final class StreamerIconAdView$showAdView$4 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ StreamerIconAdView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StreamerIconAdView$showAdView$4(StreamerIconAdView streamerIconAdView, Continuation<? super StreamerIconAdView$showAdView$4> continuation) {
        super(2, continuation);
        this.this$0 = streamerIconAdView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StreamerIconAdView$showAdView$4(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StreamerIconAdView$showAdView$4) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            BiddingIconAdManager biddingIconAdManager = this.this$0.adManager;
            String str = this.this$0.sceneId;
            di.a aVar = this.this$0.adListener;
            this.label = 1;
            if (BiddingIconAdManager.S(biddingIconAdManager, str, true, 1, aVar, null, this, 16, null) == objF) {
                return objF;
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
