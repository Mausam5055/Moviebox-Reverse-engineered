package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzbb {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final Long zzh;
    final Long zzi;
    final Long zzj;
    final Boolean zzk;

    zzbb(String str, String str2, long j11, long j12, long j13, long j14, long j15, Long l11, Long l12, Long l13, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j11 >= 0);
        Preconditions.checkArgument(j12 >= 0);
        Preconditions.checkArgument(j13 >= 0);
        Preconditions.checkArgument(j15 >= 0);
        this.zza = str;
        this.zzb = str2;
        this.zzc = j11;
        this.zzd = j12;
        this.zze = j13;
        this.zzf = j14;
        this.zzg = j15;
        this.zzh = l11;
        this.zzi = l12;
        this.zzj = l13;
        this.zzk = bool;
    }

    zzbb(String str, String str2, long j11, long j12, long j13, long j14, Long l11, Long l12, Long l13, Boolean bool) {
        this(str, str2, 0L, 0L, 0L, j13, 0L, null, null, null, null);
    }

    final zzbb zza(long j11) {
        return new zzbb(this.zza, this.zzb, this.zzc, this.zzd, this.zze, j11, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk);
    }

    final zzbb zza(long j11, long j12) {
        return new zzbb(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, j11, Long.valueOf(j12), this.zzi, this.zzj, this.zzk);
    }

    final zzbb zza(Long l11, Long l12, Boolean bool) {
        return new zzbb(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, l11, l12, (bool == null || bool.booleanValue()) ? bool : null);
    }
}
