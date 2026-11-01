package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzble implements Runnable {
    final /* synthetic */ zzbbk zza;
    final /* synthetic */ zzaze zzb;
    final /* synthetic */ zzblg zzc;

    zzble(zzblg zzblgVar, zzbbk zzbbkVar, zzaze zzazeVar) {
        this.zza = zzbbkVar;
        this.zzb = zzazeVar;
        this.zzc = zzblgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzblg zzblgVar = this.zzc;
        zzbma zzbmaVar = zzblgVar.zzb;
        if (zzblgVar != zzbmaVar.zzG) {
            return;
        }
        zzbmaVar.zzai(this.zza);
        zzaze zzazeVar = this.zzb;
        if (zzazeVar != zzaze.SHUTDOWN) {
            this.zzc.zzb.zzW.zzb(2, "Entering {0} state with picker: {1}", zzazeVar, this.zza);
            this.zzc.zzb.zzB.zza(this.zzb);
        }
    }
}
