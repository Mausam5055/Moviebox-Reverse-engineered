package com.transsion.ad.bidding.interstitial;

import java.util.Map;
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
@DebugMetadata(c = "com.transsion.ad.bidding.interstitial.BiddingInterstitialManager$Companion$preLoadAd$1", f = "BiddingInterstitialManager.kt", l = {27, 30}, m = "invokeSuspend")
final class BiddingInterstitialManager$Companion$preLoadAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, Object> $ctxMap;
    final /* synthetic */ String $sceneId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingInterstitialManager$Companion$preLoadAd$1(String str, Map<String, ? extends Object> map, Continuation<? super BiddingInterstitialManager$Companion$preLoadAd$1> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.$ctxMap = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingInterstitialManager$Companion$preLoadAd$1(this.$sceneId, this.$ctxMap, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BiddingInterstitialManager$Companion$preLoadAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        l lVarB = l.f41980j.b(this.$sceneId);
        if (lVarB != null) {
            String str = this.$sceneId;
            Map<String, Object> map = this.$ctxMap;
            this.label = 1;
            if (lVarB.m(str, map, this) == objF) {
                return objF;
            }
        }
        BiddingH5InterstitialProvider.Companion companion = BiddingH5InterstitialProvider.f41964a;
        String str2 = this.$sceneId;
        this.label = 2;
        if (companion.a(str2, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
