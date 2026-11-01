package com.cloud.config.utils;

import android.os.Handler;
import android.os.Looper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\r\u001a\u0006\u0010\u001e\u001a\u00020\u0005\u001a\u0006\u0010\u001f\u001a\u00020\u0005\u001a\u0006\u0010 \u001a\u00020\u0005\u001a\u0006\u0010!\u001a\u00020\u0005\u001a\u0006\u0010\"\u001a\u00020\u0017\u001a\u0006\u0010#\u001a\u00020\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\"\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007\"\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\"\u001b\u0010\u000b\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\t\u001a\u0004\b\f\u0010\u0007\"\u001b\u0010\u000e\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u000f\u0010\u0007\"\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\"\u001b\u0010\u0012\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\t\u001a\u0004\b\u0013\u0010\u0007\"\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\"\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\t\u001a\u0004\b\u0018\u0010\u0019\"\u001b\u0010\u001b\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\t\u001a\u0004\b\u001c\u0010\u0007¨\u0006$"}, d2 = {"CPU_CORE", "", "computationA", "Ljava/util/concurrent/atomic/AtomicInteger;", "computationE", "Ljava/util/concurrent/ExecutorService;", "getComputationE", "()Ljava/util/concurrent/ExecutorService;", "computationE$delegate", "Lkotlin/Lazy;", "ioA", "ioE", "getIoE", "ioE$delegate", "mainE", "getMainE", "mainE$delegate", "newA", "newE", "getNewE", "newE$delegate", "scheduledA", "scheduledE", "Ljava/util/concurrent/ScheduledExecutorService;", "getScheduledE", "()Ljava/util/concurrent/ScheduledExecutorService;", "scheduledE$delegate", "singleE", "getSingleE", "singleE$delegate", "computation", "io", "main", "new", "scheduled", "single", "config_release"}, k = 2, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class ExecutorUtils {
    private static final int CPU_CORE = Runtime.getRuntime().availableProcessors();
    private static AtomicInteger ioA = new AtomicInteger();
    private static final Lazy ioE$delegate = LazyKt.b(ExecutorUtils$ioE$2.INSTANCE);
    private static AtomicInteger computationA = new AtomicInteger();
    private static final Lazy computationE$delegate = LazyKt.b(ExecutorUtils$computationE$2.INSTANCE);
    private static AtomicInteger newA = new AtomicInteger();
    private static final Lazy newE$delegate = LazyKt.b(ExecutorUtils$newE$2.INSTANCE);
    private static final Lazy singleE$delegate = LazyKt.b(ExecutorUtils$singleE$2.INSTANCE);
    private static AtomicInteger scheduledA = new AtomicInteger();
    private static final Lazy scheduledE$delegate = LazyKt.b(ExecutorUtils$scheduledE$2.INSTANCE);
    private static final Lazy mainE$delegate = LazyKt.b(new Function0<ExecutorUtils$mainE$2.AnonymousClass1>() { // from class: com.cloud.config.utils.ExecutorUtils$mainE$2
        /* JADX WARN: Type inference failed for: r0v0, types: [com.cloud.config.utils.ExecutorUtils$mainE$2$1] */
        @Override // kotlin.jvm.functions.Function0
        public final AnonymousClass1 invoke() {
            return new AbstractExecutorService() { // from class: com.cloud.config.utils.ExecutorUtils$mainE$2.1
                private final Handler handler = new Handler(Looper.getMainLooper());

                @Override // java.util.concurrent.ExecutorService
                public boolean awaitTermination(long timeout, TimeUnit unit) {
                    Intrinsics.h(unit, "unit");
                    return false;
                }

                @Override // java.util.concurrent.Executor
                public void execute(Runnable command) {
                    Intrinsics.h(command, "command");
                    this.handler.post(command);
                }

                public final Handler getHandler() {
                    return this.handler;
                }

                @Override // java.util.concurrent.ExecutorService
                public boolean isShutdown() {
                    return false;
                }

                @Override // java.util.concurrent.ExecutorService
                public boolean isTerminated() {
                    return false;
                }

                @Override // java.util.concurrent.ExecutorService
                public Void shutdown() throws UnsupportedOperationException {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.concurrent.ExecutorService
                public /* bridge */ /* synthetic */ void shutdown() {
                    shutdown();
                    throw new KotlinNothingValueException();
                }

                @Override // java.util.concurrent.ExecutorService
                public List<Runnable> shutdownNow() throws UnsupportedOperationException {
                    throw new UnsupportedOperationException();
                }
            };
        }
    });

    public static final ExecutorService computation() {
        return getComputationE();
    }

    private static final ExecutorService getComputationE() {
        return (ExecutorService) computationE$delegate.getValue();
    }

    private static final ExecutorService getIoE() {
        return (ExecutorService) ioE$delegate.getValue();
    }

    private static final ExecutorService getMainE() {
        return (ExecutorService) mainE$delegate.getValue();
    }

    private static final ExecutorService getNewE() {
        return (ExecutorService) newE$delegate.getValue();
    }

    private static final ScheduledExecutorService getScheduledE() {
        return (ScheduledExecutorService) scheduledE$delegate.getValue();
    }

    private static final ExecutorService getSingleE() {
        return (ExecutorService) singleE$delegate.getValue();
    }

    public static final ExecutorService io() {
        return getIoE();
    }

    public static final ExecutorService main() {
        return getMainE();
    }

    /* JADX INFO: renamed from: new, reason: not valid java name */
    public static final ExecutorService m210new() {
        return getNewE();
    }

    public static final ScheduledExecutorService scheduled() {
        return getScheduledE();
    }

    public static final ExecutorService single() {
        return getSingleE();
    }
}
