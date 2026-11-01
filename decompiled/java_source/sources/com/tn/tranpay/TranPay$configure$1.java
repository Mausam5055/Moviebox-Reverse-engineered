package com.tn.tranpay;

import android.app.Application;
import com.tn.tranpay.device.TNDeviceHelper;
import com.tn.tranpay.report.g;
import com.tn.tranpay.report.h;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.tn.tranpay.TranPay$configure$1", f = "TranPay.kt", l = {}, m = "invokeSuspend")
final class TranPay$configure$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Application $application;
    final /* synthetic */ boolean $debugMode;
    final /* synthetic */ String $region;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TranPay$configure$1(Application application, boolean z10, String str, Continuation<? super TranPay$configure$1> continuation) {
        super(2, continuation);
        this.$application = application;
        this.$debugMode = z10;
        this.$region = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TranPay$configure$1(this.$application, this.$debugMode, this.$region, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TranPay$configure$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        TNDeviceHelper.f41530a.a(this.$application);
        com.tn.tranpay.report.e.f41680a.c(this.$application, "TranPay", this.$debugMode, false, new g());
        h.f41685a.b(this.$region);
        TranPayConfiguration.f41490a.C();
        return Unit.f67061a;
    }
}
