package com.transsion.mbwidget.data;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import androidx.work.s;
import com.transsion.mbwidget.SportSchedulePreviewWidgetProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/transsion/mbwidget/data/SportWidgetPeriodicWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/s$a;", "n", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "g", "a", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SportWidgetPeriodicWorker extends CoroutineWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SportWidgetPeriodicWorker(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00db  */
    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x00db, please report this as an issue */
    @Override // androidx.work.CoroutineWorker
    public Object n(Continuation continuation) throws Throwable {
        SportWidgetPeriodicWorker$doWork$1 sportWidgetPeriodicWorker$doWork$1;
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        AppWidgetManager appWidgetManager;
        SportWidgetPeriodicWorker sportWidgetPeriodicWorker;
        int[] iArr;
        s.a aVarC;
        if (continuation instanceof SportWidgetPeriodicWorker$doWork$1) {
            sportWidgetPeriodicWorker$doWork$1 = (SportWidgetPeriodicWorker$doWork$1) continuation;
            int i11 = sportWidgetPeriodicWorker$doWork$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sportWidgetPeriodicWorker$doWork$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sportWidgetPeriodicWorker$doWork$1 = new SportWidgetPeriodicWorker$doWork$1(this, continuation);
            }
        } else {
            sportWidgetPeriodicWorker$doWork$1 = new SportWidgetPeriodicWorker$doWork$1(this, continuation);
        }
        Object obj = sportWidgetPeriodicWorker$doWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = sportWidgetPeriodicWorker$doWork$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                appWidgetManager = AppWidgetManager.getInstance(a());
                int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(a(), (Class<?>) SportSchedulePreviewWidgetProvider.class));
                Intrinsics.e(appWidgetIds);
                if (appWidgetIds.length == 0) {
                    lg.a.f68839a.c("SportWidget", "SportWidgetPeriodicWorker: no sport widget instance, skip", true);
                    aVarC = s.a.c();
                } else {
                    SportWidgetDataManager sportWidgetDataManager = SportWidgetDataManager.f46246a;
                    sportWidgetPeriodicWorker$doWork$1.L$0 = this;
                    sportWidgetPeriodicWorker$doWork$1.L$1 = appWidgetManager;
                    sportWidgetPeriodicWorker$doWork$1.L$2 = appWidgetIds;
                    sportWidgetPeriodicWorker$doWork$1.label = 1;
                    if (sportWidgetDataManager.g(sportWidgetPeriodicWorker$doWork$1) == objF) {
                        return objF;
                    }
                    sportWidgetPeriodicWorker = this;
                    iArr = appWidgetIds;
                }
                objM454constructorimpl = Result.m454constructorimpl(aVarC);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl == null) {
                    return objM454constructorimpl;
                }
                lg.a.C0828a.k(lg.a.f68839a, "SportWidget", "SportWidgetPeriodicWorker error: " + thM457exceptionOrNullimpl.getMessage(), thM457exceptionOrNullimpl, false, 8, null);
                s.a aVarA = s.a.a();
                Intrinsics.g(aVarA, "failure(...)");
                return aVarA;
            }
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            iArr = (int[]) sportWidgetPeriodicWorker$doWork$1.L$2;
            appWidgetManager = (AppWidgetManager) sportWidgetPeriodicWorker$doWork$1.L$1;
            sportWidgetPeriodicWorker = (SportWidgetPeriodicWorker) sportWidgetPeriodicWorker$doWork$1.L$0;
            ResultKt.b(obj);
            Intrinsics.e(iArr);
            for (int i13 : iArr) {
                SportSchedulePreviewWidgetProvider.Companion companion2 = SportSchedulePreviewWidgetProvider.INSTANCE;
                Context contextA = sportWidgetPeriodicWorker.a();
                Intrinsics.g(contextA, "getApplicationContext(...)");
                Intrinsics.e(appWidgetManager);
                SportSchedulePreviewWidgetProvider.Companion.r(companion2, contextA, appWidgetManager, i13, false, 8, null);
            }
            lg.a.f68839a.c("SportWidget", "SportWidgetPeriodicWorker: refreshed " + iArr.length + " sport widget(s)", true);
            aVarC = s.a.c();
            objM454constructorimpl = Result.m454constructorimpl(aVarC);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return objM454constructorimpl;
        }
        lg.a.C0828a.k(lg.a.f68839a, "SportWidget", "SportWidgetPeriodicWorker error: " + thM457exceptionOrNullimpl.getMessage(), thM457exceptionOrNullimpl, false, 8, null);
        s.a aVarA2 = s.a.a();
        Intrinsics.g(aVarA2, "failure(...)");
        return aVarA2;
    }
}
