package com.transsnet.downloader.core.thread;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f58633a = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f58634b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsnet.downloader.core.thread.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadExecutor.b();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f58635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f58636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f58637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final BlockingQueue f58638f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ThreadFactory f58639g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static ThreadPoolExecutor f58640h;

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/transsnet/downloader/core/thread/DownloadExecutor$BackgroundThread;", "Ljava/lang/Thread;", "runnable", "Ljava/lang/Runnable;", "name", "", "<init>", "(Ljava/lang/Runnable;Ljava/lang/String;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class BackgroundThread extends Thread {
        public BackgroundThread(Runnable runnable, String str) {
            super(runnable, str);
            setPriority(5);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f58641a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            return new BackgroundThread(runnable, "or_download_" + this.f58641a.getAndIncrement());
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return DownloadExecutor.f58636d;
        }

        public final DownloadExecutor b() {
            return (DownloadExecutor) DownloadExecutor.f58634b.getValue();
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f58635c = iAvailableProcessors;
        f58636d = RangesKt.f(iAvailableProcessors, 8);
        f58637e = RangesKt.f(iAvailableProcessors, 8);
        f58638f = new LinkedBlockingQueue(64);
        f58639g = new a();
    }

    private DownloadExecutor() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f58636d, f58637e, 20L, TimeUnit.SECONDS, f58638f, f58639g, new ThreadPoolExecutor.CallerRunsPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f58640h = threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadExecutor b() {
        return new DownloadExecutor();
    }

    public final void e(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = f58640h;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }
}
