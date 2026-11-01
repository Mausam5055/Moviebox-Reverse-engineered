package com.google.common.util.concurrent;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
class MoreExecutors$Application$1 implements Runnable {
    final /* synthetic */ MoreExecutors.b this$0;
    final /* synthetic */ ExecutorService val$service;
    final /* synthetic */ long val$terminationTimeout;
    final /* synthetic */ TimeUnit val$timeUnit;

    MoreExecutors$Application$1(MoreExecutors.b bVar, ExecutorService executorService, long j11, TimeUnit timeUnit) {
        this.val$service = executorService;
        this.val$terminationTimeout = j11;
        this.val$timeUnit = timeUnit;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.val$service.shutdown();
            this.val$service.awaitTermination(this.val$terminationTimeout, this.val$timeUnit);
        } catch (InterruptedException unused) {
        }
    }
}
