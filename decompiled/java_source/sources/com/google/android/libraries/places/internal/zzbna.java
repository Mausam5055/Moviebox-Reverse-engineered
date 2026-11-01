package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbna implements Runnable {
    final /* synthetic */ zzbnj zza;

    zzbna(zzbnj zzbnjVar) {
        this.zza = zzbnjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzl = null;
        if (this.zza.zzi.zzf()) {
            this.zza.zzd();
        }
    }
}
