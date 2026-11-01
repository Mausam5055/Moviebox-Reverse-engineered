package com.cloud.tmc.miniapp.offlineapps.download;

import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO implements RejectedExecutionHandler {
    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        TmcLogger.d("IconDownloadManager", "rejectedExecution");
    }
}
