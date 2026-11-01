package com.vungle.ads.internal.executor;

/* JADX INFO: loaded from: classes7.dex */
public interface a {
    VungleThreadPoolExecutor getApiExecutor();

    VungleThreadPoolExecutor getBackgroundExecutor();

    VungleThreadPoolExecutor getDownloaderExecutor();

    VungleThreadPoolExecutor getIoExecutor();

    VungleThreadPoolExecutor getJobExecutor();

    VungleThreadPoolExecutor getLoggerExecutor();

    VungleThreadPoolExecutor getOffloadExecutor();

    VungleThreadPoolExecutor getUaExecutor();
}
