package com.transsion.push.feature.toolbar;

import com.blankj.utilcode.util.o;
import com.transsion.mb.config.manager.ConfigBean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import sm.f;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.feature.toolbar.ToolbarNotificationUtils$checkNotice$1", f = "ToolbarNotificationUtils.kt", l = {109}, m = "invokeSuspend")
final class ToolbarNotificationUtils$checkNotice$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    ToolbarNotificationUtils$checkNotice$1(Continuation<? super ToolbarNotificationUtils$checkNotice$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ToolbarNotificationUtils$checkNotice$1 toolbarNotificationUtils$checkNotice$1 = new ToolbarNotificationUtils$checkNotice$1(continuation);
        toolbarNotificationUtils$checkNotice$1.L$0 = obj;
        return toolbarNotificationUtils$checkNotice$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ToolbarNotificationUtils$checkNotice$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ToolbarNoticeConfig toolbarNoticeConfig;
        String value;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                lg.a.C0828a.v(lg.a.f68839a, "ToolbarNo", "checkNotice-----", false, 4, null);
                try {
                    ConfigBean configBeanD = f.d(f.f75407c.a(), "sa_toolbar_notice", false, 2, null);
                    toolbarNoticeConfig = (configBeanD == null || (value = configBeanD.getValue()) == null) ? null : (ToolbarNoticeConfig) o.d(value, ToolbarNoticeConfig.class);
                } catch (Exception unused) {
                }
                int days = toolbarNoticeConfig != null ? toolbarNoticeConfig.getDays() : 3;
                ToolbarNotificationUtils.f50838e = toolbarNoticeConfig;
                ToolbarNotificationUtils toolbarNotificationUtils = ToolbarNotificationUtils.f50834a;
                toolbarNotificationUtils.w(toolbarNoticeConfig);
                if (toolbarNotificationUtils.s(days)) {
                    a2 a2VarC = y0.c();
                    ToolbarNotificationUtils$checkNotice$1$1$1 toolbarNotificationUtils$checkNotice$1$1$1 = new ToolbarNotificationUtils$checkNotice$1$1$1(null);
                    this.label = 1;
                    if (i.g(a2VarC, toolbarNotificationUtils$checkNotice$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Unit.f67061a;
    }
}
