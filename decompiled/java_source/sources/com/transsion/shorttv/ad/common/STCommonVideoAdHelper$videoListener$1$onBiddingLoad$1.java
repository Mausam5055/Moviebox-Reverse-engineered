package com.transsion.shorttv.ad.common;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ad.common.STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1", f = "STCommonVideoAdHelper.kt", l = {}, m = "invokeSuspend")
final class STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ STCommonVideoAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1(STCommonVideoAdHelper sTCommonVideoAdHelper, Continuation<? super STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1> continuation) {
        super(2, continuation);
        this.this$0 = sTCommonVideoAdHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Unit unit;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.this$0;
        try {
            Result.Companion companion = Result.INSTANCE;
            Function3 function3 = sTCommonVideoAdHelper.f52703e;
            if (function3 != null) {
                function3.invoke(Boxing.a(true), "", "");
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Unit.f67061a;
    }
}
