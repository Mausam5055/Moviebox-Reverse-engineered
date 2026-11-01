package com.transsion.startup.work;

import ak.a0;
import android.content.Context;
import android.os.Build;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.WorkManager;
import androidx.work.b0;
import androidx.work.d;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import sm.f;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f54545a = new a();

    private a() {
    }

    public final void a(Context context) {
        Object objM454constructorimpl;
        String value;
        Boolean boolM1;
        Intrinsics.h(context, "context");
        ConfigBean configBeanD = f.d(f.f75407c.a(), "key_report_request_off", false, 2, null);
        if ((configBeanD == null || (value = configBeanD.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) ? false : boolM1.booleanValue()) {
            return;
        }
        if (!a0.f627a.a(context)) {
            lg.a.f68839a.x("NetworkDataSourceManager", "Skip network data source work because storage or WorkManager is unavailable", false);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (Build.VERSION.SDK_INT >= 24) {
                context = context.createDeviceProtectedStorageContext();
            }
            d dVarA = new d.a().b(NetworkType.CONNECTED).a();
            TimeUnit timeUnit = TimeUnit.HOURS;
            b0 b0Var = (b0) ((b0.a) ((b0.a) ((b0.a) new b0.a(NetworkDataSourceWorker.class, 1L, timeUnit).i(dVarA)).a("NetworkDataSourceWorker")).k(1L, timeUnit)).b();
            WorkManager.a aVar = WorkManager.f15399a;
            Intrinsics.e(context);
            objM454constructorimpl = Result.m454constructorimpl(aVar.a(context).e("NetworkDataSourceWorker", ExistingPeriodicWorkPolicy.REPLACE, b0Var));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            a0.f627a.g(thM457exceptionOrNullimpl);
            lg.a.f68839a.x("NetworkDataSourceManager", "Failed to schedule network data source work: " + thM457exceptionOrNullimpl.getMessage(), false);
        }
    }
}
