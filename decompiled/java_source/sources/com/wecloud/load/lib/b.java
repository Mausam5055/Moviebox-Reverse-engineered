package com.wecloud.load.lib;

import android.content.Context;
import android.util.Log;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.WorkManager;
import androidx.work.b0;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f60839a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f60840b = 15;

    private b() {
    }

    public final void a(Context context) {
        Intrinsics.h(context, "context");
        try {
            long j11 = f60840b;
            WorkManager.f(context.getApplicationContext()).e("exit_check_work", ExistingPeriodicWorkPolicy.KEEP, (b0) new b0.a(ExitCheckWorker.class, j11, TimeUnit.MINUTES).b());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("已注册退出监控周期任务，每 ");
            sb2.append(j11);
            sb2.append(" 分钟检查一次");
        } catch (Exception e11) {
            Log.e("ExitCheckScheduler", "注册退出监控任务失败: " + e11.getMessage(), e11);
        }
    }
}
