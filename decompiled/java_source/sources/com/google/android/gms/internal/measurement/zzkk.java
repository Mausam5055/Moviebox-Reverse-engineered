package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public class zzkk {
    private volatile zzlc zza;
    private volatile zzik zzb;

    private final zzlc zzb(zzlc zzlcVar) {
        if (this.zza == null) {
            synchronized (this) {
                if (this.zza == null) {
                    try {
                        this.zza = zzlcVar;
                        this.zzb = zzik.zza;
                    } catch (zzkb unused) {
                        this.zza = zzlcVar;
                        this.zzb = zzik.zza;
                    }
                }
            }
        }
        return this.zza;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkk)) {
            return false;
        }
        zzkk zzkkVar = (zzkk) obj;
        zzlc zzlcVar = this.zza;
        zzlc zzlcVar2 = zzkkVar.zza;
        if (zzlcVar == null && zzlcVar2 == null) {
            return zzb().equals(zzkkVar.zzb());
        }
        if (zzlcVar == null || zzlcVar2 == null) {
            return zzlcVar != null ? zzlcVar.equals(zzkkVar.zzb(zzlcVar.zzck())) : zzb(zzlcVar2.zzck()).equals(zzlcVar2);
        }
        return zzlcVar.equals(zzlcVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzb != null) {
            return this.zzb.zzb();
        }
        if (this.zza != null) {
            return this.zza.zzcb();
        }
        return 0;
    }

    public final zzlc zza(zzlc zzlcVar) {
        zzlc zzlcVar2 = this.zza;
        this.zzb = null;
        this.zza = zzlcVar;
        return zzlcVar2;
    }

    public final zzik zzb() {
        if (this.zzb != null) {
            return this.zzb;
        }
        synchronized (this) {
            try {
                if (this.zzb != null) {
                    return this.zzb;
                }
                if (this.zza == null) {
                    this.zzb = zzik.zza;
                } else {
                    this.zzb = this.zza.zzbz();
                }
                return this.zzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
