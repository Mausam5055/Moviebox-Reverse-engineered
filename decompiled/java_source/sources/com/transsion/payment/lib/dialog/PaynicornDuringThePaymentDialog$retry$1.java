package com.transsion.payment.lib.dialog;

import android.os.SystemClock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$retry$1", f = "PaynicornDuringThePaymentDialog.kt", l = {276}, m = "invokeSuspend")
final class PaynicornDuringThePaymentDialog$retry$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $startTime;
    int label;
    final /* synthetic */ PaynicornDuringThePaymentDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaynicornDuringThePaymentDialog$retry$1(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog, long j11, Continuation<? super PaynicornDuringThePaymentDialog$retry$1> continuation) {
        super(2, continuation);
        this.this$0 = paynicornDuringThePaymentDialog;
        this.$startTime = j11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaynicornDuringThePaymentDialog$retry$1(this.this$0, this.$startTime, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaynicornDuringThePaymentDialog$retry$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog = this.this$0;
            paynicornDuringThePaymentDialog.currentDelay = RangesKt.g(paynicornDuringThePaymentDialog.initialDelayMillis - (SystemClock.elapsedRealtime() - this.$startTime), 0L);
            long j11 = this.this$0.currentDelay;
            this.label = 1;
            if (u0.a(j11, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        this.this$0.I0();
        return Unit.f67061a;
    }
}
