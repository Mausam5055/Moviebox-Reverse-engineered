package com.google.firebase.analytics;

import com.google.android.gms.internal.measurement.zzdg;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class a extends ThreadPoolExecutor {
    a(FirebaseAnalytics firebaseAnalytics, int i11, int i12, long j11, TimeUnit timeUnit, BlockingQueue blockingQueue) {
        super(0, 1, 30L, timeUnit, blockingQueue);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        super.execute(zzdg.zza().zza(runnable));
    }
}
