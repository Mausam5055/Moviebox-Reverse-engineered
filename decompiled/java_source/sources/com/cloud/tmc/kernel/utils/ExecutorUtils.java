package com.cloud.tmc.kernel.utils;

import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public class ExecutorUtils {
    private static final String TAG = "ExecutorUtils";
    private static Handler sMainThreadHandler = new Handler(Looper.getMainLooper());

    public static void execute(ExecutorType executorType, Runnable runnable) {
        Executor executor = ((IExecutorService) TmcProxy.get(IExecutorService.class)).getExecutor(executorType);
        if (executor != null) {
            executor.execute(runnable);
            return;
        }
        TmcLogger.e(TAG, "execute: executor is null! threadType = " + executorType);
    }

    public static ScheduledThreadPoolExecutor getScheduledExecutor() {
        return ((IExecutorService) TmcProxy.get(IExecutorService.class)).getScheduledExecutor();
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void post(Runnable runnable) {
        sMainThreadHandler.post(runnable);
    }

    public static void removeOnMain(Runnable runnable) {
        sMainThreadHandler.removeCallbacks(runnable);
    }

    public static void runNotOnMain(ExecutorType executorType, Runnable runnable) {
        if (isMainThread()) {
            execute(executorType, runnable);
        } else {
            runnable.run();
        }
    }

    public static void runOnMain(Runnable runnable) {
        if (isMainThread()) {
            runnable.run();
        } else {
            sMainThreadHandler.post(runnable);
        }
    }

    public static void runOnMain(Runnable runnable, long j11) {
        sMainThreadHandler.postDelayed(runnable, j11);
    }
}
