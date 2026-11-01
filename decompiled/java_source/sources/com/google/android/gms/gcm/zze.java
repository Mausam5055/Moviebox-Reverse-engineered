package com.google.android.gms.gcm;

import androidx.annotation.NonNull;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
final class zze implements ThreadFactory {
    private final AtomicInteger zzy = new AtomicInteger(1);

    zze(GcmTaskService gcmTaskService) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(@NonNull Runnable runnable) {
        int andIncrement = this.zzy.getAndIncrement();
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("gcm-task#");
        sb2.append(andIncrement);
        Thread thread = new Thread(runnable, sb2.toString());
        thread.setPriority(4);
        return thread;
    }
}
