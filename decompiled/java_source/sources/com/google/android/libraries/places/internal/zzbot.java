package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbot implements Runnable {
    final /* synthetic */ zzbpo zza;

    zzbot(zzbpo zzbpoVar) {
        this.zza = zzbpoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbpo zzbpoVar = this.zza;
        if (zzbpoVar.zzD) {
            return;
        }
        zzbpoVar.zzy.zzg();
    }
}
