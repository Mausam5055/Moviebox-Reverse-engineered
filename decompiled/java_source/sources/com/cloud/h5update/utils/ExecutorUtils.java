package com.cloud.h5update.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ExecutorUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f21280a = Runtime.getRuntime().availableProcessors();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AtomicInteger f21281b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f21282c = LazyKt.b(ExecutorUtils$ioE$2.INSTANCE);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicInteger f21283d = new AtomicInteger();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f21284e = LazyKt.b(ExecutorUtils$computationE$2.INSTANCE);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicInteger f21285f = new AtomicInteger();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Lazy f21286g = LazyKt.b(ExecutorUtils$newE$2.INSTANCE);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Lazy f21287h = LazyKt.b(ExecutorUtils$singleE$2.INSTANCE);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static AtomicInteger f21288i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Lazy f21289j = LazyKt.b(ExecutorUtils$scheduledE$2.INSTANCE);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Lazy f21290k = LazyKt.b(new Function0<ExecutorUtils$mainE$2.a>() { // from class: com.cloud.h5update.utils.ExecutorUtils$mainE$2

        public static final class a extends AbstractExecutorService {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Handler f21291a = new Handler(Looper.getMainLooper());

            a() {
            }

            @Override // java.util.concurrent.ExecutorService
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void shutdown() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.concurrent.ExecutorService
            public boolean awaitTermination(long j11, TimeUnit unit) {
                Intrinsics.h(unit, "unit");
                return false;
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable command) {
                Intrinsics.h(command, "command");
                this.f21291a.post(command);
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
            public List shutdownNow() {
                throw new UnsupportedOperationException();
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public final a invoke() {
            return new a();
        }
    });

    private static final ExecutorService f() {
        return (ExecutorService) f21282c.getValue();
    }

    public static final ExecutorService g() {
        return f();
    }
}
