package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbjr implements Runnable {
    final /* synthetic */ zzbgf zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbkd zzc;

    zzbjr(zzbkd zzbkdVar, zzbgf zzbgfVar, boolean z10) {
        this.zza = zzbgfVar;
        this.zzb = z10;
        this.zzc = zzbkdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzs.zzc(this.zza, this.zzb);
    }
}
