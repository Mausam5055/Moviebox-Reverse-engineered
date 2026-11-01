package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgs {

    @NonNull
    public String zza;

    @NonNull
    public String zzb;

    @NonNull
    public Bundle zzc;
    private long zzd;

    public zzgs(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle, long j11) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle == null ? new Bundle() : bundle;
        this.zzd = j11;
    }

    public static zzgs zza(zzbf zzbfVar) {
        return new zzgs(zzbfVar.zza, zzbfVar.zzc, zzbfVar.zzb.zzb(), zzbfVar.zzd);
    }

    public final String toString() {
        return "origin=" + this.zzb + ",name=" + this.zza + ",params=" + String.valueOf(this.zzc);
    }

    public final zzbf zza() {
        return new zzbf(this.zza, new zzbe(new Bundle(this.zzc)), this.zzb, this.zzd);
    }
}
