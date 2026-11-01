package com.transsion.baselib.report.launch;

import android.app.Application;
import com.cloud.tmc.kernel.constants.TmcConstants;
import g5.d;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.baselib.report.launch.RoomInstallReferrer$fetchInstallReferrer$1", f = "RoomInstallReferrer.kt", l = {}, m = "invokeSuspend")
final class RoomInstallReferrer$fetchInstallReferrer$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Application $context;
    final /* synthetic */ String $referrerUrl;
    final /* synthetic */ d $response;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomInstallReferrer$fetchInstallReferrer$1(Application application, String str, d dVar, Continuation<? super RoomInstallReferrer$fetchInstallReferrer$1> continuation) {
        super(2, continuation);
        this.$context = application;
        this.$referrerUrl = str;
        this.$response = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomInstallReferrer$fetchInstallReferrer$1(this.$context, this.$referrerUrl, this.$response, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomInstallReferrer$fetchInstallReferrer$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        RoomInstallReferrer roomInstallReferrer = RoomInstallReferrer.f43366a;
        Application application = this.$context;
        String str = this.$referrerUrl;
        if (str == null) {
            str = TmcConstants.ROUTE_UNKNOWN;
        }
        roomInstallReferrer.i(application, str, this.$response);
        return Unit.f67061a;
    }
}
