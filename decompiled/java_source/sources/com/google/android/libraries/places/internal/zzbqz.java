package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbqz {
    private static final zzbqw zza = new zzbqw(zzbqt.zza);
    private final zzbqt zzb;
    private long zzc;
    private long zzd;
    private long zze;
    private zzbqx zzf;
    private long zzg;
    private final zzbkj zzh;
    private volatile long zzi;

    public zzbqz() {
        this.zzh = zzbkk.zza();
        this.zzb = zzbqt.zza;
    }

    /* synthetic */ zzbqz(zzbqt zzbqtVar, zzbqy zzbqyVar) {
        this.zzh = zzbkk.zza();
        this.zzb = zzbqtVar;
    }

    public static zzbqw zza() {
        return zza;
    }

    public final void zzb() {
        this.zzc++;
        this.zzb.zza();
    }

    public final void zzc() {
        this.zzh.zza(1L);
        this.zzi = this.zzb.zza();
    }

    public final void zzd(int i11) {
        if (i11 == 0) {
            return;
        }
        this.zzg += (long) i11;
        this.zzb.zza();
    }

    public final void zze(boolean z10) {
        if (z10) {
            this.zzd++;
        } else {
            this.zze++;
        }
    }

    public final void zzf(zzbqx zzbqxVar) {
        this.zzf = zzbqxVar;
    }
}
