package io.reactivex.rxjava3.internal.util;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {
    public static void a(u10.c cVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            atomicThrowable.tryTerminateConsumer(cVar);
        }
    }

    public static void b(u10.c cVar, Throwable th2, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicThrowable.tryAddThrowableOrReport(th2) && atomicInteger.getAndIncrement() == 0) {
            atomicThrowable.tryTerminateConsumer(cVar);
        }
    }

    public static boolean c(u10.c cVar, Object obj, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            cVar.onNext(obj);
            if (atomicInteger.decrementAndGet() == 0) {
                return true;
            }
            atomicThrowable.tryTerminateConsumer(cVar);
        }
        return false;
    }
}
