package com.google.android.libraries.places.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
final class zzbix implements zzbql {
    zzbix() {
    }

    @Override // com.google.android.libraries.places.internal.zzbql
    public final /* bridge */ /* synthetic */ Object zza() {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, zzbjd.zzg("grpc-timer-%d", true));
        try {
            scheduledExecutorServiceNewScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(scheduledExecutorServiceNewScheduledThreadPool, Boolean.TRUE);
        } catch (NoSuchMethodException unused) {
        } catch (RuntimeException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new RuntimeException(e12);
        }
        return Executors.unconfigurableScheduledExecutorService(scheduledExecutorServiceNewScheduledThreadPool);
    }

    @Override // com.google.android.libraries.places.internal.zzbql
    public final /* synthetic */ void zzb(Object obj) {
        ((ScheduledExecutorService) obj).shutdown();
    }
}
