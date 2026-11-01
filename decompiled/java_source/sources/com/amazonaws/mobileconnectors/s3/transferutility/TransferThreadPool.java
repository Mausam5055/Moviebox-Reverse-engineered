package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
abstract class TransferThreadPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Log f18522a = LogFactory.b(TransferService.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ExecutorService f18523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ExecutorService f18524c;

    private static ExecutorService a(int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i11, i11, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static synchronized void b(int i11) {
        try {
            f18522a.a("Initializing the thread pool of size: " + i11);
            int iMax = Math.max((int) Math.ceil(((double) i11) / 2.0d), 1);
            if (f18523b == null) {
                f18523b = a(iMax);
            }
            if (f18524c == null) {
                f18524c = a(iMax);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static Future c(Callable callable) {
        b(TransferUtilityOptions.getDefaultThreadPoolSize());
        return callable instanceof UploadPartTask ? f18524c.submit(callable) : f18523b.submit(callable);
    }
}
