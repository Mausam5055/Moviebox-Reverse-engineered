package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzmm extends zzmk<zzmj, zzmj> {
    zzmm() {
    }

    private static void zza(Object obj, zzmj zzmjVar) {
        ((zzjt) obj).zzb = zzmjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ int zza(zzmj zzmjVar) {
        return zzmjVar.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ zzmj zza() {
        return zzmj.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ zzmj zza(zzmj zzmjVar, zzmj zzmjVar2) {
        zzmj zzmjVar3 = zzmjVar;
        zzmj zzmjVar4 = zzmjVar2;
        if (zzmj.zzc().equals(zzmjVar4)) {
            return zzmjVar3;
        }
        return zzmj.zzc().equals(zzmjVar3) ? zzmj.zza(zzmjVar3, zzmjVar4) : zzmjVar3.zza(zzmjVar4);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zza(zzmj zzmjVar, int i11, int i12) {
        zzmjVar.zza((i11 << 3) | 5, Integer.valueOf(i12));
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zza(zzmj zzmjVar, int i11, long j11) {
        zzmjVar.zza((i11 << 3) | 1, Long.valueOf(j11));
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zza(zzmj zzmjVar, int i11, zzik zzikVar) {
        zzmjVar.zza((i11 << 3) | 2, zzikVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zza(zzmj zzmjVar, int i11, zzmj zzmjVar2) {
        zzmjVar.zza((i11 << 3) | 3, zzmjVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zza(zzmj zzmjVar, zznb zznbVar) throws IOException {
        zzmjVar.zza(zznbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final boolean zza(zzlr zzlrVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ int zzb(zzmj zzmjVar) {
        return zzmjVar.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zzb(zzmj zzmjVar, int i11, long j11) {
        zzmjVar.zza(i11 << 3, Long.valueOf(j11));
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zzb(zzmj zzmjVar, zznb zznbVar) throws IOException {
        zzmjVar.zzb(zznbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zzb(Object obj, zzmj zzmjVar) {
        zza(obj, zzmjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ zzmj zzc(Object obj) {
        zzmj zzmjVar = ((zzjt) obj).zzb;
        if (zzmjVar != zzmj.zzc()) {
            return zzmjVar;
        }
        zzmj zzmjVarZzd = zzmj.zzd();
        zza(obj, zzmjVarZzd);
        return zzmjVarZzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ void zzc(Object obj, zzmj zzmjVar) {
        zza(obj, zzmjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ zzmj zzd(Object obj) {
        return ((zzjt) obj).zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final /* synthetic */ zzmj zze(zzmj zzmjVar) {
        zzmj zzmjVar2 = zzmjVar;
        zzmjVar2.zze();
        return zzmjVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    final void zzf(Object obj) {
        ((zzjt) obj).zzb.zze();
    }
}
