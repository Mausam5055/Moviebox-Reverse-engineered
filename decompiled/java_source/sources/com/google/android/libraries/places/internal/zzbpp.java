package com.google.android.libraries.places.internal;

import java.util.Arrays;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
final class zzbpp {
    final int zza;
    final long zzb;
    final long zzc;
    final double zzd;
    final Long zze;
    final Set zzf;

    zzbpp(int i11, long j11, long j12, double d11, Long l11, Set set) {
        this.zza = i11;
        this.zzb = j11;
        this.zzc = j12;
        this.zzd = d11;
        this.zze = l11;
        this.zzf = zzob.zzj(set);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbpp)) {
            return false;
        }
        zzbpp zzbppVar = (zzbpp) obj;
        return this.zza == zzbppVar.zza && this.zzb == zzbppVar.zzb && this.zzc == zzbppVar.zzc && Double.compare(this.zzd, zzbppVar.zzd) == 0 && zzmo.zza(this.zze, zzbppVar.zze) && zzmo.zza(this.zzf, zzbppVar.zzf);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zza), Long.valueOf(this.zzb), Long.valueOf(this.zzc), Double.valueOf(this.zzd), this.zze, this.zzf});
    }

    public final String toString() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzb("maxAttempts", this.zza);
        zzmmVarZzb.zzc("initialBackoffNanos", this.zzb);
        zzmmVarZzb.zzc("maxBackoffNanos", this.zzc);
        zzmmVarZzb.zza("backoffMultiplier", this.zzd);
        zzmmVarZzb.zzd("perAttemptRecvTimeoutNanos", this.zze);
        zzmmVarZzb.zzd("retryableStatusCodes", this.zzf);
        return zzmmVarZzb.toString();
    }
}
