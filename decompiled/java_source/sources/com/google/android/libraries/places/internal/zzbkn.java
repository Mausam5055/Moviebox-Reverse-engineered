package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbkn extends zzbbk {
    final /* synthetic */ Throwable zza;
    private final zzbbe zzb;

    zzbkn(zzbma zzbmaVar, Throwable th2) {
        this.zza = th2;
        this.zzb = zzbbe.zza(zzbdo.zzo.zzg("Panic! This is a bug!").zzf(th2));
    }

    public final String toString() {
        zzmm zzmmVarZza = zzmn.zza(zzbkn.class);
        zzmmVarZza.zzd("panicPickResult", this.zzb);
        return zzmmVarZza.toString();
    }

    @Override // com.google.android.libraries.places.internal.zzbbk
    public final zzbbe zza(zzbbf zzbbfVar) {
        return this.zzb;
    }
}
