package com.transsion.version.update;

import android.app.Activity;
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
@DebugMetadata(c = "com.transsion.version.update.UpdateVersionRequest$startCheckUpdate$3", f = "UpdateVersionRequest.kt", l = {}, m = "invokeSuspend")
final class UpdateVersionRequest$startCheckUpdate$3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ String $fromPage;
    final /* synthetic */ boolean $manual;
    final /* synthetic */ RemoteVersionInfo $remoteVersionInfo;
    int label;
    final /* synthetic */ UpdateVersionRequest this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdateVersionRequest$startCheckUpdate$3(UpdateVersionRequest updateVersionRequest, Activity activity, String str, RemoteVersionInfo remoteVersionInfo, boolean z10, Continuation<? super UpdateVersionRequest$startCheckUpdate$3> continuation) {
        super(2, continuation);
        this.this$0 = updateVersionRequest;
        this.$activity = activity;
        this.$fromPage = str;
        this.$remoteVersionInfo = remoteVersionInfo;
        this.$manual = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UpdateVersionRequest$startCheckUpdate$3(this.this$0, this.$activity, this.$fromPage, this.$remoteVersionInfo, this.$manual, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UpdateVersionRequest$startCheckUpdate$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.o(this.$activity, this.$fromPage, this.$remoteVersionInfo, this.$manual);
        return Unit.f67061a;
    }
}
