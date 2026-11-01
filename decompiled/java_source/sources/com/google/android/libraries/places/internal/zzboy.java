package com.google.android.libraries.places.internal;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
final class zzboy {
    final Object zza;
    Future zzb;
    boolean zzc;

    zzboy(Object obj) {
        this.zza = obj;
    }

    final Future zza() {
        this.zzc = true;
        return this.zzb;
    }

    final void zzb(Future future) {
        boolean z10;
        synchronized (this.zza) {
            try {
                z10 = this.zzc;
                if (!z10) {
                    this.zzb = future;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            future.cancel(false);
        }
    }
}
