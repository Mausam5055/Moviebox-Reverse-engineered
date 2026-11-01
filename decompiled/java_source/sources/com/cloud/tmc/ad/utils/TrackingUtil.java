package com.cloud.tmc.ad.utils;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class TrackingUtil {
    private static final AtomicInteger atomicInteger = new AtomicInteger();

    public static String getTriggerId() {
        String strValueOf = String.valueOf(atomicInteger.incrementAndGet());
        String strValueOf2 = String.valueOf((int) (((Math.random() * 9.0d) + 1.0d) * 100000.0d));
        return strValueOf + String.valueOf(System.currentTimeMillis()) + strValueOf2;
    }
}
