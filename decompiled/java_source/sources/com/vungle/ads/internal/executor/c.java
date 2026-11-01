package com.vungle.ads.internal.executor;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements ThreadFactory {
    private final AtomicInteger atomicInteger;
    private final String name;
    private final ThreadFactory threadFactory;

    public c(String name) {
        Intrinsics.h(name, "name");
        this.name = name;
        this.threadFactory = Executors.defaultThreadFactory();
        this.atomicInteger = new AtomicInteger(0);
    }

    public final String getName() {
        return this.name;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable r11) {
        Intrinsics.h(r11, "r");
        Thread t11 = this.threadFactory.newThread(r11);
        t11.setName(this.name + "-th-" + this.atomicInteger.incrementAndGet());
        Intrinsics.g(t11, "t");
        return t11;
    }
}
