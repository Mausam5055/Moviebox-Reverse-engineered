package com.google.android.play.core.appupdate.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
final class zzq extends zzn {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzn zzb;
    final /* synthetic */ h zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzq(h hVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zzn zznVar) {
        super(taskCompletionSource);
        this.zza = taskCompletionSource2;
        this.zzb = zznVar;
    }

    @Override // com.google.android.play.core.appupdate.internal.zzn
    public final void zza() {
        synchronized (h.e(null)) {
            try {
                h.k(null, this.zza);
                if (h.g(null).getAndIncrement() > 0) {
                    h.d(null).a("Already connected to the service.", new Object[0]);
                }
                h.m(null, this.zzb);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
