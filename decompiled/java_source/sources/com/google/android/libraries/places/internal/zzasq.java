package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzasq {
    public static final /* synthetic */ int zze = 0;
    private static volatile int zzf = 100;
    int zza;
    final int zzb = zzf;
    int zzc = Integer.MAX_VALUE;
    zzasr zzd;

    /* synthetic */ zzasq(zzasp zzaspVar) {
    }

    public static int zzF(int i11) {
        return (i11 >>> 1) ^ (-(i11 & 1));
    }

    public static long zzH(long j11) {
        return (j11 >>> 1) ^ (-(1 & j11));
    }

    public static zzasq zzI(InputStream inputStream, int i11) {
        return new zzaso(inputStream, 4096, null);
    }

    public static zzasq zzJ(byte[] bArr, int i11, int i12) {
        return zzK(bArr, 0, i12, false);
    }

    static zzasq zzK(byte[] bArr, int i11, int i12, boolean z10) {
        zzasm zzasmVar = new zzasm(bArr, 0, i12, false, null);
        try {
            zzasmVar.zze(i12);
            return zzasmVar;
        } catch (zzauf e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    public abstract void zzA(int i11);

    public abstract boolean zzC() throws IOException;

    public abstract boolean zzD() throws IOException;

    public abstract boolean zzE(int i11) throws IOException;

    public final int zzG(int i11) {
        int i12 = this.zzc;
        this.zzc = Integer.MAX_VALUE;
        return i12;
    }

    public abstract double zzb() throws IOException;

    public abstract float zzc() throws IOException;

    public abstract int zzd();

    public abstract int zze(int i11) throws zzauf;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract int zzk() throws IOException;

    public abstract int zzl() throws IOException;

    public abstract int zzm() throws IOException;

    public abstract int zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzp() throws IOException;

    public abstract long zzt() throws IOException;

    public abstract long zzu() throws IOException;

    public abstract long zzv() throws IOException;

    public abstract zzask zzw() throws IOException;

    public abstract String zzx() throws IOException;

    public abstract String zzy() throws IOException;

    public abstract void zzz(int i11) throws zzauf;
}
