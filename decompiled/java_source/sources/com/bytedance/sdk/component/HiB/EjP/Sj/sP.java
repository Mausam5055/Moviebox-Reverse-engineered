package com.bytedance.sdk.component.HiB.EjP.Sj;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static final TimeUnit Sj = TimeUnit.SECONDS;

    public static ExecutorService Sj() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 2, 30L, Sj, new LinkedBlockingQueue(), new Sj("default"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
