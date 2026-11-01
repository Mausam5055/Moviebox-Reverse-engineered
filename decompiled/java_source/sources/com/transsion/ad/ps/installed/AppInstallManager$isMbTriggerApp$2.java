package com.transsion.ad.ps.installed;

import android.content.Context;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.AppInstalledBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import mi.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Z"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.installed.AppInstallManager$isMbTriggerApp$2", f = "AppInstallManager.kt", l = {97}, m = "invokeSuspend")
final class AppInstallManager$isMbTriggerApp$2 extends SuspendLambda implements Function2<n0, Continuation<? super Boolean>, Object> {
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ String $packageName;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppInstallManager$isMbTriggerApp$2(Context context, String str, Continuation<? super AppInstallManager$isMbTriggerApp$2> continuation) {
        super(2, continuation);
        this.$applicationContext = context;
        this.$packageName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AppInstallManager$isMbTriggerApp$2(this.$applicationContext, this.$packageName, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Boolean> continuation) {
        return ((AppInstallManager$isMbTriggerApp$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            a aVarW0 = MbAdDatabase.INSTANCE.b(this.$applicationContext).w0();
            String str = this.$packageName;
            this.label = 1;
            obj = aVarW0.b(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Boxing.a(((AppInstalledBean) obj) != null);
    }
}
