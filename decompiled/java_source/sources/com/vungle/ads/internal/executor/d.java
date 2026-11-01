package com.vungle.ads.internal.executor;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements com.vungle.ads.internal.executor.a {
    public static final a Companion = new a(null);
    private static final int IO_KEEP_ALIVE_TIME_SECONDS = 5;
    private static final int JOBS_KEEP_ALIVE_TIME_SECONDS = 5;
    private static final int SINGLE_CORE_POOL_SIZE = 1;
    private static final int VUNGLE_KEEP_ALIVE_TIME_SECONDS = 10;
    private VungleThreadPoolExecutor API_EXECUTOR;
    private VungleThreadPoolExecutor BACKGROUND_EXECUTOR;
    private VungleThreadPoolExecutor DOWNLOADER_EXECUTOR;
    private VungleThreadPoolExecutor IO_EXECUTOR;
    private VungleThreadPoolExecutor JOB_EXECUTOR;
    private VungleThreadPoolExecutor LOGGER_EXECUTOR;
    private final int NUMBER_OF_CORES;
    private VungleThreadPoolExecutor OFFLOAD_EXECUTOR;
    private VungleThreadPoolExecutor UA_EXECUTOR;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        this.NUMBER_OF_CORES = iAvailableProcessors;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.JOB_EXECUTOR = new VungleThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 5L, timeUnit, new LinkedBlockingQueue(), new c("vng_jr"));
        this.IO_EXECUTOR = new VungleThreadPoolExecutor(1, 1, 5L, timeUnit, new LinkedBlockingQueue(), new c("vng_io"));
        this.API_EXECUTOR = new VungleThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new c("vng_api"));
        this.LOGGER_EXECUTOR = new VungleThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new c("vng_logger"));
        this.BACKGROUND_EXECUTOR = new VungleThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new c("vng_background"));
        this.UA_EXECUTOR = new VungleThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new c("vng_ua"));
        this.DOWNLOADER_EXECUTOR = new VungleThreadPoolExecutor(4, 4, 1L, timeUnit, new PriorityBlockingQueue(), new c("vng_down"));
        this.OFFLOAD_EXECUTOR = new VungleThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new c("vng_ol"));
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getApiExecutor() {
        return this.API_EXECUTOR;
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getBackgroundExecutor() {
        return this.BACKGROUND_EXECUTOR;
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getDownloaderExecutor() {
        return this.DOWNLOADER_EXECUTOR;
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getIoExecutor() {
        return this.IO_EXECUTOR;
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getJobExecutor() {
        return this.JOB_EXECUTOR;
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getLoggerExecutor() {
        return this.LOGGER_EXECUTOR;
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getOffloadExecutor() {
        return this.OFFLOAD_EXECUTOR;
    }

    @Override // com.vungle.ads.internal.executor.a
    public VungleThreadPoolExecutor getUaExecutor() {
        return this.UA_EXECUTOR;
    }
}
