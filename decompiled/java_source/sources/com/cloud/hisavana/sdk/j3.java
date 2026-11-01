package com.cloud.hisavana.sdk;

import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f22555a = new AtomicInteger();

    public static String a() {
        String strValueOf = String.valueOf(f22555a.incrementAndGet());
        String strValueOf2 = String.valueOf((int) (((new SecureRandom().nextDouble() * 9.0d) + 1.0d) * 100000.0d));
        return strValueOf + String.valueOf(System.currentTimeMillis()) + strValueOf2;
    }
}
