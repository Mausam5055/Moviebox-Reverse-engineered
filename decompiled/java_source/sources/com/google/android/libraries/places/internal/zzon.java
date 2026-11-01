package com.google.android.libraries.places.internal;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzon extends zznx {
    final /* synthetic */ zzoo zza;

    zzon(zzoo zzooVar) {
        this.zza = zzooVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i11) {
        zzmt.zza(i11, this.zza.zzc, "index");
        int i12 = i11 + i11;
        Object obj = this.zza.zzb[i12];
        Objects.requireNonNull(obj);
        Object obj2 = this.zza.zzb[i12 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }

    @Override // com.google.android.libraries.places.internal.zznt
    public final boolean zzf() {
        return true;
    }
}
