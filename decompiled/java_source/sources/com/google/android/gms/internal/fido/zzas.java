package com.google.android.gms.internal.fido;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzas extends zzat {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzat zzc;

    zzas(zzat zzatVar, int i11, int i12) {
        this.zzc = zzatVar;
        this.zza = i11;
        this.zzb = i12;
    }

    @Override // java.util.List
    public final Object get(int i11) {
        zzam.zza(i11, this.zzb, "index");
        return this.zzc.get(i11 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.fido.zzat, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i11, int i12) {
        return subList(i11, i12);
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.fido.zzat
    /* JADX INFO: renamed from: zzf */
    public final zzat subList(int i11, int i12) {
        zzam.zze(i11, i12, this.zzb);
        zzat zzatVar = this.zzc;
        int i13 = this.zza;
        return zzatVar.subList(i11 + i13, i12 + i13);
    }
}
