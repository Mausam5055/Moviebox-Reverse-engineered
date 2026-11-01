package com.google.android.libraries.places.internal;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zznw extends zznx {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zznx zzc;

    zznw(zznx zznxVar, int i11, int i12) {
        this.zzc = zznxVar;
        this.zza = i11;
        this.zzb = i12;
    }

    @Override // java.util.List
    public final Object get(int i11) {
        zzmt.zza(i11, this.zzb, "index");
        return this.zzc.get(i11 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.internal.zznx, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i11, int i12) {
        return subList(i11, i12);
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final boolean zzf() {
        return true;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.libraries.places.internal.zznx
    /* JADX INFO: renamed from: zzh */
    public final zznx subList(int i11, int i12) {
        zzmt.zzn(i11, i12, this.zzb);
        int i13 = this.zza;
        return this.zzc.subList(i11 + i13, i12 + i13);
    }
}
