package com.aliyun.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadManager {
    public static ExecutorService threadPool = Executors.newCachedThreadPool();
}
