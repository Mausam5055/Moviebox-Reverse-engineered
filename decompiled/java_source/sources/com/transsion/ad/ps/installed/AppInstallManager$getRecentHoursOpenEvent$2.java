package com.transsion.ad.ps.installed;

import android.content.Context;
import android.os.SystemClock;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.AppInstalledBean;
import java.util.List;
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lcom/transsion/ad/db/pslink/AppInstalledBean;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.installed.AppInstallManager$getRecentHoursOpenEvent$2", f = "AppInstallManager.kt", l = {113}, m = "invokeSuspend")
final class AppInstallManager$getRecentHoursOpenEvent$2 extends SuspendLambda implements Function2<n0, Continuation<? super List<? extends AppInstalledBean>>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ long $recentHours;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppInstallManager$getRecentHoursOpenEvent$2(long j11, Context context, Continuation<? super AppInstallManager$getRecentHoursOpenEvent$2> continuation) {
        super(2, continuation);
        this.$recentHours = j11;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AppInstallManager$getRecentHoursOpenEvent$2(this.$recentHours, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super List<AppInstalledBean>> continuation) {
        return ((AppInstallManager$getRecentHoursOpenEvent$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.$recentHours;
            a aVarW0 = MbAdDatabase.INSTANCE.b(this.$context).w0();
            this.label = 1;
            obj = aVarW0.d(jElapsedRealtime, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
