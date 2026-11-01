package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzik implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzic zze;

    zzik(zzic zzicVar, String str, String str2, String str3, long j11) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j11;
        this.zze = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zza;
        if (str == null) {
            this.zze.zza.zza(this.zzb, (zzlk) null);
        } else {
            this.zze.zza.zza(this.zzb, new zzlk(this.zzc, str, this.zzd));
        }
    }
}
