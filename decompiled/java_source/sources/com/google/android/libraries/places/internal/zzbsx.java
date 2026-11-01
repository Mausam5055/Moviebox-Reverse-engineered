package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbsx {
    private final boolean zza;
    private String[] zzb;
    private String[] zzc;
    private boolean zzd;

    public zzbsx(zzbsz zzbszVar) {
        this.zza = zzbszVar.zzd;
        this.zzb = zzbszVar.zzg;
        this.zzc = zzbszVar.zzh;
        this.zzd = zzbszVar.zze;
    }

    public zzbsx(boolean z10) {
        this.zza = z10;
    }

    public final zzbsx zza(zzbsw... zzbswVarArr) {
        if (!this.zza) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String[] strArr = new String[zzbswVarArr.length];
        for (int i11 = 0; i11 < zzbswVarArr.length; i11++) {
            strArr[i11] = zzbswVarArr[i11].zzbb;
        }
        this.zzb = strArr;
        return this;
    }

    public final zzbsx zzb(String... strArr) throws CloneNotSupportedException {
        if (!this.zza) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        if (strArr == null) {
            this.zzb = null;
        } else {
            this.zzb = (String[]) strArr.clone();
        }
        return this;
    }

    public final zzbsx zzc(boolean z10) {
        if (!this.zza) {
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }
        this.zzd = true;
        return this;
    }

    public final zzbsx zzd(zzbtn... zzbtnVarArr) {
        if (!this.zza) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        String[] strArr = new String[zzbtnVarArr.length];
        for (int i11 = 0; i11 < zzbtnVarArr.length; i11++) {
            strArr[i11] = zzbtnVarArr[i11].zzf;
        }
        this.zzc = strArr;
        return this;
    }

    public final zzbsx zze(String... strArr) throws CloneNotSupportedException {
        if (!this.zza) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (strArr == null) {
            this.zzc = null;
        } else {
            this.zzc = (String[]) strArr.clone();
        }
        return this;
    }

    public final zzbsz zzf() {
        return new zzbsz(this);
    }
}
