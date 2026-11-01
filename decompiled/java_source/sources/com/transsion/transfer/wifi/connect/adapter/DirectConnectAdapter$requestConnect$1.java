package com.transsion.transfer.wifi.connect.adapter;

import com.transsion.transfer.wifi.util.g;
import com.transsion.transfer.wifi.util.i;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.connect.adapter.DirectConnectAdapter$requestConnect$1", f = "DirectConnectAdapter.kt", l = {185}, m = "invokeSuspend")
final class DirectConnectAdapter$requestConnect$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DirectConnectAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DirectConnectAdapter$requestConnect$1(DirectConnectAdapter directConnectAdapter, Continuation<? super DirectConnectAdapter$requestConnect$1> continuation) {
        super(2, continuation);
        this.this$0 = directConnectAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DirectConnectAdapter$requestConnect$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DirectConnectAdapter$requestConnect$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            i.f55971a.d(this.this$0.y(), this.this$0.f55862g, (60 & 4) != 0, (60 & 8) != 0, (60 & 16) != 0, (60 & 32) != 0);
            this.label = 1;
            if (u0.a(1000L, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        g.b(g.f55970a, this.this$0.e() + " --> requestConnect() --> connectRetry = " + this.this$0.f55866k + " --> retryCount = " + this.this$0.f55867l + " --> delay 500", false, 2, null);
        this.this$0.x();
        return Unit.f67061a;
    }
}
