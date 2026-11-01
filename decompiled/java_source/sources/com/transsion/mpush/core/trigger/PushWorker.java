package com.transsion.mpush.core.trigger;

import android.content.Context;
import android.os.Build;
import androidx.work.CoroutineWorker;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import androidx.work.b0;
import androidx.work.s;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/transsion/mpush/core/trigger/PushWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/s$a;", "n", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "g", "a", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PushWorker extends CoroutineWorker {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.mpush.core.trigger.PushWorker$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            Intrinsics.h(context, "context");
            b0 b0Var = (b0) ((b0.a) ((b0.a) new b0.a(PushWorker.class, Random.INSTANCE.nextLong(15L, 30L), TimeUnit.MINUTES).i(new androidx.work.d.a().b(NetworkType.CONNECTED).a())).a("pull")).b();
            try {
                Result.Companion companion = Result.INSTANCE;
                if (Build.VERSION.SDK_INT >= 24) {
                    context = context.createDeviceProtectedStorageContext();
                }
                Result.m454constructorimpl(WorkManager.f(context).e("new_sdk_push_pull_worker", ExistingPeriodicWorkPolicy.KEEP, b0Var));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushWorker(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.work.CoroutineWorker
    public Object n(Continuation continuation) throws Throwable {
        PushWorker$doWork$1 pushWorker$doWork$1;
        if (continuation instanceof PushWorker$doWork$1) {
            pushWorker$doWork$1 = (PushWorker$doWork$1) continuation;
            int i11 = pushWorker$doWork$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pushWorker$doWork$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pushWorker$doWork$1 = new PushWorker$doWork$1(this, continuation);
            }
        } else {
            pushWorker$doWork$1 = new PushWorker$doWork$1(this, continuation);
        }
        Object obj = pushWorker$doWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pushWorker$doWork$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【PushWorker】 doWork -> Started", false, 4, null);
            long jNextLong = Random.INSTANCE.nextLong(0L, 60L);
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "【PushWorker】doWork -> Delaying for " + jNextLong + "s", false, 4, null);
            pushWorker$doWork$1.label = 1;
            if (u0.a(jNextLong * 1000, pushWorker$doWork$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        try {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            lg.a.C0828a.f(c0828a2, "M_PUSH_SDK", "【PushWorker】doWork -> Triggering TIMER event", false, 4, null);
            ln.a.f68978a.m(4);
            lg.a.C0828a.f(c0828a2, "M_PUSH_SDK", "【PushWorker】doWork -> Success", false, 4, null);
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【PushWorker】doWork -> Failed with error " + e11.getMessage(), false, 4, null);
            e11.printStackTrace();
        }
        s.a aVarC = s.a.c();
        Intrinsics.g(aVarC, "success(...)");
        return aVarC;
    }
}
