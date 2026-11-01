package com.transsion.wrapperad;

import com.transsion.baselib.report.l;
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
@DebugMetadata(c = "com.transsion.wrapperad.WrapperAdProvider$initAd$4", f = "WrapperAdProvider.kt", l = {}, m = "invokeSuspend")
final class WrapperAdProvider$initAd$4 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    public static final class a implements l.a {
        a() {
        }

        @Override // com.transsion.baselib.report.l.a
        public void onBackgroundStatusChange(boolean z10) {
            if (z10) {
                com.transsion.ad.strategy.a.f42226a.b();
            } else {
                com.transsion.ad.strategy.a.f42226a.a();
            }
        }
    }

    WrapperAdProvider$initAd$4(Continuation<? super WrapperAdProvider$initAd$4> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WrapperAdProvider$initAd$4(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WrapperAdProvider$initAd$4) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        l.f43359a.g(new a());
        hy.a.f64842a.a();
        return Unit.f67061a;
    }
}
