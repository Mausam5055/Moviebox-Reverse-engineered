package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbrs implements Runnable {
    final /* synthetic */ zzben zza;

    zzbrs(zzbru zzbruVar, zzben zzbenVar) {
        this.zza = zzbenVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza();
    }
}
