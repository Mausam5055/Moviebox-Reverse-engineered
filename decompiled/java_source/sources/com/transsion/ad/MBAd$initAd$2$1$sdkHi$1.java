package com.transsion.ad;

import com.transsion.ad.hi.HiSavanaAdManager;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.MBAd$initAd$2$1$sdkHi$1", f = "MBAd.kt", l = {196}, m = "invokeSuspend")
final class MBAd$initAd$2$1$sdkHi$1 extends SuspendLambda implements Function2<n0, Continuation<? super String>, Object> {
    final /* synthetic */ MBAd.a $params;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MBAd$initAd$2$1$sdkHi$1(MBAd.a aVar, Continuation<? super MBAd$initAd$2$1$sdkHi$1> continuation) {
        super(2, continuation);
        this.$params = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MBAd$initAd$2$1$sdkHi$1(this.$params, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super String> continuation) {
        return ((MBAd$initAd$2$1$sdkHi$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return "HiSavana 广告SDK初始化完成";
        }
        ResultKt.b(obj);
        HiSavanaAdManager hiSavanaAdManager = HiSavanaAdManager.f42117a;
        String strF = this.$params.f();
        boolean zC = this.$params.c();
        boolean zL = this.$params.l();
        this.label = 1;
        return hiSavanaAdManager.g(strF, zC, zL, this) == objF ? objF : "HiSavana 广告SDK初始化完成";
    }
}
