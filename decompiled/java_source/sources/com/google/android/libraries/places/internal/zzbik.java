package com.google.android.libraries.places.internal;

import java.util.Random;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbik {
    private final Random zza = new Random();
    private final long zzb;
    private final long zzc;
    private long zzd;

    public zzbik() {
        long nanos = TimeUnit.SECONDS.toNanos(1L);
        this.zzb = nanos;
        this.zzc = TimeUnit.MINUTES.toNanos(2L);
        this.zzd = nanos;
    }

    public final long zza() {
        long j11 = this.zzd;
        double d11 = j11;
        this.zzd = Math.min((long) (1.6d * d11), this.zzc);
        double d12 = 0.2d * d11;
        double d13 = d11 * (-0.2d);
        zzmt.zze(d12 >= d13);
        return j11 + ((long) ((this.zza.nextDouble() * (d12 - d13)) + d13));
    }
}
