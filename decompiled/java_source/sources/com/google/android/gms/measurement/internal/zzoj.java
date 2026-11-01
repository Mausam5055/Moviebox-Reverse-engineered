package com.google.android.gms.measurement.internal;

import androidx.annotation.Nullable;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoj {
    private long zza;
    private com.google.android.gms.internal.measurement.zzfy.zzj zzb;
    private String zzc;
    private Map<String, String> zzd;
    private zznt zze;

    private zzoj(long j11, com.google.android.gms.internal.measurement.zzfy.zzj zzjVar, String str, Map<String, String> map, zznt zzntVar) {
        this.zza = j11;
        this.zzb = zzjVar;
        this.zzc = str;
        this.zzd = map;
        this.zze = zzntVar;
    }

    public final long zza() {
        return this.zza;
    }

    public final zznw zzb() {
        return new zznw(this.zzc, this.zzd, this.zze);
    }

    @Nullable
    public final com.google.android.gms.internal.measurement.zzfy.zzj zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zzc;
    }

    public final Map<String, String> zze() {
        return this.zzd;
    }
}
