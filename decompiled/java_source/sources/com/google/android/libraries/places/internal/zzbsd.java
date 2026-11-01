package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbsd implements Runnable {
    final /* synthetic */ zzbsf zza;

    zzbsd(zzbsf zzbsfVar) {
        this.zza = zzbsfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbsf zzbsfVar = this.zza;
        zzbsfVar.zzs.execute(zzbsfVar.zzx);
        synchronized (this.zza.zzo) {
            this.zza.zzH = Integer.MAX_VALUE;
            this.zza.zzad();
        }
    }
}
