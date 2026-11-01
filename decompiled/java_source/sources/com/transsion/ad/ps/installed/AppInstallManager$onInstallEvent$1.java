package com.transsion.ad.ps.installed;

import android.content.Context;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.ad.ps.PSReportUtil;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import mi.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.installed.AppInstallManager$onInstallEvent$1", f = "AppInstallManager.kt", l = {40}, m = "invokeSuspend")
final class AppInstallManager$onInstallEvent$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppInstalledBean $appInfo;
    final /* synthetic */ Context $context;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppInstallManager$onInstallEvent$1(Context context, AppInstalledBean appInstalledBean, Continuation<? super AppInstallManager$onInstallEvent$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$appInfo = appInstalledBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AppInstallManager$onInstallEvent$1(this.$context, this.$appInfo, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AppInstallManager$onInstallEvent$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            a aVarW0 = MbAdDatabase.INSTANCE.b(this.$context).w0();
            AppInstalledBean appInstalledBean = this.$appInfo;
            this.label = 1;
            if (aVarW0.a(appInstalledBean, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        oi.a.m(oi.a.f71022a, "AppInstallManager --> onInstallEvent(保存到本地数据库) --> appInfo = " + this.$appInfo, 0, false, 6, null);
        PSReportUtil.f42170a.b(this.$appInfo.getPackageName(), this.$appInfo.getSource(), "install");
        return Unit.f67061a;
    }
}
