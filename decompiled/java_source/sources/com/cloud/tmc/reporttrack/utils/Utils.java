package com.cloud.tmc.reporttrack.utils;

import com.cloud.tmc.miniapp.utils.athena.AthenaConstants;
import com.cloud.tmc.reporttrack.thread.QueryAthenaStatusRejectHandler;
import com.cloud.tmc.reporttrack.thread.QueryAthenaStatusThreadFactory;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class Utils {
    public static AtomicBoolean currentProcessIsInitAthena = new AtomicBoolean(false);
    public static AtomicBoolean mainProcessIsInitAthena = new AtomicBoolean(false);
    public static AtomicInteger delayStatus = new AtomicInteger(-1);
    public static ThreadPoolExecutor mThreadPoolExecutor = new ThreadPoolExecutor(2, 4, 60, TimeUnit.SECONDS, new ArrayBlockingQueue(28), new QueryAthenaStatusThreadFactory(), new QueryAthenaStatusRejectHandler());

    public static void getInitAthenaStatus() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getInitAthenaStatus -> currentProcessIsInitAthena:");
            sb2.append(currentProcessIsInitAthena.get());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getInitAthenaStatus -> mainProcessIsInitAthena:");
            sb3.append(mainProcessIsInitAthena.get());
            StringBuilder sb4 = new StringBuilder();
            sb4.append("getInitAthenaStatus -> delayStatus:");
            sb4.append(delayStatus.get());
            if (!currentProcessIsInitAthena.get()) {
                AtomicBoolean atomicBoolean = AthenaConstants.currentProcessIsInitAthena;
                currentProcessIsInitAthena.set(((AtomicBoolean) AthenaConstants.class.getField("currentProcessIsInitAthena").get(null)).get());
            }
            if (!mainProcessIsInitAthena.get()) {
                AtomicBoolean atomicBoolean2 = AthenaConstants.currentProcessIsInitAthena;
                mainProcessIsInitAthena.set(((AtomicBoolean) AthenaConstants.class.getField("mainProcessIsInitAthena").get(null)).get());
            }
            if (delayStatus.get() == -1) {
                AtomicBoolean atomicBoolean3 = AthenaConstants.currentProcessIsInitAthena;
                if (((AtomicBoolean) AthenaConstants.class.getField("delay").get(null)).get()) {
                    delayStatus.set(1);
                } else {
                    delayStatus.set(0);
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
