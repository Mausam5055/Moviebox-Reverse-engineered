package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfz<V> {
    private static final Object zza = new Object();
    private final String zzb;
    private final zzfx<V> zzc;
    private final V zzd;
    private final Object zze;
    private volatile V zzf;
    private volatile V zzg;

    private zzfz(String str, V v11, V v12, zzfx<V> zzfxVar) {
        this.zze = new Object();
        this.zzf = null;
        this.zzg = null;
        this.zzb = str;
        this.zzd = v11;
        this.zzc = zzfxVar;
    }

    public final V zza(V v11) {
        synchronized (this.zze) {
        }
        if (v11 != null) {
            return v11;
        }
        if (zzga.zza == null) {
            return this.zzd;
        }
        synchronized (zza) {
            try {
                if (zzab.zza()) {
                    return this.zzg == null ? this.zzd : this.zzg;
                }
                try {
                    for (zzfz zzfzVar : zzbh.zzdm) {
                        if (zzab.zza()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        V vZza = null;
                        try {
                            zzfx<V> zzfxVar = zzfzVar.zzc;
                            if (zzfxVar != null) {
                                vZza = zzfxVar.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (zza) {
                            zzfzVar.zzg = vZza;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                zzfx<V> zzfxVar2 = this.zzc;
                if (zzfxVar2 == null) {
                    return this.zzd;
                }
                try {
                    return zzfxVar2.zza();
                } catch (IllegalStateException unused3) {
                    return this.zzd;
                } catch (SecurityException unused4) {
                    return this.zzd;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final String zza() {
        return this.zzb;
    }
}
