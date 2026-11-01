package com.transsion.startup;

import android.app.Application;
import com.transsion.mb.config.manager.ConfigBean;
import com.wecloud.load.lib.DySoLoadManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.startup.StartupManager$scheduleDelayTask$1", f = "StartupManager.kt", l = {636}, m = "invokeSuspend")
final class StartupManager$scheduleDelayTask$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ StartupManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartupManager$scheduleDelayTask$1(StartupManager startupManager, Continuation<? super StartupManager$scheduleDelayTask$1> continuation) {
        super(2, continuation);
        this.this$0 = startupManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StartupManager$scheduleDelayTask$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StartupManager$scheduleDelayTask$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(10000L, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        Application application = null;
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sa_dy_so_zip_info", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        lg.a.C0828a.f(lg.a.f68839a, "SoLoadManager", "d valueJson " + value, false, 4, null);
        DySoLoadManager dySoLoadManager = DySoLoadManager.f60806a;
        Application application2 = this.this$0.f54507c;
        if (application2 == null) {
            Intrinsics.z("app");
        } else {
            application = application2;
        }
        dySoLoadManager.b(application, String.valueOf(value));
        return Unit.f67061a;
    }
}
