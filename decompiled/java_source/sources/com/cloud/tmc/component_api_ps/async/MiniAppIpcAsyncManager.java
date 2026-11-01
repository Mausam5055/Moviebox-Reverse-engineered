package com.cloud.tmc.component_api_ps.async;

import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.android.miniapp.component.api.protocol.async.MiniAppProtocolModuleThreadFactory;
import com.cloud.tmc.component_api_ps.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;", "", "()V", "mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "mainHandler$delegate", "Lkotlin/Lazy;", "threadPoolExecutor", "Ljava/util/concurrent/ThreadPoolExecutor;", "getThreadPoolExecutor", "()Ljava/util/concurrent/ThreadPoolExecutor;", "threadPoolExecutor$delegate", "currentThreadIsMainThread", "", "runOnBackground", "", "runnable", "Ljava/lang/Runnable;", "runOnMain", "delay", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppIpcAsyncManager {
    public static final MiniAppIpcAsyncManager INSTANCE = new MiniAppIpcAsyncManager();

    /* JADX INFO: renamed from: threadPoolExecutor$delegate, reason: from kotlin metadata */
    private static final Lazy threadPoolExecutor = LazyKt.b(new Function0<ThreadPoolExecutor>() { // from class: com.cloud.tmc.component_api_ps.async.MiniAppIpcAsyncManager$threadPoolExecutor$2
        @Override // kotlin.jvm.functions.Function0
        public final ThreadPoolExecutor invoke() {
            return new ThreadPoolExecutor(3, 5, 120L, MiniAppIpcAsyncConfig.INSTANCE.getThreadPoolParamTimeUnit(), new LinkedBlockingQueue(200), new MiniAppProtocolModuleThreadFactory(), new MiniAppProtocolModuleThreadPoolPolicy());
        }
    });

    /* JADX INFO: renamed from: mainHandler$delegate, reason: from kotlin metadata */
    private static final Lazy mainHandler = LazyKt.b(new Function0<Handler>() { // from class: com.cloud.tmc.component_api_ps.async.MiniAppIpcAsyncManager$mainHandler$2
        @Override // kotlin.jvm.functions.Function0
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    });

    private MiniAppIpcAsyncManager() {
    }

    private final Handler getMainHandler() {
        return (Handler) mainHandler.getValue();
    }

    private final ThreadPoolExecutor getThreadPoolExecutor() {
        return (ThreadPoolExecutor) threadPoolExecutor.getValue();
    }

    public final boolean currentThreadIsMainThread() {
        return Intrinsics.c(Looper.myLooper(), Looper.getMainLooper());
    }

    public final void runOnBackground(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        if (currentThreadIsMainThread()) {
            getThreadPoolExecutor().execute(runnable);
        } else {
            runnable.run();
        }
    }

    public final void runOnMain(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        if (currentThreadIsMainThread()) {
            runnable.run();
        } else {
            getMainHandler().post(runnable);
        }
    }

    public final void runOnMain(Runnable runnable, long delay) {
        Intrinsics.h(runnable, "runnable");
        getMainHandler().postDelayed(runnable, delay);
    }
}
