package com.cloud.tmc.miniapp.offlineapps.scan;

import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO implements RejectedExecutionHandler {
    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        OooO0O0 oooO0O0 = OooO0O0.OooO00o;
        TmcLogger.d("OooO0O0", "rejectedExecution");
    }
}
