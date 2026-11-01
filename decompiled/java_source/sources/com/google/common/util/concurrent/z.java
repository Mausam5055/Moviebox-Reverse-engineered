package com.google.common.util.concurrent;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class z {
    public static Object a(Future future) {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static Object b(Future future, long j11, TimeUnit timeUnit) {
        Object obj;
        boolean z10 = false;
        try {
            long nanos = timeUnit.toNanos(j11);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    obj = future.get(nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z10 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
            return obj;
        } catch (Throwable th2) {
            if (z10) {
                Thread.currentThread().interrupt();
            }
            throw th2;
        }
    }
}
