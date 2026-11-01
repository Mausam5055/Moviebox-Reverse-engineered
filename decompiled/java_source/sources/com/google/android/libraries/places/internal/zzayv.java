package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzayv {
    private zzayj zza = zzayj.zza;
    private int zzb;
    private boolean zzc;

    zzayv() {
    }

    public final zzayv zza(zzayj zzayjVar) {
        zzmt.zzc(zzayjVar, "callOptions cannot be null");
        this.zza = zzayjVar;
        return this;
    }

    public final zzayv zzb(boolean z10) {
        this.zzc = z10;
        return this;
    }

    public final zzayv zzc(int i11) {
        this.zzb = i11;
        return this;
    }

    public final zzayw zzd() {
        return new zzayw(this.zza, this.zzb, this.zzc);
    }
}
