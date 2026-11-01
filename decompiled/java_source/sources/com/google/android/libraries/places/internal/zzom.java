package com.google.android.libraries.places.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzom extends zznx {
    static final zznx zza = new zzom(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzom(Object[] objArr, int i11) {
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override // java.util.List
    public final Object get(int i11) {
        zzmt.zza(i11, this.zzc, "index");
        Object obj = this.zzb[i11];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.libraries.places.internal.zznx, com.google.android.libraries.places.internal.zznt
    final int zza(Object[] objArr, int i11) {
        System.arraycopy(this.zzb, 0, objArr, i11, this.zzc);
        return i11 + this.zzc;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final boolean zzf() {
        return false;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    final Object[] zzg() {
        return this.zzb;
    }
}
