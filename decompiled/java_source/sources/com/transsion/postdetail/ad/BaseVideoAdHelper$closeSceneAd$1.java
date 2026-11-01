package com.transsion.postdetail.ad;

import android.view.ViewGroup;
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
@DebugMetadata(c = "com.transsion.postdetail.ad.BaseVideoAdHelper$closeSceneAd$1", f = "BaseVideoAdHelper.kt", l = {}, m = "invokeSuspend")
final class BaseVideoAdHelper$closeSceneAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BaseVideoAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseVideoAdHelper$closeSceneAd$1(BaseVideoAdHelper baseVideoAdHelper, Continuation<? super BaseVideoAdHelper$closeSceneAd$1> continuation) {
        super(2, continuation);
        this.this$0 = baseVideoAdHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseVideoAdHelper$closeSceneAd$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BaseVideoAdHelper$closeSceneAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        ViewGroup viewGroupF0 = this.this$0.f0();
        if (viewGroupF0 != null) {
            viewGroupF0.setVisibility(8);
        }
        ViewGroup viewGroupG0 = this.this$0.g0();
        if (viewGroupG0 != null) {
            viewGroupG0.setVisibility(8);
        }
        this.this$0.H(false);
        this.this$0.t1(false);
        this.this$0.p1(false);
        this.this$0.b1();
        if (this.this$0.K0()) {
            this.this$0.c1();
        }
        this.this$0.i1(false);
        this.this$0.Q();
        this.this$0.R();
        this.this$0.e2();
        return Unit.f67061a;
    }
}
