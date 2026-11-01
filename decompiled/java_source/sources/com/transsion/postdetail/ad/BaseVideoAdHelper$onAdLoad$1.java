package com.transsion.postdetail.ad;

import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
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
@DebugMetadata(c = "com.transsion.postdetail.ad.BaseVideoAdHelper$onAdLoad$1", f = "BaseVideoAdHelper.kt", l = {}, m = "invokeSuspend")
final class BaseVideoAdHelper$onAdLoad$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ BiddingIntermediateMaterialBean $maxEcpmObject;
    final /* synthetic */ String $sceneId;
    int label;
    final /* synthetic */ BaseVideoAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseVideoAdHelper$onAdLoad$1(String str, BaseVideoAdHelper baseVideoAdHelper, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, Continuation<? super BaseVideoAdHelper$onAdLoad$1> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.this$0 = baseVideoAdHelper;
        this.$maxEcpmObject = biddingIntermediateMaterialBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseVideoAdHelper$onAdLoad$1(this.$sceneId, this.this$0, this.$maxEcpmObject, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BaseVideoAdHelper$onAdLoad$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String str = this.$sceneId;
        switch (str.hashCode()) {
            case -1994104145:
                if (str.equals("LandscapePauseSceneNew")) {
                    this.this$0.L1(this.$maxEcpmObject);
                }
                break;
            case -73588874:
                if (str.equals("VideoStartBidScene")) {
                    this.this$0.M1(this.$sceneId, this.$maxEcpmObject);
                    this.this$0.F1("VideoStartBidScene");
                }
                break;
            case 354873452:
                if (str.equals("VerticalPauseScene")) {
                    this.this$0.V1(this.$maxEcpmObject);
                }
                break;
            case 2049503279:
                if (str.equals("VideoEndBidScene")) {
                    this.this$0.M1(this.$sceneId, this.$maxEcpmObject);
                }
                break;
        }
        return Unit.f67061a;
    }
}
