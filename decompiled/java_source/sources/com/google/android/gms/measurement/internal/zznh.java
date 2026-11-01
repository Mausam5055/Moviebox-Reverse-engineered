package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
final class zznh {
    protected long zza;
    final /* synthetic */ zznb zzb;
    private long zzc;
    private final zzav zzd;

    public zznh(zznb zznbVar) {
        this.zzb = zznbVar;
        this.zzd = new zznk(this, zznbVar.zzu);
        long jElapsedRealtime = zznbVar.zzb().elapsedRealtime();
        this.zzc = jElapsedRealtime;
        this.zza = jElapsedRealtime;
    }

    static /* synthetic */ void zza(zznh zznhVar) {
        zznhVar.zzb.zzt();
        zznhVar.zza(false, false, zznhVar.zzb.zzb().elapsedRealtime());
        zznhVar.zzb.zzc().zza(zznhVar.zzb.zzb().elapsedRealtime());
    }

    final long zza(long j11) {
        long j12 = j11 - this.zza;
        this.zza = j11;
        return j12;
    }

    final void zza() {
        this.zzd.zza();
        if (this.zzb.zze().zza(zzbh.zzdb)) {
            this.zzc = this.zzb.zzb().elapsedRealtime();
        } else {
            this.zzc = 0L;
        }
        this.zza = this.zzc;
    }

    public final boolean zza(boolean z10, boolean z11, long j11) {
        this.zzb.zzt();
        this.zzb.zzu();
        if (this.zzb.zzu.zzac()) {
            this.zzb.zzk().zzk.zza(this.zzb.zzb().currentTimeMillis());
        }
        long jZza = j11 - this.zzc;
        if (!z10 && jZza < 1000) {
            this.zzb.zzj().zzp().zza("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(jZza));
            return false;
        }
        if (!z11) {
            jZza = zza(j11);
        }
        this.zzb.zzj().zzp().zza("Recording user engagement, ms", Long.valueOf(jZza));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", jZza);
        zzos.zza(this.zzb.zzn().zza(!this.zzb.zze().zzw()), bundle, true);
        if (!z11) {
            this.zzb.zzm().zzc("auto", "_e", bundle);
        }
        this.zzc = j11;
        this.zzd.zza();
        this.zzd.zza(zzbh.zzbc.zza(null).longValue());
        return true;
    }

    final void zzb(long j11) {
        this.zzd.zza();
    }

    final void zzc(long j11) {
        this.zzb.zzt();
        this.zzd.zza();
        this.zzc = j11;
        this.zza = j11;
    }
}
