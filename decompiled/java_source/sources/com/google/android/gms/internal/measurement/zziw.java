package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zziw {
    private static volatile int zzd = 100;
    int zza;
    int zzb;
    zzjb zzc;

    private zziw() {
        this.zzb = zzd;
    }

    public static int zza(int i11) {
        return (-(i11 & 1)) ^ (i11 >>> 1);
    }

    public static long zza(long j11) {
        return (-(j11 & 1)) ^ (j11 >>> 1);
    }

    static zziw zza(byte[] bArr, int i11, int i12, boolean z10) {
        zziz zzizVar = new zziz(bArr, i12);
        try {
            zzizVar.zzb(i12);
            return zzizVar;
        } catch (zzkb e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    public abstract double zza() throws IOException;

    public abstract float zzb() throws IOException;

    public abstract int zzb(int i11) throws zzkb;

    public abstract int zzc();

    public abstract void zzc(int i11) throws zzkb;

    public abstract int zzd() throws IOException;

    public abstract void zzd(int i11);

    public abstract int zze() throws IOException;

    public abstract boolean zze(int i11) throws IOException;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract int zzi() throws IOException;

    public abstract int zzj() throws IOException;

    public abstract long zzk() throws IOException;

    public abstract long zzl() throws IOException;

    abstract long zzm() throws IOException;

    public abstract long zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzp() throws IOException;

    public abstract zzik zzq() throws IOException;

    public abstract String zzr() throws IOException;

    public abstract String zzs() throws IOException;

    public abstract boolean zzt() throws IOException;

    public abstract boolean zzu() throws IOException;
}
