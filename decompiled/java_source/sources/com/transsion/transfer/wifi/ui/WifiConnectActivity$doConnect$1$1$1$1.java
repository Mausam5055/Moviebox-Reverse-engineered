package com.transsion.transfer.wifi.ui;

import com.transsion.transfer.R$string;
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
@DebugMetadata(c = "com.transsion.transfer.wifi.ui.WifiConnectActivity$doConnect$1$1$1$1", f = "WifiConnectActivity.kt", l = {}, m = "invokeSuspend")
final class WifiConnectActivity$doConnect$1$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ WifiConnectActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WifiConnectActivity$doConnect$1$1$1$1(WifiConnectActivity wifiConnectActivity, Continuation<? super WifiConnectActivity$doConnect$1$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = wifiConnectActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WifiConnectActivity$doConnect$1$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WifiConnectActivity$doConnect$1$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        ((gv.c) this.this$0.getMViewBinding()).f63975d.resume();
        uh.b.f76753a.e(this.this$0.getResources().getString(R$string.transfer_wifi_connect_dialog_failed));
        return Unit.f67061a;
    }
}
