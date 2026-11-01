package com.cloud.tmc.miniapp.offlineapps.scan;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0o implements ThreadFactory {
    public AtomicLong OooO00o = new AtomicLong(0);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "Tmc#ScanThreadFactory" + this.OooO00o.addAndGet(1L));
    }
}
