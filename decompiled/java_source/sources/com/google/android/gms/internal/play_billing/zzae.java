package com.google.android.gms.internal.play_billing;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzae extends zzaf {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzaf zzc;

    zzae(zzaf zzafVar, int i11, int i12) {
        this.zzc = zzafVar;
        this.zza = i11;
        this.zzb = i12;
    }

    @Override // java.util.List
    public final Object get(int i11) {
        zzx.zza(i11, this.zzb, "index");
        return this.zzc.get(i11 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzaf, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i11, int i12) {
        return subList(i11, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.play_billing.zzaf
    /* JADX INFO: renamed from: zzh */
    public final zzaf subList(int i11, int i12) {
        zzx.zzd(i11, i12, this.zzb);
        int i13 = this.zza;
        return this.zzc.subList(i11 + i13, i12 + i13);
    }
}
