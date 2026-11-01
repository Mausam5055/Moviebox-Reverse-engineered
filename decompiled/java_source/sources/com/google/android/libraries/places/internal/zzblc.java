package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzblc implements Runnable {
    final /* synthetic */ zzbma zza;

    /* synthetic */ zzblc(zzbma zzbmaVar, zzblb zzblbVar) {
        this.zza = zzbmaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbma zzbmaVar = this.zza;
        if (zzbmaVar.zzG == null) {
            return;
        }
        zzbma.zzP(zzbmaVar);
    }
}
