package com.google.android.gms.measurement.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzom {
    private long zza;
    private com.google.android.gms.internal.measurement.zzfy.zzj zzb;
    private String zzc;
    private Map<String, String> zzd;
    private zznt zze;

    zzom() {
    }

    public final zzoj zza() {
        return new zzoj(this.zza, this.zzb, this.zzc, this.zzd, this.zze);
    }

    public final zzom zza(long j11) {
        this.zza = j11;
        return this;
    }

    public final zzom zza(com.google.android.gms.internal.measurement.zzfy.zzj zzjVar) {
        this.zzb = zzjVar;
        return this;
    }

    public final zzom zza(zznt zzntVar) {
        this.zze = zzntVar;
        return this;
    }

    public final zzom zza(String str) {
        this.zzc = str;
        return this;
    }

    public final zzom zza(Map<String, String> map) {
        this.zzd = map;
        return this;
    }
}
