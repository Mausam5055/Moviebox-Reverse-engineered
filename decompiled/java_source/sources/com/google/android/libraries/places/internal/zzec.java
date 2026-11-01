package com.google.android.libraries.places.internal;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
final class zzec implements zzajv {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzaka zzb;
    final /* synthetic */ CancellationTokenSource zzc;

    zzec(TaskCompletionSource taskCompletionSource, zzaka zzakaVar, CancellationTokenSource cancellationTokenSource) {
        this.zza = taskCompletionSource;
        this.zzb = zzakaVar;
        this.zzc = cancellationTokenSource;
    }

    @Override // com.google.android.libraries.places.internal.zzajv
    public final void zza(Throwable th2) {
        if (this.zzb.isCancelled()) {
            this.zzc.cancel();
        } else if (th2 instanceof Exception) {
            this.zza.setException((Exception) th2);
        } else {
            this.zza.setException(new ExecutionException(th2));
        }
    }

    @Override // com.google.android.libraries.places.internal.zzajv
    public final void zzb(Object obj) {
        this.zza.setResult(obj);
    }
}
